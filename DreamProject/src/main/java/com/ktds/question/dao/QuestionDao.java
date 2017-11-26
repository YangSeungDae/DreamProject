package com.ktds.question.dao;

import java.util.List;

import com.ktds.member.vo.MemberVO;
import com.ktds.question.vo.QuestionVO;

public interface QuestionDao {
	public int insertNewQuestion(QuestionVO questionVO);
	
	public List<QuestionVO> selectAllQuestion(QuestionVO questionVO);
	public int selectAllQuestionCount(QuestionVO questionVO);
	public QuestionVO selectQuestionById(QuestionVO questionVO);
}
