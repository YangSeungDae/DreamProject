package com.ktds.answer.service;

import java.util.List;

import com.ktds.answer.dao.AnswerDao;
import com.ktds.answer.vo.AnswerVO;

public class AnswerServiceImpl implements AnswerService {

	private AnswerDao answerDao;	
	public void setAnswerDao(AnswerDao answerDao) {
		this.answerDao = answerDao;
	}
	
	@Override
	public boolean createNewAnswer(AnswerVO answerVO) {
	
		return answerDao.insertNewAnswer(answerVO) > 0;
	}

	@Override
	public List<AnswerVO> readAllAnswerByQuestionId(int questionId) {
	
		return answerDao.selectAllAnswerByQuestionId(questionId);
	}

	@Override
	public boolean updateAnswer(AnswerVO answerVO) {
		
		return answerDao.updateAnswer(answerVO) > 0;
	}

	@Override
	public boolean deleteAnswer(AnswerVO answerVO) {
		
		return answerDao.deleteAnswer(answerVO) > 0;
	}

}
