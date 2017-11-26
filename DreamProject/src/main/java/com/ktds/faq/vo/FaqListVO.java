package com.ktds.faq.vo;

import java.util.List;

import io.github.seccoding.web.pager.Pager;

public class FaqListVO {
	private List<FaqVO> faqList;
	private Pager pager;
	public List<FaqVO> getFaqList() {
		return faqList;
	}
	public void setFaqList(List<FaqVO> faqList) {
		this.faqList = faqList;
	}
	public Pager getPager() {
		return pager;
	}
	public void setPager(Pager pager) {
		this.pager = pager;
	}
}
