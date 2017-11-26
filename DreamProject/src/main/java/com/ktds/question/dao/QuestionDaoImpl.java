package com.ktds.question.dao;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.ktds.member.vo.MemberVO;
import com.ktds.question.vo.QuestionVO;

public class QuestionDaoImpl extends SqlSessionDaoSupport implements QuestionDao {
	
	@Override
	public int insertNewQuestion(QuestionVO questionVO) {
		return getSqlSession().insert("QuestionDao.insertNewQuestion", questionVO);
	}

	@Override
	public List<QuestionVO> selectAllQuestion(QuestionVO questionVO) {
		return getSqlSession().selectList("QuestionDao.selectAllQuestion" , questionVO);
	}

	@Override
	public int selectAllQuestionCount(QuestionVO questionVO){
		return getSqlSession().selectOne("QuestionDao.selectAllQuestionCount" , questionVO);
	}

	@Override
	public QuestionVO selectQuestionById(QuestionVO questionVO) {
		return getSqlSession().selectOne("QuestionDao.selectQuestionById", questionVO);
	}

}
