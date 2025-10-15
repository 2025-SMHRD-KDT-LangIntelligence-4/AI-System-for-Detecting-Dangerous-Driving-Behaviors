package com.smhrd.web.controller;

import java.time.DayOfWeek;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.smhrd.web.service.Service솔민;

@RestController
public class Controller솔민 {

    @Autowired
    private Service솔민 service;
    // 2️⃣ AJAX: 그래프 데이터 반환
    @ResponseBody
    @GetMapping("/MainAdmin솔민/ajax")
    public Map<String, Integer> getGraphData(@RequestParam("type") String type) {

        LocalDate today = LocalDate.now();
        LocalDate start;
        LocalDate end;

        switch (type) {
            case "daily":
                start = today;
                end = today;
                break;
            case "weekly":
                start = today.with(DayOfWeek.MONDAY);
                end = today.with(DayOfWeek.SUNDAY);
                break;
            case "monthly":
                start = today.withDayOfMonth(1);
                end = today.withDayOfMonth(today.lengthOfMonth());
                break;
            default:
                start = today;
                end = today;
                break;
        }

        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");

        String startStr = start.format(formatter);
        String endStr = end.format(formatter);
        
        Map<String, Integer> result = new HashMap<>();
        result.put("assault", service.getAssaultCount(startStr, endStr));
        result.put("drowsy", service.getDrowsyCount(startStr, endStr));
        result.put("hand", service.getHandCount(startStr, endStr));
        result.put("phone", service.getPhoneCount(startStr, endStr));

        return result;
    }
}
