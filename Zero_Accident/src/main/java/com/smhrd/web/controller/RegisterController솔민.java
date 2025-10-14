package com.smhrd.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.smhrd.web.service.LogService;

@Controller
public class RegisterController솔민 {
    
    private final LogService logService;

    @Autowired
    public RegisterController솔민(LogService logService) {
        this.logService = logService;
    }
    
    @GetMapping("/MainAdmin솔민")
    public String MainAdmin솔민(Model model) {
        // tb_log의 log_idx 총 개수 조회
        int totalCount = logService.getTotalLogCount();
        model.addAttribute("totalCount", totalCount); // JSP에 전달
        return "MainAdmin솔민"; // JSP 파일명과 일치하도록 수정
    }

    @GetMapping("/RegisterDriver솔민")
    public String RegisterDriver솔민() {
        return "RegisterDriver솔민";
    }

}
