package com.smhrd.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.smhrd.web.entity.ExampleEntity;
import com.smhrd.web.service.ExampleService;

@Controller
public class ExampleController {
	
	@Autowired
	private ExampleService service;
	
	@GetMapping("/ExampleView")
	public String ExampleView(Model model) {
		List<ExampleEntity> ExampleDBList = service.getExampleDBList();
		model.addAttribute("ExampleDBList", ExampleDBList);
		return "ExampleView";
	}

}
