package com.smhrd.web.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.smhrd.web.dto.DriverDetail;
import com.smhrd.web.dto.SelectEvent;
import com.smhrd.web.dto.SelectLog;


@Mapper
public interface Mapper유선 {
	// 유선 : 운전자 상세 페이지
	DriverDetail driverDetailLog(int logIdx);
	
	// 유선 : 운전자 위험 운전 이력
	List<DriverDetail> driverDetailLogList();

}
