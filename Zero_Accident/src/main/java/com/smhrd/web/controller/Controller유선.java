package com.smhrd.web.controller;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mysql.cj.log.Log;
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
	
	// 유선 : 운전자 위험 운전 이력
	@GetMapping("/MainDriver2유선")
		public String MainDriver2유선(Model model) {
		List<DriverDetail> driverLog = service.driverLogList();
		
		 // 유선 : 이벤트 레벨에 따라 문자열을 바꾼다. 
		 // 포매팅 (색깔에 관한 문자열 frame-item :빨강, frame-child :노랑 frame-item2 : 파랑
		 for (DriverDetail d_log : driverLog) {
				 if ("1".equals(d_log.getEventLevel())){
					 d_log.setEventColor("circle-blue");
				 }if ("2".equals(d_log.getEventLevel())){
					 d_log.setEventColor("circle-yellow");
				 }if ("3".equals(d_log.getEventLevel())){
					 d_log.setEventColor("circle-red");
			 }
		 }
		 // 유선 : 영어 -> 한글로 바꾸기
		 // (PHONE -> 휴대폰 조작, HAND -> 핸들미제어, DROWSY -> 졸음운전, ASSAULT -> 운전자폭행
		 for (DriverDetail d_log : driverLog) {
			 if ("PHONE".equals(d_log.getEventType())){
				 d_log.setEventTypeKo("휴대폰 조작");
			 }if ("HAND".equals(d_log.getEventType())){
				 d_log.setEventTypeKo("핸들 미제어");
			 }if ("DROWSY".equals(d_log.getEventType())){
				 d_log.setEventTypeKo("졸음 운전");
			 }if ("ASSAULT".equals(d_log.getEventType())){
				 d_log.setEventTypeKo("운전자 폭행");
			 }
		 }
			 
		 // 유선 : 로그 기록 시간 보기 쉽게 바꾸기 2025-10-29
		 // ofPattern에 내가 바꾸고 싶은 형식 지정 (YYYY-MM-DD 등) 대소문자 차이 주의
		 DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		    for (DriverDetail j : driverLog) {
		        	j.setRegDate(j.getCreatedAt().format(formatter));
		    }
		    
		    model.addAttribute("driverLog", driverLog);
		
		
		return "/MainDriver2유선";
	}
	
	
	// 유선 : 운전자 상세페이지
	@GetMapping("/MainDriver2_1유선/{logIdx}")
		public String MainDriver2_1유선(@PathVariable("logIdx") Integer logIdx, Model model) {
		Log log = service.getLogIdx(logIdx); 
		model.addAttribute("log", log);
			return "/MainDriver2_1유선";
		
	}
	
	


	
}
	
	
	
	