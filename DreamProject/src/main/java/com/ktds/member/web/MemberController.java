package com.ktds.member.web;

import java.io.UnsupportedEncodingException;

import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ktds.common.MailHandler;
import com.ktds.common.TempKey;
import com.ktds.member.service.MemberService;
import com.ktds.member.vo.MemberVO;

@Controller
public class MemberController {
	
	private MemberService memberService;
	private JavaMailSender mailSender;
	
	public void setMemberService(MemberService memberService) {
		this.memberService =  memberService;
	}

	public void setMailSender(JavaMailSender mailSender) {
		this.mailSender = mailSender;
	}

	@RequestMapping("/")
	public String viewIndexPage() {
		
		return "index";
	}
	
	
	@RequestMapping("/member/signUp")
	public ModelAndView viewSignUpPage(MemberVO memberVO) {
		ModelAndView view = new ModelAndView();
		view.setViewName("member/signUp");
		view.addObject("memberVO", memberVO);
		return view;
	}
	
	@RequestMapping("/member/doSignUp")
	public String doSignUp(MemberVO memberVO, HttpSession session) {
		/*memberService.createMember(memberVO);
		MemberVO loginMemberVO = memberService.readOneMemberByIdAndPassword(memberVO);
		
		if( loginMemberVO != null) {
			session.setAttribute("_USER_", loginMemberVO);
			return "redirect:/member/emailComfirm";
		}*/
		
		MemberVO dupMemberVO = memberService.readOneMemberByIdAndPassword(memberVO);
		if( dupMemberVO != null && dupMemberVO.getMemberId().length() > 0) {
			//id already exists
			return "redirect:/member/signUp?errCode=2";
		}
		
		String key = new TempKey().getKey(15, true);
		try {
			MailHandler mailHandler = new MailHandler(mailSender);
			mailHandler.setSubject("[이메일 인증]");
			mailHandler.setText(new StringBuffer().append("<h1>메일인증</h1>")
	                .append("<a href='http://192.168.201.15:8080/DreamProject/member/emailConfirm?key=")
	                .append(key)
	                .append("' target='_blenk'>이메일 인증 확인</a>")
	                .toString());
			mailHandler.setFrom("dreamoverflows@gmail.com", "잡넘자동차");
			mailHandler.setTo(memberVO.getMemberId());
			mailHandler.send();
			session.setAttribute("_USER_NEED_CONFIRM_", memberVO);
			session.setAttribute("_CONFIRM_KEY_", key);

			return "redirect:/member/emailCitation?email=" + memberVO.getMemberId();
		} catch (MessagingException mex) {

		
		} catch (UnsupportedEncodingException uex) {

		}
		return "redirect:/";
	}
	
	@RequestMapping("/member/emailCitation")
	public String viewEmailCitation() {
		return "member/emailCitation";
	}
	
	@RequestMapping("/member/login")
	public String viewLoginPage() {
		return "member/login";
	}
	
	@RequestMapping("/member/doLogin")
	public String doLogin(MemberVO memberVO, HttpSession session) {
		
		MemberVO loginMemberVO = memberService.readOneMemberByIdAndPassword(memberVO);
		
		if( loginMemberVO != null) {
			session.setAttribute("_USER_", loginMemberVO);
			return "redirect:/";
		}
		return "redirect:/member/login?errCode=1";
	}
	
	@RequestMapping("/member/logout")
	public String doLogout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
	@RequestMapping("/member/agreement")
	public String viewAgreement() {
	
		return "member/agreement";
	}
	
	@RequestMapping("/member/emailConfirm")
	public String emailConfirm(HttpSession session, HttpServletRequest request) {
		MemberVO memberVO = (MemberVO)session.getAttribute("_USER_NEED_CONFIRM_");
		String key = (String)session.getAttribute("_CONFIRM_KEY_");
		
		if(request.getParameter("key").toString().equals(key)) {
			memberService.createMember(memberVO);
			MemberVO loginMemberVO = memberService.readOneMemberByIdAndPassword(memberVO);
			
			if( loginMemberVO != null) {
				session.setAttribute("_USER_", loginMemberVO);
			}
			return "redirect:/member/emailConfirmComplete";
		} else {
			
		}
		return "redirect:/";
	}
	
	@RequestMapping("/member/emailConfirmComplete")
	public String viewEmailConfirmPage() {
		return "member/emailComfirm";
	}
	
	@RequestMapping("/member/saveAddress")
	public String doSaveAddress(HttpServletRequest request, HttpSession session) {
		MemberVO memberVO = new MemberVO();
		memberVO.setAddress(request.getParameter("address"));
		memberVO.setMemberId(((MemberVO)session.getAttribute("_USER_")).getMemberId());
		
		memberService.updateAddressById(memberVO);
		return "redirect:/";
	}

	@RequestMapping("/juso")
	public String viewJusoPage() {
		return "common/juso";
	}
}
