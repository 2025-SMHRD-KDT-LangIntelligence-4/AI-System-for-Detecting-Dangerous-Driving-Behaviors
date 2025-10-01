package com.smhrd.web.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.smhrd.web.entity.Driver;
import com.smhrd.web.service.RegisterService;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class RegisterController{
	
	private final RegisterService service;
	
	// 운전자 회원가입 페이지로 이동
	@GetMapping("/RegisterDriver우빈")
	public String goRegisterDriver() {
		return "RegisterDriver우빈";
	}
	
	// 운전자 AJAX 중복확인 API
	@ResponseBody
	@PostMapping("/api/driver/check-id")
	public Map<String, Object> checkId(@RequestParam String driverId) {
		boolean available = service.isAvailableId(driverId);
		Map<String, Object> res = new HashMap<>();
		res.put("available", available);
		res.put("duplicate", !available);
		return res;
	}
	
	// 운전자 회원가입 처리
	@PostMapping("registerDriver")
		public String registerDriver(Driver driver, RedirectAttributes rttr) {
			try {
				service.registerDriver(driver);
				rttr.addFlashAttribute("msg", "회원가입이 완료되었습니다.");
				return "redirect:/RegisterDriver우빈";
			} catch (DuplicateKeyException ex) {
				rttr.addFlashAttribute("msg", "이미 사용 중인 아이디입니다.");
				return "redirect:/RegisterDriver우빈";
			} catch (Exception e) {
				rttr.addFlashAttribute("msg", "오류가 발생했습니다. 잠시 후 다시 시도해주세요.");
				return "redirect:/RegisterDriver우빈";	
			}
		}
}
