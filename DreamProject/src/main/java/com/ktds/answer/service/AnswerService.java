package com.ktds.answer.service;

import java.util.List;

import com.ktds.answer.vo.AnswerVO;


public interface AnswerService {
	
	public boolean createNewAnswer(AnswerVO answerVO);

	public List<AnswerVO> readAllAnswerByQuestionId(int questionId);
	
	public boolean updateAnswer(AnswerVO answerVO);
	
	public boolean deleteAnswer(AnswerVO answerVO);


}
