package com.ktds.reply.service;

import java.util.List;

import com.ktds.reply.dao.ReplyDao;
import com.ktds.reply.vo.ReplyVO;

public class ReplyServiceImpl implements ReplyService {
	
	private ReplyDao replyDao;
	
	public void setReplyDao(ReplyDao replyDao) {
		this.replyDao = replyDao;
	}
	

	@Override
	public boolean createNewReply(ReplyVO replyVO) {
		return replyDao.insertNewReply(replyVO) > 0;
	}

	@Override
	public List<ReplyVO> readAllReplyByBoardId(int boardId) {
		return replyDao.selectAllReplyByBoardId(boardId);
	}


	@Override
	public boolean updateReply(ReplyVO replyVO) {
		return replyDao.updateReply(replyVO) > 0;
	}


	@Override
	public boolean deleteReply(ReplyVO replyVO) {
		return replyDao.deleteReply(replyVO) > 0;
	}

}
