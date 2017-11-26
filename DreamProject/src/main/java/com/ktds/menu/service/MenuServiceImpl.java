package com.ktds.menu.service;

import com.ktds.menu.dao.MenuDao;
import com.ktds.menu.vo.MenuVO;

public class MenuServiceImpl implements MenuService {
	
	private MenuDao menuDao;
	
	public void setMenuDao(MenuDao menuDao) {
		this.menuDao = menuDao;
	}

	@Override
	public MenuVO readMenuById(int menuId) {
		return menuDao.selectMenuById(menuId);
	}

	@Override
	public boolean createNewMenu(MenuVO menuVO) {
		return menuDao.insertNewMenu(menuVO) > 0;
	}

	@Override
	public boolean updateMenuById(MenuVO menuVO) {
		return menuDao.updateMenuById(menuVO) > 0;
	}

}
