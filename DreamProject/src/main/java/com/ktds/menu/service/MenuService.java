package com.ktds.menu.service;

import com.ktds.menu.vo.MenuVO;

public interface MenuService {
	public MenuVO readMenuById(int menuId);
	public boolean createNewMenu(MenuVO menuVO);
	public boolean updateMenuById(MenuVO menuVO);
}
