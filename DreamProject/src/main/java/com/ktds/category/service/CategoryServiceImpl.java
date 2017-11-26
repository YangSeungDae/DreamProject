package com.ktds.category.service;

import java.util.List;

import com.ktds.category.dao.CategoryDao;
import com.ktds.category.vo.CategoryVO;

public class CategoryServiceImpl implements CategoryService {
	
	private CategoryDao categoryDao;
	
	public void setCategoryDao(CategoryDao categoryDao) {
		this.categoryDao = categoryDao;
	}

	@Override
	public List<CategoryVO> readAllCategory() {
		return categoryDao.selectAllCategory();
	}

}
