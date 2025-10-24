package com.smhrd.web.controller;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.smhrd.web.dto.LogDTO;
import com.smhrd.web.service.Service솔민;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class Controller솔민 {

    private final Service솔민 service;

    // 로그 목록 JSP 로드
    @GetMapping("/ButtonAdmin3솔민")
    public String showLogs(Model model) {
        List<Map<String, Object>> logList = service.getRecentLogs();
        model.addAttribute("logList", logList);
        return "ButtonAdmin3솔민";
    }

    // Ajax 상세조회 (JSON 반환)
    @GetMapping("/getLogDetail")
    @ResponseBody
    public LogDTO getLogDetail(@RequestParam(value="logIdx", required=false) Integer logIdx) {

        if (logIdx == null) {
            System.out.println("⚠ logIdx 값 전달되지 않음!");
            return null;
        }

        return service.getLogDetail(logIdx);
    }

    
}
