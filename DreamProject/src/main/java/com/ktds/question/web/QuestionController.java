package com.ktds.question.web;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.ktds.attachment.service.AttachmentService;
import com.ktds.attachment.vo.AttachmentVO;
import com.ktds.category.service.CategoryService;
import com.ktds.member.vo.MemberVO;
import com.ktds.question.service.QuestionService;
import com.ktds.question.vo.QuestionListVO;
import com.ktds.question.vo.QuestionVO;

import io.github.seccoding.web.pager.PageExplorer;
import io.github.seccoding.web.pager.explorer.ClassicPageExplorer;

@Controller
public class QuestionController {
	QuestionService questionService;
	CategoryService categoryService;
	AttachmentService attachmentService;

	public void setAttachmentService(AttachmentService attachmentService) {
		this.attachmentService = attachmentService;
	}

	public void setCategoryService(CategoryService categoryService) {
		this.categoryService = categoryService;
	}

	public void setQuestionService(QuestionService questionService) {
		this.questionService = questionService;
	}
	
	@RequestMapping("/question/write")
	public ModelAndView writeNewQuestion(HttpSession session) {
		ModelAndView view = new ModelAndView();
		if(session.getAttribute("_USER_") == null) {
			view.setViewName("redirect:/member/login");
			return view;
		}
		view.setViewName("QNA/qnaMain");
		view.addObject("categoryVOList", categoryService.readAllCategory());
		return view;
	}
	
	@RequestMapping("/question/doWrite")
	public String doWriteNewQuestion(QuestionVO questionVO, MultipartHttpServletRequest mpRequest, HttpSession session) {
		if(session.getAttribute("_USER_") == null) {
			return "redirect:/member/login";
		}
		
		MultipartFile file = mpRequest.getFile("attachment");
		int[] attachResult = {0,0};
		if(!file.isEmpty()) {
			File destFile = new File("D:/uploadFiles" + File.separator, file.getOriginalFilename());
			try {
				file.transferTo(destFile);
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			//attachmentVO.setAttachmentName(file.getOriginalFilename());
			AttachmentVO attachmentVO = new AttachmentVO();
			attachmentVO.setAttachmentName(file.getOriginalFilename());
		
			attachResult = attachmentService.createFile(attachmentVO);
		}
		if (attachResult[0] > 0 && attachResult.length > 1) {
			int attachmentId = attachResult[1];
			questionVO.setAttachmentId(attachmentId);
		}
		questionVO.setMemberId(((MemberVO)session.getAttribute("_USER_")).getMemberId());
		questionService.createNewQuestion(questionVO);
		return "redirect:/faq/faq";
	}
	
	@RequestMapping("/myPage/mypage")
	public ModelAndView mypage(QuestionVO questionVO, HttpSession session) {
		MemberVO memberVO = (MemberVO)session.getAttribute("_USER_");
		questionVO.setMemberId(memberVO.getMemberId());
		//questionVO.setMemberVO(memberVO);
		QuestionListVO questionListVO = questionService.readAllQuestion(questionVO);
		PageExplorer pagenation = new ClassicPageExplorer(questionListVO.getPager());
		
		String pager = pagenation.getPagingList("pageNo", "@", "<", ">", "questionForm");
		
		ModelAndView view = new ModelAndView();
		view.setViewName("myPage/mypage");
		view.addObject("questionList" , questionListVO.getQuestionList());
		view.addObject("pager" , pager);
	
		return view;
	}

	@RequestMapping("/question/read/{questionId}")
	@ResponseBody
	public QuestionVO getQuestionInfo(@PathVariable int questionId, HttpSession session) {
		MemberVO memberVO = (MemberVO)session.getAttribute("_USER_");
		QuestionVO questionVO = new QuestionVO();
		questionVO.setMemberId(memberVO.getMemberId());
		questionVO.setQuestionId(questionId);
		return questionService.readQuestionById(questionVO);
	}
}
