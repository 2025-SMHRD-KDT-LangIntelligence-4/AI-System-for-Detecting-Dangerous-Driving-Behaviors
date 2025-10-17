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
	
	@GetMapping("/MainAdmin유선")
	public String MainAdmin유선(Model model) {
		 List<SelectLog> logList = service.selectLogList();
		 //이벤트레벨에 따라 문자열을 바꾼다. 포매팅 (색깔에 관한문자열 frame-item :빨강, frame-child :주황
		 for (SelectLog log : logList) {
				 if ("1".equals(log.getEventLevel())){
					 log.setEventColor("frame-item2");
				 }if ("2".equals(log.getEventLevel())){
					 log.setEventColor("frame-child");
				 }if ("3".equals(log.getEventLevel())){
				 log.setEventColor("frame-item");
			 }
		 }
		// 영어 -> 한글로 바꾸기 (PHONE -> 휴대폰 조작, HAND -> 핸들미제어, DROWSY -> 졸음운전, ASSAULT -> 운전자폭행
		 for (SelectLog log : logList) {
			 if ("PHONE".equals(log.getEventType())){
				 log.setEventTypeKo("휴대폰 조작");
			 }if ("HAND".equals(log.getEventType())){
				  log.setEventTypeKo("핸들 미제어");
			 }if ("DROWSY".equals(log.getEventType())){
				  log.setEventTypeKo("졸음 운전");
			 }if ("ASSAULT".equals(log.getEventType())){
				  log.setEventTypeKo("운전자 폭행");
			 }
		 }
			 
		 // 로그 기록 시간 보기 쉽게 바꾸기 [13:44:08]
		// ofPattern에 내가 바꾸고 싶은 형식 지정 (hh:mm:ss 등)
		 DateTimeFormatter formatter = DateTimeFormatter.ofPattern("hh:mm:ss");
		    for (SelectLog j : logList) {
		        	j.setRegDate(j.getCreatedAt().format(formatter));
		    }
		    
		    model.addAttribute("logList", logList);
			return "/MainAdmin유선";
	
		}
	
	@GetMapping("/ButtonAdmin4유선")
    public String ButtonAdmin4유선(Model model) {
		SelectEvent selectEventchart = service.selectEventchart();
		model.addAttribute("selectEventchart", selectEventchart);
		return "/ButtonAdmin4유선";
		
	}
}
	
	
	
	