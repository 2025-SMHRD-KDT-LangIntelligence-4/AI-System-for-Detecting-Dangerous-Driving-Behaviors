package com.smhrd.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.smhrd.web.entity.ExampleEntity;
import com.smhrd.web.service.ExampleService;

@Controller
public class RegisterController유선 {
	
	@Autowired
	private ExampleService service;
	
	@GetMapping("/RegisterDriver유선")
	public String 유선회원가입() {

		return "RegisterDriver유선";
	}


	

}
