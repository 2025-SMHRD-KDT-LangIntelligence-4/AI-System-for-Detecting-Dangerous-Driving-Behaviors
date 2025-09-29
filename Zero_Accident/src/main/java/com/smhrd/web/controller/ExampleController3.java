package com.smhrd.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.smhrd.web.entity.ExampleEntity;
import com.smhrd.web.service.ExampleService;

@Controller
public class ExampleController3 {
	@Autowired
	private ExampleService exampleService;
	
	@GetMapping("/ExampleView3")
	public String A(Model 철수) {
		List<ExampleEntity> ExampleDBList = exampleService.getExampleDBList();
		철수.addAttribute("선물꾸러미", ExampleDBList);
		return "ExampleView3";
	}

	
	
}
