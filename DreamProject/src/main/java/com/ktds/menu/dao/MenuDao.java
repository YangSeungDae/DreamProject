package com.ktds.menu.dao;

import com.ktds.menu.vo.MenuVO;

public interface MenuDao {
	public MenuVO selectMenuById(int menuId);
	public int insertNewMenu(MenuVO menuVO);
	public int updateMenuById(MenuVO menuVO);
}
