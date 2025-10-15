package com.smhrd.web.controller;

import java.sql.Driver;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.smhrd.web.service.DriverService;
import com.smhrd.web.service.LogService;
import com.smhrd.web.service.RegisterService;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class Controller우빈{
	
	private final DriverService service;
	
			@GetMapping("/MainAdmin우빈")
			public String MainAdmin우빈(Model model) {
				//List<Driver> drivers = service.getAllWithCoords();
			    //model.addAttribute("drivers", drivers);
				return "MainAdmin우빈";
			}

}
