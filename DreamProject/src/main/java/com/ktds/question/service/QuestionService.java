package com.ktds.question.service;

import com.ktds.member.vo.MemberVO;
import com.ktds.question.vo.QuestionListVO;
import com.ktds.question.vo.QuestionVO;

public interface QuestionService {
	public boolean createNewQuestion(QuestionVO questionVO);
	
	public QuestionListVO readAllQuestion(QuestionVO questionVO);
	
	public QuestionVO readQuestionById(QuestionVO questionVO);
}
