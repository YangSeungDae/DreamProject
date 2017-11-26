package com.ktds.menu.dao;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.ktds.menu.vo.MenuVO;

public class MenuDaoImpl extends SqlSessionDaoSupport implements MenuDao {

	@Override
	public MenuVO selectMenuById(int menuId) {
		return getSqlSession().selectOne("MenuDao.selectMenuById", menuId);
	}

	@Override
	public int insertNewMenu(MenuVO menuVO) {
		return getSqlSession().insert("MenuDao.insertNewMenu", menuVO);
	}

	@Override
	public int updateMenuById(MenuVO menuVO) {
		return getSqlSession().update("MenuDao.updateMenuById", menuVO);
	}

}
