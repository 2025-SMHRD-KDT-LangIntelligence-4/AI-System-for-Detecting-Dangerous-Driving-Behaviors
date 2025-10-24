package com.smhrd.web.service;


import java.time.format.DateTimeFormatter;
import java.util.List;

import org.springframework.stereotype.Service;

import com.smhrd.web.dto.DriverDetail;
import com.smhrd.web.dto.DriverInfo;
import com.smhrd.web.dto.SelectLog;
import com.smhrd.web.dto.SelectVideo;
import com.smhrd.web.mapper.MainMapper2;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor

public class MainService2 {
	
    private final MainMapper2 mapper;
    
    public void formatDriverInfo(DriverInfo driver) {
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy년MM월dd일");

        if (driver.getCreatedAt() != null) {
            driver.setFmtCreatedAt(driver.getCreatedAt().toLocalDate().format(formatter));
        }
        if (driver.getDriverBirthdate() != null) {
            driver.setFmtDriverBirthdate(driver.getDriverBirthdate().format(formatter));
        }
        driver.setDriverCode(String.format("S%03d", driver.getDriverIdx()));
    }
    
    public int selectTotalLogCount(int driverIdx) {
    	return mapper.selectTotalLogCount(driverIdx);
    }
    
    public List<SelectVideo> selectLogListByDriverIdx(int driverIdx) {
    	List<SelectVideo> list = mapper.selectLogListByDriverIdx(driverIdx);
        for (SelectVideo v : list) {
        	// 이벤트타입 영어 -> 한글 변환
        	switch (v.getEventType()) {
        	case "ASSAULT" -> v.setEventType("운전자 폭행");
        	case "DROWSY"  -> v.setEventType("졸음 운전");
        	case "PHONE"   -> v.setEventType("휴대폰 조작");
        	case "HAND"    -> v.setEventType("운전대 미제어");
        	}
        	// 동그라미 아이콘 색상 변경, 이벤트타입 글씨색 변경
            switch (v.getEventLevel()) {
                case "1" -> {v.setEventColor("circle-blue");}
                case "2" -> {v.setEventColor("circle-yellow");}
                case "3" -> {v.setEventColor("circle-red");}
            }
        }
    	return list;
    }

    // 유선 : 운전자 위험 운전 이력
    public List<DriverDetail> driverLogList() {
        return mapper.driverLogList();
    }

}
