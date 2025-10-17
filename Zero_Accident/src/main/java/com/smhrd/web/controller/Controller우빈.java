package com.smhrd.web.controller;


import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.smhrd.web.dto.DriverInfo;
import com.smhrd.web.dto.SelectVideo;
import com.smhrd.web.service.Service우빈;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor

public class Controller우빈{
	private final Service우빈 service;
	
	@GetMapping("/MainAdmin우빈")
	public String MainAdmin우빈(Model model) {
		List<SelectVideo> videoList = service.selectVideoList();
		for (SelectVideo v : videoList) {
			 if ("1".equals(v.getEventLevel())){
				 v.setEventColor("circle-blue");
			 }if ("2".equals(v.getEventLevel())){
				 v.setEventColor("circle-yellow");
			 }if ("3".equals(v.getEventLevel())){
			 v.setEventColor("circle-red");
			 }
			 v.setDriverCode(String.format("S%03d", v.getDriverIdx()));
			 }
		model.addAttribute("videoList", videoList);
		return "/MainAdmin우빈";
	}
}