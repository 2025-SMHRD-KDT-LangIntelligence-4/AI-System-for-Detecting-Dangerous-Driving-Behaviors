package com.smhrd.web.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.smhrd.web.dto.DriverInfo;
import com.smhrd.web.dto.SelectLog;

@Mapper
public interface MainMapper {
	
		List<DriverInfo> SelectAllDrivers();
		
		int SelectDriverCount();

		int countDriverIdx();

		List<SelectLog> selectLogList();
}
