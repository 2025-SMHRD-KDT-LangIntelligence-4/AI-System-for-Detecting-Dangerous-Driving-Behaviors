package com.smhrd.web.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.smhrd.web.dto.DriverInfo;

@Mapper
public interface MainMapper {
	
		List<DriverInfo> SelectAllDrivers();
		
		int SelectDriverCount();
}
