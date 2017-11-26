package com.ktds.reply.service;

import java.util.List;

import com.ktds.reply.vo.ReplyVO;

public interface ReplyService {

	public boolean createNewReply(ReplyVO replyVO);

	public List<ReplyVO> readAllReplyByBoardId(int boardId);
	
	public boolean updateReply(ReplyVO replyVO);
	
	public boolean deleteReply(ReplyVO replyVO);

}
