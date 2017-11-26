package com.ktds.answer.dao;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.ktds.answer.vo.AnswerVO;

public class AnswerDaoImpl extends SqlSessionDaoSupport implements AnswerDao{

	@Override
	public int insertNewAnswer(AnswerVO answerVO) {
		
		return getSqlSession().insert("AnswerDao.insertNewAnswer", answerVO);
	}
	@Override
	public List<AnswerVO> selectAllAnswerByQuestionId(int questionId) {
		
		return getSqlSession().selectList("AnswerDao.selectAllAnswerByQuestionId", questionId);
	}

	@Override
	public int updateAnswer(AnswerVO answerVO) {
		
		return getSqlSession().update("AnswerDao.updateAnswer", answerVO);
	}

	@Override
	public int deleteAnswer(AnswerVO answerVO) {
		// TODO Auto-generated method stub
		return getSqlSession().update("AnswerDao.deleteAnswer", answerVO);
	}



}
