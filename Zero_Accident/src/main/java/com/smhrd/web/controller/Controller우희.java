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
	
	
		@GetMapping("/MainAdmin우희")
		public String MainAdmin우희() {
			return "MainAdmin우희";
		}
		
		@GetMapping("/Datetime")
		public String Datetime() {
			return "Datetime";
		}
		
		
		
		
}
