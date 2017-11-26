package com.ktds.faq.web;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ktds.faq.service.FaqService;
import com.ktds.faq.vo.FaqListVO;
import com.ktds.faq.vo.FaqVO;
import com.ktds.member.vo.MemberVO;

import io.github.seccoding.web.pager.PageExplorer;
import io.github.seccoding.web.pager.explorer.ClassicPageExplorer;

@Controller
public class FaqController {
	
	private FaqService faqService;

	public void setFaqService(FaqService faqService) {
		this.faqService = faqService;
	}
	
	@RequestMapping("/faq/faq")
	public ModelAndView viewFaqPage(FaqVO faqVO) {
		FaqListVO faqListVO = faqService.readAllFaq(faqVO);
		PageExplorer pagenation = new ClassicPageExplorer(faqListVO.getPager());
		
		String pager = pagenation.getPagingList("pageNo", "@", "이전", "다음", "faqForm");
		
		ModelAndView view = new ModelAndView();
		view.setViewName("QNA/faqMain");
		view.addObject("faqList", faqListVO.getFaqList());
		view.addObject("pager", pager);
		view.addObject("faqSearchVO", faqVO);
		view.addObject("frequentFaqList", faqService.readFrequentFaq());
		return view;
	}
	
	@RequestMapping("/faq/delete/{faqId}")
	public String doDelete(@PathVariable int faqId, HttpSession session) {
		
		MemberVO memberVO = (MemberVO) session.getAttribute("_USER_");
		int authLev = memberVO.getAuthLev();
		if(authLev == 5) {
			boolean isSuccess = faqService.deleteFaq(faqId);
		}
		return "redirect:/faq/faq";
	}
	
	@RequestMapping("/faq/write")
	public String doWrite(FaqVO faqVO) {
		boolean isSession = faqService.createNewFaq(faqVO);
		
		return "redirect:/faq/faq";
	}
	
	@RequestMapping("/faq/update")
	public String doUpdate(FaqVO faqVO) {
		boolean isSession = faqService.updateFaq(faqVO);
		
		return "redirect:/faq/faq"; 
	}
	
	
	/*
	@RequestMapping("/faq/update")
	public String update() {
		return "/QNA/faqWrite";
	}*/
	/*@RequestMapping("/faq/update/{faqId}")
	public ModelAndView */
}
