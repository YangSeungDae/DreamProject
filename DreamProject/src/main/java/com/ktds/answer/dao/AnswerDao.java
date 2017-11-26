package com.ktds.answer.dao;

import java.util.List;

import com.ktds.answer.vo.AnswerVO;

public interface AnswerDao {
	
	public int insertNewAnswer(AnswerVO answerVO);

	public List<AnswerVO> selectAllAnswerByQuestionId(int questionId);
	
	public int updateAnswer(AnswerVO answerVO);
	
	public int deleteAnswer(AnswerVO answerVO);
	
}
