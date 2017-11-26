package com.ktds.car.service;

import com.ktds.car.dao.CarDao;
import com.ktds.car.vo.CarVO;

public class CarServiceImpl implements CarService {
	
	private CarDao carDao;
	
	public void setCarDao(CarDao carDao) {
		this.carDao = carDao;
	}

	@Override
	public CarVO readCarById(int carId) {
		return carDao.selectCarById(carId);
	}

	@Override
	public boolean insertNewCar(CarVO carVO) {
		return carDao.insertNewCar(carVO) > 0;
	}

	@Override
	public int updateCarById(CarVO carVO) {
		return carDao.updateCarById(carVO);
	}

}
