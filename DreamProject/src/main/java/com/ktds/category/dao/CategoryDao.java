package com.ktds.category.dao;

import java.util.List;

import com.ktds.category.vo.CategoryVO;

public interface CategoryDao {
	
	public List<CategoryVO> selectAllCategory();
}
