package com.smhrd.web.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.smhrd.web.dto.DriverInfo;
import com.smhrd.web.service.MainService2;

import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor

public class MainController2{
	private final MainService2 service;
	
	// 우빈 : 운전자 메인페이지
	@GetMapping("/MainDriver")
	public String MainDriver(HttpSession session, RedirectAttributes ra, Model model) {
		// 세션에서 로그인 정보 가져오기
	    DriverInfo loginDriver = (DriverInfo) session.getAttribute("loginDriver");
	    // 로그인 안 된 경우
	    if (loginDriver == null) {
	        ra.addFlashAttribute("alertMsg", "로그아웃 세션이 만료되었습니다."); // 1회성 메시지
	    	return "redirect:/LoginDriver";
	    }
	    
	    // 우빈 : 운전자 정보 띄우기
	    service.formatDriverInfo(loginDriver);
	    
	    // 우빈 : driverIdx로 전체 사건 수 조회
		int totalCount = service.selectTotalLogCount(loginDriver.getDriverIdx());
        model.addAttribute("loginDriver", loginDriver);
        model.addAttribute("totalCount", totalCount);
		return "/MainDriver";
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