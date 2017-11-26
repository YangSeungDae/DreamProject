package com.ktds.reply.web;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ktds.member.vo.MemberVO;
import com.ktds.reply.service.ReplyService;
import com.ktds.reply.vo.ReplyVO;

@Controller
public class ReplyController {
	
	private ReplyService replyService;
	
	public void setReplyService(ReplyService replyService) {
		this.replyService = replyService;
	}
	/*
	@RequestMapping("/reply/write")
	@ResponseBody
	public ReplyVO doReplyWrite(ReplyVO replyVO, HttpSession session) {
		
		MemberVO memberVO = (MemberVO) session.getAttribute("_USER_");
		String id = memberVO.getId();
		replyVO.setId(id);
		
		boolean isSuccess = replyService.createNewReply(replyVO);
		
		//ReplyVO newReplyVO = new ReplyVO();
		ReplyVO newReplyVO = replyVO;
		return newReplyVO;
		
	}
	
	@RequestMapping("/reply/list/{boardId}")
	@ResponseBody
	public List<ReplyVO> getReplyList(@PathVariable int boardId){
		return replyService.readAllReplyByBoardId(boardId);
	}
	
	@RequestMapping("/reply/update")
	@ResponseBody
	public ReplyVO doUpdateReply(ReplyVO replyVO, HttpSession session) {
		
		MemberVO memberVO = (MemberVO) session.getAttribute("_USER_");
		String id = memberVO.getId();
		replyVO.setId(id);
		
		boolean isSuccess = replyService.updateReply(replyVO);
		
		return replyVO;
	}
	
	@RequestMapping("/reply/delete/{replyId}")
	@ResponseBody
	public ReplyVO doUpdateReply(@PathVariable int replyId, HttpSession session) {
		
		ReplyVO replyVO = new ReplyVO();
		replyVO.setReplyId(replyId);
		
		MemberVO memberVO = (MemberVO) session.getAttribute("_USER_");
		String id = memberVO.getId();
		replyVO.setId(id);
		
		boolean isSuccess = replyService.deleteReply(replyVO);
		
		return replyVO;
	}*/
}
