package com.smhrd.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.smhrd.web.mapper.MainMapper;
import com.smhrd.web.service.LogService;

@Controller
public class Controller우희{
	@Autowired
	MainMapper mapper;
	
	// 관리자 - 운전자 등록 페이지
			@GetMapping("/ButtonAdmin2_1")
			public String ButtonAdmin2_1() {
				return "ButtonAdmin2_1";
			}
		
		// 관리자 - 메시지 보내기 페이지
			@GetMapping("/ButtonAdmin2_2")
			public String ButtonAdmin2_2() {
				return "ButtonAdmin2_2";
			}

		// 관리자 - 통계 페이지
			@GetMapping("/ButtonAdmin2_3")
			public String ButtonAdmin2_3() {
				return "ButtonAdmin2_3";
			}
}
