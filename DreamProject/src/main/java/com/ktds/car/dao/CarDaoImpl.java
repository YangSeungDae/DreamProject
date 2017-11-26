package com.ktds.car.dao;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.ktds.car.vo.CarVO;

public class CarDaoImpl extends SqlSessionDaoSupport implements CarDao {

	@Override
	public CarVO selectCarById(int carId) {
		return getSqlSession().selectOne("CarDao.selectCarById", carId);
	}

	@Override
	public int insertNewCar(CarVO carVO) {
		return getSqlSession().insert("CarDao.insertNewCar", carVO);
	}

	@Override
	public int updateCarById(CarVO carVO) {
		return getSqlSession().update("CarDao.updateCarById", carVO);
	}

}
