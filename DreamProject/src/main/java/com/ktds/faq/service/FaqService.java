package com.ktds.faq.service;

import java.util.List;

import com.ktds.faq.dao.FaqDao;
import com.ktds.faq.vo.FaqListVO;
import com.ktds.faq.vo.FaqVO;

public interface FaqService {
	
	public FaqListVO readAllFaq(FaqVO faqVO);
	public List<FaqVO> readFrequentFaq();
	
	public boolean deleteFaq(int faqId);
	public boolean createNewFaq(FaqVO faqVO);
	public boolean updateFaq(FaqVO faqVO);
}
