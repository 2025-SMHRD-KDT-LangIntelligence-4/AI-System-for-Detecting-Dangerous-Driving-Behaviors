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

import com.smhrd.web.entity.Admin;
import com.smhrd.web.entity.Driver;
import com.smhrd.web.service.RegisterService;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class RegisterController{
	
	private final RegisterService service;
	
//--------------------------------------------------------------------------------------------
	// 관리자 ID 중복확인
	@ResponseBody
	@PostMapping("/checkAdminId")
	public Map<String, Object> checkAdminId(@RequestParam String adminId) {
		boolean available = service.isAvailableAdminId(adminId);
		Map<String, Object> res = new HashMap<>();
		res.put("available", available);
		res.put("duplicate", !available);
		return res;
	}
	
	// 관리자 회원가입처리
	@PostMapping("/RegisterAdmin")
	public String RegisterAdmin(Admin admin, RedirectAttributes rttr) {
		try {
			service.registerAdmin(admin);
			rttr.addFlashAttribute("msg", "회원가입이 완료되었습니다.");
			return "redirect:/LoginAdmin";
		} catch (DuplicateKeyException ex) {
			rttr.addFlashAttribute("msg", "이미 사용 중인 아이디입니다.");
			return "redirect:/LoginAdmin";
		} catch (Exception e) {
			rttr.addFlashAttribute("msg", "오류가 발생했습니다. 잠시 후 다시 시도해주세요.");
			return "redirect:/LoginAdmin";
		}
	}
//--------------------------------------------------------------------------------------------
	// 운전자 ID 중복확인
	@ResponseBody
	@PostMapping("/checkDriverId")
	public Map<String, Object> checkDriverId(@RequestParam String driverId) {
		boolean available = service.isAvailableDriverId(driverId);
		Map<String, Object> res = new HashMap<>();
		res.put("available", available);
		res.put("duplicate", !available);
		return res;
	}
	
	// 운전자 회원가입 처리
	@PostMapping("/RegisterDriver")
		public String registerDriver(Driver driver, RedirectAttributes rttr) {
			try {
				service.registerDriver(driver);
				rttr.addFlashAttribute("msg", "회원가입이 완료되었습니다.");
				return "redirect:/LoginDriver";
			} catch (DuplicateKeyException ex) {
				rttr.addFlashAttribute("msg", "이미 사용 중인 아이디입니다.");
				return "redirect:/LoginDriver";
			} catch (Exception e) {
				rttr.addFlashAttribute("msg", "오류가 발생했습니다. 잠시 후 다시 시도해주세요.");
				return "redirect:/LoginDriver";	
			}
		}
//--------------------------------------------------------------------------------------------
}
