package com.smhrd.web.mapper;


import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.smhrd.web.dto.DriverInfo;
import com.smhrd.web.dto.DriverWaiting;
import com.smhrd.web.dto.LogDTO;
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
		
		 // 1) 로그 리스트 조회
		List<LogDTO> getAllLogs();
		// 2) 상세 조회
	    LogDTO getLogDetail(int logIdx);


}
