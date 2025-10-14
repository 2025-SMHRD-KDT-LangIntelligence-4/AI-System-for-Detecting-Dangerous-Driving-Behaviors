package com.smhrd.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.smhrd.web.entity.Admin;
import com.smhrd.web.entity.Driver;
import com.smhrd.web.mapper.LoginMapper;
import com.smhrd.web.service.LoginService;
import com.smhrd.web.service.RegisterService;

import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class LoginController{
	private final LoginService service;
	
	@PostMapping("/LoginAdmin")
	public String loginAdmin(Admin admin,
	                         HttpSession session,
	                         RedirectAttributes rttr) {

	    Admin loginAdmin = service.login(admin);

	    if (loginAdmin == null) {
	        // 아이디 없음
	        rttr.addFlashAttribute("msg", "존재하지 않는 아이디입니다.");
	        rttr.addFlashAttribute("adminId", admin.getAdminId()); // ✅ 입력한 아이디 전달
	        return "redirect:/LoginAdmin";
	    }

	    if (loginAdmin.getAdminPwd() == null) {
	        // 비밀번호 틀림
	        rttr.addFlashAttribute("msg", "비밀번호가 일치하지 않습니다.");
	        rttr.addFlashAttribute("adminId", admin.getAdminId()); // ✅ 입력한 아이디 전달
	        return "redirect:/LoginAdmin";
	    }

	    // 로그인 성공
	    session.setAttribute("loginAdmin", loginAdmin);
	    rttr.addFlashAttribute("msg", "로그인 성공!");
	    return "redirect:/MainAdmin";
	}

	@PostMapping("/LoginDriver")
	public String loginDriver(Driver driver,
			HttpSession session,
			RedirectAttributes rttr) {
		
		Driver loginDriver = service.login(driver);
		
		if (loginDriver == null) {
			// 아이디 없음
			rttr.addFlashAttribute("msg", "존재하지 않는 아이디입니다.");
			rttr.addFlashAttribute("adminId", driver.getDriverId()); // ✅ 입력한 아이디 전달
			return "redirect:/LoginDriver";
		}
		
		if (loginDriver.getDriverPwd() == null) {
			// 비밀번호 틀림
			rttr.addFlashAttribute("msg", "비밀번호가 일치하지 않습니다.");
			rttr.addFlashAttribute("driverId", driver.getDriverId()); // ✅ 입력한 아이디 전달
			return "redirect:/LoginDriver";
		}
		
		// 로그인 성공
		session.setAttribute("loginDriver", loginDriver);
		rttr.addFlashAttribute("msg", "로그인 성공!");
		return "redirect:/MainDriver";
	}


}
