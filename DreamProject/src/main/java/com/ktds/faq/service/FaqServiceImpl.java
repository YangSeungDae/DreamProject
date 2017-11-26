package com.ktds.faq.service;

import java.util.List;

import com.ktds.faq.dao.FaqDao;
import com.ktds.faq.vo.FaqListVO;
import com.ktds.faq.vo.FaqVO;

import io.github.seccoding.web.pager.Pager;
import io.github.seccoding.web.pager.PagerFactory;

public class FaqServiceImpl implements FaqService {

	private FaqDao faqDao;
	
	public void setFaqDao(FaqDao faqDao) {
		this.faqDao = faqDao;
	}

	@Override
	public FaqListVO readAllFaq(FaqVO faqVO) {
		FaqListVO faqListVO = new FaqListVO();
		
		Pager pager = PagerFactory.getPager(true);
		int faqCount = faqDao.selectAllFaqCount(faqVO);
		
		pager.setTotalArticleCount(faqCount);
		pager.setPageNumber(faqVO.getPageNo());
		
		faqVO.setStartNumber(pager.getStartArticleNumber());
		faqVO.setEndNumber(pager.getEndArticleNumber());
		
		faqListVO.setPager(pager);
		faqListVO.setFaqList(faqDao.selectAllFaq(faqVO));
		
		return faqListVO;
	}
	
	public List<FaqVO> readFrequentFaq() {
		return faqDao.selectFrequentFaq();
	}

	@Override
	public boolean deleteFaq(int faqId) {
		return faqDao.deleteFaq(faqId) > 0;
	}

	@Override
	public boolean createNewFaq(FaqVO faqVO) {
		return faqDao.insertNewFaq(faqVO) > 0;
	}

	@Override
	public boolean updateFaq(FaqVO faqVO) {
		return faqDao.updateFaq(faqVO) > 0;
	}
}
