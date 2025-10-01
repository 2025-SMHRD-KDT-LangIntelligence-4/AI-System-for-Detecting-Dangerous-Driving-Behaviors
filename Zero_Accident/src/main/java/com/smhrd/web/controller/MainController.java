package com.smhrd.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.smhrd.web.mapper.MainMapper;

@Controller
public class MainController{
	@Autowired
	MainMapper mapper;
	
	// 가장 첫 화면 : 관리자 or 운전자 선택
	@GetMapping("/") 
	public String StartPage() {
		return "StartPage";
	}
		
	// 관리자 로그인 화면
	@GetMapping("/LoginAdmin") // 주소창에 뭘 적으면 갈까요?
	public String LoginAdmin() { // 내가 지을 메서드 별명
		return "LoginAdmin"; // 화면에 띄워줄 view.jsp 이름
	}
	
	// 관리자 로그인 화면
//	@PostMapping("/LoginAdmin") // 주소창에 뭘 적으면 갈까요?
//	public String LoginAdmin() { // 내가 지을 메서드 별명
//		return "LoginAdmin"; // 화면에 띄워줄 view.jsp 이름
//	}
	
	// 운전자 로그인 화면
	@GetMapping("/LoginDriver")
	public String LoginDriver() {
		return "LoginDriver";
	}
	
	// 운전자 로그인 화면
//	@PostMapping("/LoginDriver")
//	public String LoginDriver() {
//		return "LoginDriver";
//	}
	
	// 관리자 회원가입 화면
	@GetMapping("/RegisterAdmin")
	public String RegisterAdmin() {
		return "RegisterAdmin";
	}
	
	// 운전자 회원가입 화면
	@GetMapping("/RegisterDriver")
	public String RegisterDriver() {
		return "RegisterDriver";
	}
	
	// 관리자 메인 화면
		@GetMapping("/MainAdmin")
		public String MainAdmin() {
			return "MainAdmin";
		}
	
	// 관리자 메인 화면
		@GetMapping("/MainDriver")
		public String MainDriver() {
			return "MainDriver";
		}
}
