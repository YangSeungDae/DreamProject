package com.ktds.car.service;

import com.ktds.car.vo.CarVO;

public interface CarService {
	
	public CarVO readCarById(int carId);
	public boolean insertNewCar(CarVO carVO);
	public int updateCarById(CarVO carVO);
}
