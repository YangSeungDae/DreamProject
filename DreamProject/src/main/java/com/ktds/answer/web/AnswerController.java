package com.ktds.answer.web;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ktds.answer.service.AnswerService;
import com.ktds.answer.vo.AnswerVO;
import com.ktds.member.vo.MemberVO;

@Controller
public class AnswerController {
	
	private AnswerService answerService;
	
	public void setAnswerService(AnswerService answerService) {
		this.answerService = answerService;
	}

	
	@RequestMapping("/ans/write")
	public String answerPage(AnswerVO answerVO, HttpSession session){
		MemberVO memberVO =(MemberVO) session.getAttribute("_USER_");
		if(memberVO.getAuthLev() == 5) {
			answerVO.setMemberId(memberVO.getMemberId());
			answerService.createNewAnswer(answerVO);
		}
		return "redirect:/myPage/mypage";
	}
	
	@RequestMapping("/ans/delete/{answerId}")
	public String doDelete(@PathVariable int answerId, HttpSession session) {
		
		AnswerVO answerVO = new AnswerVO();
		answerVO.setAnswerId(answerId);
		
		MemberVO memberVO =(MemberVO) session.getAttribute("_USER_");
		if(memberVO.getAuthLev() == 5) {
			boolean isSuccess = answerService.deleteAnswer(answerVO);
		}
	return "redirect:/myPage/mypage";
	}
	
	@RequestMapping("/ans/read/{questionId}")
	@ResponseBody
	public List<AnswerVO> readAllAnswerByQuestionId(@PathVariable int questionId, HttpSession session) {
		//MemberVO memberVO =(MemberVO) session.getAttribute("_USER_");
		
		return answerService.readAllAnswerByQuestionId(questionId);
	}
}
