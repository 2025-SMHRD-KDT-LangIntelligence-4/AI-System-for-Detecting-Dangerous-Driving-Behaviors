package com.smhrd.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.smhrd.web.service.Service솔민;

@Controller
public class Controller솔민 {

    @Autowired
    private Service솔민 service;

    @GetMapping("/MainAdmin솔민")
    public String MainAdmin솔민(Model model) {

        int assault = service.getAssaultCount();
        int drowsy = service.getDrowsyCount();
        int hand = service.getHandCount();
        int phone = service.getPhoneCount();

        model.addAttribute("assault", assault);
        model.addAttribute("drowsy", drowsy);
        model.addAttribute("hand", hand);
        model.addAttribute("phone", phone);

        return "MainAdmin솔민"; // 그래프가 있는 JSP 이름으로 변경하세요
    }
}
