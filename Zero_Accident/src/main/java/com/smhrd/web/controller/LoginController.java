package com.smhrd.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.smhrd.web.mapper.MainMapper;

@Controller
public class LoginController{
	@Autowired
	MainMapper mapper;
	
	@GetMapping("/LoginPage")
	public String LoginPage() {
		return "LoginPage";
	}
	
	
	@GetMapping("/LoginDriver") //주소창에 뭘 적으면 갈까요?
	public String LoginDriver() { // 내가 지을 메서드 별명
		return "LoginDriver"; //view.jsp이름
	}
	
	@GetMapping("/RegisterDriver") //주소창에 뭘 적으면 갈까요?
	public String RegisterDriver() { // 내가 지을 메서드 별명
		return "RegisterDriver"; //view.jsp이름
	}
}
