package com.smhrd.web.controller;

import java.time.format.DateTimeFormatter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.smhrd.web.dto.LogWithCarNumber;
import com.smhrd.web.service.Service우빈;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class Controller우빈{
	private final Service우빈 service;
	
	@GetMapping("/MainAdmin우빈")
	public String MainAdmin우빈(Model model) {
		// 유선 : 로그 최신순 4개 받아오기
		List<LogWithCarNumber> logList = service.selectLogList();
		// 유선 : 로그 eventLevel에 따라 색 바꾸는 로직
		for (LogWithCarNumber log : logList) {
			if ("1".equals(log.getEventLevel())) {
				log.setEventColor("circle-blue");
			}
			if ("2".equals(log.getEventLevel())) {
				log.setEventColor("circle-yellow");
			}
			if ("3".equals(log.getEventLevel())) {
				log.setEventColor("circle-red");
			}
		}
		model.addAttribute("logList", logList);
		return "MainAdmin우빈";
	}

}
