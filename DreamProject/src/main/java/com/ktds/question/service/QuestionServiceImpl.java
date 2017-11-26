package com.ktds.question.service;

import javax.servlet.http.HttpServletRequest;

import com.ktds.member.vo.MemberVO;
import com.ktds.question.dao.QuestionDao;
import com.ktds.question.vo.QuestionListVO;
import com.ktds.question.vo.QuestionVO;

import io.github.seccoding.web.pager.Pager;
import io.github.seccoding.web.pager.PagerFactory;

public class QuestionServiceImpl implements QuestionService {

	QuestionDao questionDao;
	
	public void setQuestionDao(QuestionDao questionDao) {
		this.questionDao = questionDao;
	}

	@Override
	public boolean createNewQuestion(QuestionVO questionVO) {
		return questionDao.insertNewQuestion(questionVO) > 0;
	}

	@Override
	public QuestionListVO readAllQuestion(QuestionVO questionVO) {
		QuestionListVO questionListVO = new QuestionListVO();
		Pager pager = PagerFactory.getPager(true);
		int questionCount = questionDao.selectAllQuestionCount(questionVO);

		pager.setPageNumber(questionVO.getPageNo());
		pager.setTotalArticleCount(questionCount);
		
		questionVO.setStartNumber(pager.getStartArticleNumber());
		questionVO.setEndNumber(pager.getEndArticleNumber());
		
		questionListVO.setPager(pager);
		questionListVO.setQuestionList(questionDao.selectAllQuestion(questionVO));
		
		return questionListVO;
	}

	@Override
	public QuestionVO readQuestionById(QuestionVO questionVO) {
		return questionDao.selectQuestionById(questionVO);
	}

}
