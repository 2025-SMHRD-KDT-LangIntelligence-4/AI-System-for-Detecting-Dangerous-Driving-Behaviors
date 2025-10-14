package com.smhrd.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.smhrd.web.mapper.MainMapper;
import com.smhrd.web.service.Service유선;

@Controller
public class Controller유선{
	@Autowired
	MainMapper mapper;

		private final Service유선 registerservice유선;
		
		public Controller유선(Service유선 registerservice유선) {
			this.registerservice유선 = registerservice유선;
		}
		
		@GetMapping("/MainAdmin유선")
	    public String showCount(Model model) {
	        long count = registerservice유선.getruncarCount();
	        model.addAttribute("count", count);
	        return "MainAdmin유선"; 
		}
}
