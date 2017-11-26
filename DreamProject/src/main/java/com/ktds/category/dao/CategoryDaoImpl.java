package com.ktds.category.dao;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.ktds.category.vo.CategoryVO;

public class CategoryDaoImpl extends SqlSessionDaoSupport implements CategoryDao {

	@Override
	public List<CategoryVO> selectAllCategory() {
		return getSqlSession().selectList("CategoryDao.selectAllCategory");
	}

}
