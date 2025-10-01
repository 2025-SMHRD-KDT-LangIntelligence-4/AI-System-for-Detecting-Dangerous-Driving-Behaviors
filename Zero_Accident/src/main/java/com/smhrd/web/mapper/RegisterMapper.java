package com.smhrd.web.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.smhrd.web.entity.Driver;

@Mapper
public interface RegisterMapper {
	
	int countByDriverId(String driverId);
	
	void registerDriver(Driver driver);
}