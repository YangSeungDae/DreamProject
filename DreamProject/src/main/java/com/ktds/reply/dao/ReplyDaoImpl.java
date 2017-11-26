package com.ktds.reply.dao;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.ktds.reply.vo.ReplyVO;

public class ReplyDaoImpl extends SqlSessionDaoSupport implements ReplyDao{

	@Override
	public int insertNewReply(ReplyVO replyVO) {
		return getSqlSession().insert("ReplyDao.insertNewReply", replyVO);
	}

	@Override
	public List<ReplyVO> selectAllReplyByBoardId(int boarId) {
		return getSqlSession().selectList("ReplyDao.selectAllReplyByBoardId", boarId);
	}

	@Override
	public int updateReply(ReplyVO replyVO) {
		return getSqlSession().update("ReplyDao.updateReply", replyVO);
	}

	@Override
	public int deleteReply(ReplyVO replyVO) {
		return getSqlSession().update("ReplyDao.deleteReply", replyVO);
	}

}
