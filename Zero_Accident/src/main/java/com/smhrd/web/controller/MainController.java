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
	
	@GetMapping("/")
	public String StartPage() {
		return "StartPage";
	}
}
