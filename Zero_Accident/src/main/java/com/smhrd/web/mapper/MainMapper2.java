package com.smhrd.web.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.smhrd.web.dto.DriverDetail;
import com.smhrd.web.dto.DriverInfo;
import com.smhrd.web.dto.SelectLog;
import com.smhrd.web.dto.SelectVideo;


@Mapper
public interface MainMapper2 {
	
    // 우빈 : 운전자 로그 기록 조회 총 개수만(1,2페이지)
    int selectTotalLogCount(int driverIdx);
    
    // 우빈 : 운전자 로그 기록 조회(1페이지)
	List<SelectVideo> selectLogListByDriverIdx(int driverIdx);
	
	// 유선 : 운전자 위험 운전 이력(2페이지)
	List<DriverDetail> driverLogList(int driverIdx);
	
	// 우빈 : 운전자별 상세 로그 조회(2_1페이지)
	List<SelectVideo> selectLogDetailByLogIdx(int logIdx);
}
