package com.smhrd.web.dto;

import java.time.LocalDate;
import java.time.LocalDateTime;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

	public class SelectLog {
	private String eventType; //졸음
	private String eventLevel; //1
	private LocalDateTime createdAt; //2시15분
	private String carNumber; //24사1234
	private String eventColor; // 위험 등급 (빨강, 주황)
	private String eventTypeKo; // 이벤트 타입 한글로(휴대폰 조작, 폭행 등)
	private String regDate; // 날짜 [12:39:48] 표시
	
	// 서브페이지 - 블랙박스에 필요
	private int logIdx;
	private int driverIdx;
	private String driverName;
	private String displayAddr;
	private String eventVideo;
	
	// logidx값 -> 문자열
	public int getLogidx() {
	    return logIdx;
	}
	public void setLogidx(int logidx) {
	    this.logIdx = logidx;
	}
	public String getDisplayLogidx() {
	    return String.format("L%09d", logIdx); 
	}
	
	// driveridx 값 숫자 -> 문자열
	public String getDisplayDriverIdx() {
        return String.format("S%03d", driverIdx); 
    }
	
	}

