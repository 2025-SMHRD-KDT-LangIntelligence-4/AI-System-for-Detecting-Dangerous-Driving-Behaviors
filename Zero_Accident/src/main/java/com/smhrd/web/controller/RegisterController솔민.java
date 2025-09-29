package com.smhrd.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.smhrd.web.entity.Driver솔민;
import com.smhrd.web.service.RegisterService솔민;

@Controller
public class RegisterController솔민{
	
	@Autowired
	private RegisterService솔민 service;
	
	@GetMapping("/RegisterDriver솔민")
	public String RegisterDriver솔민() {
		return "RegisterDriver솔민";
	}
	
	@PostMapping("/RegisterDriver2솔민")
	public String RegisterDriver2솔민(Driver솔민 driver) {
		service.회원가입확인메서드(driver);
		// redirectAttributes.addFlashAttribute("msg", "회원가입이 완료되었습니다");
		return "redirect:/RegisterDriver솔민";
	}
}
