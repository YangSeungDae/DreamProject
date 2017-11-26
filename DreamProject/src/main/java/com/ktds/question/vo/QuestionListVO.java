package com.ktds.question.vo;

import java.util.List;

import io.github.seccoding.web.pager.Pager;

public class QuestionListVO {

	private List<QuestionVO> questionList;
	private Pager pager;
	
	
	public List<QuestionVO> getQuestionList() {
		return questionList;
	}
	public void setQuestionList(List<QuestionVO> questionList) {
		this.questionList = questionList;
	}
	public Pager getPager() {
		return pager;
	}
	public void setPager(Pager pager) {
		this.pager = pager;
	}
	
	
}
