package com.ktds.menu.vo;

public class MenuVO {
	private int menuId;
	private String menuName; 
	private String menuTypeFlag;      
	private String html;
	public int getMenuId() {
		return menuId;
	}
	public void setMenuId(int menuId) {
		this.menuId = menuId;
	}
	public String getMenuName() {
		return menuName;
	}
	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}
	public String getMenuTypeFlag() {
		return menuTypeFlag;
	}
	public void setMenuTypeFlag(String menuTypeFlag) {
		this.menuTypeFlag = menuTypeFlag;
	}
	public String getHtml() {
		return html;
	}
	public void setHtml(String html) {
		this.html = html;
	}
}
