package com.smhrd.web.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.smhrd.web.dto.DriverInfo;
import com.smhrd.web.dto.DriverWaiting;
import com.smhrd.web.dto.MakeGraph;
import com.smhrd.web.dto.MakeGraph2_4;
import com.smhrd.web.dto.SelectEvent;
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
		
		List<DriverInfo> selectDriverByAdminIdx(int adminIdx);

		List<DriverInfo> selectSearchList(String q);
		
	    List<MakeGraph2_4> selectMonthlyByEventType(int months);

		List<DriverWaiting> SelectWaitingDrivers();

		int SelectWaitingDriverCount();
		
		SelectEvent selectEventchart();
		
		List<SelectLog> selectBlackbox();
}
