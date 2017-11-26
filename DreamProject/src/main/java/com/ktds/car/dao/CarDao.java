package com.ktds.car.dao;

import com.ktds.car.vo.CarVO;

public interface CarDao {
	
	public CarVO selectCarById(int carId);
	public int insertNewCar(CarVO carVO);
	public int updateCarById(CarVO carVO);
}
