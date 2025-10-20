package com.smhrd.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class Controller솔민렌더링용 {

    @GetMapping("/MainAdmin솔민렌더링용")
    public String mainAdminPage() {
        return "MainAdmin솔민"; // JSP 파일 렌더링
    }
    @GetMapping("/ButtonAdmin3솔민렌더링용")
    public String ButtonAdmin3Page() {
        return "ButtonAdmin3솔민"; // JSP 파일 렌더링
    }
}
