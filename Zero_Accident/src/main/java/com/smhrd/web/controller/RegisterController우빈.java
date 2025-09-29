package com.smhrd.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.smhrd.web.entity.Driver우빈;
import com.smhrd.web.service.RegisterService우빈;

@Controller
public class RegisterController우빈{
	
	@Autowired
	private RegisterService우빈 service;
	
	@GetMapping("/RegisterDriver우빈")
	public String RegisterDriver우빈() {
		return "RegisterDriver우빈";
	}
	
	@PostMapping("/RegisterDriver2우빈")
	public String RegisterDriver2우빈(Driver우빈 driver) {
		service.회원가입확인메서드(driver);
		// redirectAttributes.addFlashAttribute("msg", "회원가입이 완료되었습니다");
		return "redirect:/RegisterDriver우빈";
	}
}
