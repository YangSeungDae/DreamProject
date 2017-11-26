package com.ktds.car.vo;

import java.io.BufferedReader;
import java.io.IOException;
import java.sql.Clob;
import java.sql.SQLException;

public class CarVO {
	private int carId;
	private String carName; 
	private String carTypeFlag;      
	private String html;
	
	public int getCarId() {
		return carId;
	}
	public void setCarId(int carId) {
		this.carId = carId;
	}
	public String getCarName() {
		return carName;
	}
	public void setCarName(String carName) {
		this.carName = carName;
	}
	public String getCarTypeFlag() {
		return carTypeFlag;
	}
	public void setCarTypeFlag(String carTypeFlag) {
		this.carTypeFlag = carTypeFlag;
	}
	public String getHtml() {
		return html;
	}
	public void setHtml(String html) {
		this.html = html;
	}
}
