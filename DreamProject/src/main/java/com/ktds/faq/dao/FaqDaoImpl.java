package com.ktds.faq.dao;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.ktds.faq.vo.FaqVO;

public class FaqDaoImpl extends SqlSessionDaoSupport implements FaqDao {
	
	@Override
	public List<FaqVO> selectAllFaq(FaqVO faqVO) {
		return getSqlSession().selectList("FaqDao.selectAllFaq", faqVO);
	}

	@Override
	public int selectAllFaqCount(FaqVO faqVO) {
		return getSqlSession().selectOne("FaqDao.selectAllFaqCount", faqVO);
	}

	@Override
	public List<FaqVO> selectFrequentFaq() {
		return getSqlSession().selectList("FaqDao.selectFrequentFaq");
	}

	@Override
	public int deleteFaq(int faqId) {
		return getSqlSession().delete("FaqDao.deleteFaq", faqId);
	}

	@Override
	public int insertNewFaq(FaqVO faqVO) {
		return getSqlSession().insert("FaqDao.insertNewFaq", faqVO);
	}

	@Override
	public int updateFaq(FaqVO faqVO) {
		return getSqlSession().update("FaqDao.updateFaq", faqVO);
	}

}
