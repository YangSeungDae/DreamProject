package com.ktds.reply.dao;

import java.util.List;

import com.ktds.reply.vo.ReplyVO;

public interface ReplyDao {

	public int insertNewReply(ReplyVO replyVO);
	
	public List<ReplyVO> selectAllReplyByBoardId(int boarId);
	
	public int updateReply(ReplyVO replyVO);
	
	public int deleteReply(ReplyVO replyVO);
}
