package com.smhrd.web.dto;

import java.time.LocalDate;
import java.time.LocalDateTime;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

	public class DriverDetail {
	private String eventImg1;   // 영상 썸네일
	private String eventLevel;  // 위험 레벨(1,2,3) eventcolor 필요
	private String eventColor;  // 위험 등급 색깔
	private int logIdx;         // 로그 고유 번호
	private String eventType;   // 졸음 운전
	private String eventVideo;  // 영상
	private String eventTypeKo; // HAND -> 차량 미제어(한글 전환)
	private LocalDateTime createdAt; // 날짜 regdate 필요
	private String regDate;     // 발생 일자
	private String displayAddr; // 발생 위치
	private String adminName;   // 관리자 이름

	}

