package com.ktds.faq.dao;

import java.util.List;

import com.ktds.faq.vo.FaqVO;

public interface FaqDao {
	
	public List<FaqVO> selectAllFaq(FaqVO faqVO);
	public int selectAllFaqCount(FaqVO faqVO);
	public List<FaqVO> selectFrequentFaq();
	public int deleteFaq(int faqId);
	
	public int insertNewFaq(FaqVO faqVO);
	public int updateFaq(FaqVO faqVO);
}
