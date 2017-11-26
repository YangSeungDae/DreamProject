package com.ktds.category.vo;

public class CategoryVO {
	private int categoryId;
	private String categoryName;
	private String categoryParentName;
	
	public int getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	public String getCategoryParentName() {
		return categoryParentName;
	}
	public void setCategoryParentName(String categoryParentName) {
		this.categoryParentName = categoryParentName;
	}
}
