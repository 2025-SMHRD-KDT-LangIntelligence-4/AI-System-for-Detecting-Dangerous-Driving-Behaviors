package com.smhrd.web.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.smhrd.web.dto.DriverInfo;
import com.smhrd.web.dto.MakeGraph;
import com.smhrd.web.dto.SelectLog;
import com.smhrd.web.dto.SelectVideo;

@Mapper
public interface MainMapper {
	
		List<DriverInfo> SelectAllDrivers();
		
		int SelectDriverCount();

		int countDriverIdx();

		List<SelectLog> selectLogList();
		
		List<SelectVideo> selectVideoList();

		List<MakeGraph> selectEventTypeCount();

		List<MakeGraph> selectEventTypeCountYear();

		List<MakeGraph> selectEventTypeCountMonth();

		List<MakeGraph> selectEventTypeCountWeek();
}
