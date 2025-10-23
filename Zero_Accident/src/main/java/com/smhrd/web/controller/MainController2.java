package com.smhrd.web.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.smhrd.web.service.MainService2;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor

public class MainController2{
	private final MainService2 service;
	
	// 우빈 : 운전자 메인페이지
	@GetMapping("/MainDriver")
	public String MainDriver() {
		return ("/MainDriver");
	}
	
	// 우희 : 운전자 위험운전상세페이지
	@GetMapping("/MainDriver2_1")
	public String MainDriver2_1() {
		return "MainDriver2_1";
	}
	
	// 우희 : 운전자 위험운전상세페이지
	@GetMapping("/MainDriver2")
	public String MainDriver2() {
		return "MainDriver2";
	}
}