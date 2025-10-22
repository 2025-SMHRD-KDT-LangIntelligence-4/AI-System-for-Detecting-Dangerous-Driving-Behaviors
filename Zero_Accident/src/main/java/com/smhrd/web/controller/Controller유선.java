package com.smhrd.web.controller;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.smhrd.web.dto.DriverDetail;
import com.smhrd.web.dto.DriverInfo;
import com.smhrd.web.dto.SelectEvent;
import com.smhrd.web.dto.SelectLog;
import com.smhrd.web.mapper.MainMapper;
import com.smhrd.web.mapper.Mapper유선;
import com.smhrd.web.service.Service우빈;
import com.smhrd.web.service.Service유선;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
@RequestMapping
public class Controller유선{
	private final Service유선 service;
	
	// 유선 : 운전자 상세페이지
	@GetMapping("/MainDriver2_1유선") 
		public String MainDriver2_1유선(@RequestParam("logIdx") int logIdx, Model model) {
	        
	        // Service 호출, 상세 데이터를 조회
	        DriverDetail detail = service.driverDetailLog(logIdx);
	        
	      //이벤트 레벨에 따라 문자열을 바꾼다. 포매팅 (색깔에 관한문자열 frame-item :빨강, frame-child :주황
	        String eventLevel = detail.getEventLevel();
	        if ("1".equals(eventLevel)) {
	            detail.setEventColor("circle-blue");
	        } else if ("2".equals(eventLevel)) {
	            detail.setEventColor("circle-yellow");
	        } else if ("3".equals(eventLevel)) {
	            detail.setEventColor("circle-red");
	        }

			// 영어 -> 한글로 바꾸기 (PHONE -> 휴대폰 조작, HAND -> 핸들미제어, DROWSY -> 졸음운전, ASSAULT -> 운전자폭행
	        String eventType = detail.getEventType();
	        if ("PHONE".equals(eventType)) {
	            detail.setEventTypeKo("휴대폰 조작");
	        } else if ("HAND".equals(eventType)) {
	            detail.setEventTypeKo("핸들 미제어");
	        } else if ("DROWSY".equals(eventType)) {
	            detail.setEventTypeKo("졸음 운전");
	        } else if ("ASSAULT".equals(eventType)) {
	            detail.setEventTypeKo("운전자 폭행");
	        }
			// 로그 기록 시간 보기 쉽게 바꾸기 2025-10-20 13:44:08
	        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
	        if (detail.getCreatedAt() != null) {
	             detail.setRegDate(detail.getCreatedAt().format(formatter));
	        }
			    // 블랙박스 알림버튼 색 바꾸기
	        if ("3".equals(detail.getEventLevel())) {
	            detail.setEventColor("div23");
	        } else {
	            detail.setEventColor("div51");
	        }
			 // 조회된 데이터 Model에 담아 JSP로 전달
		        model.addAttribute("detail", detail);
		        return "/MainDriver2_1유선";
	}
	
	
}
	
	
	
	