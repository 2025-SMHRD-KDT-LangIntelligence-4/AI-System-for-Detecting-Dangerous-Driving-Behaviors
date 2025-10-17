package com.smhrd.web.controller;

import com.smhrd.web.service.Service솔민;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.time.LocalDate;
import java.util.Map;

@RestController
@RequestMapping("/logs")
public class Controller솔민 {

    @Autowired
    private Service솔민 service솔민;

    @GetMapping("/count")
    public Map<String, Integer> getLogCount(
            @RequestParam String type,
            @RequestParam(required = false) @DateTimeFormat(pattern = "yyyy-MM-dd") LocalDate date) {

        if (date == null) {
            date = LocalDate.now();
        }

        return service솔민.getLogCount(type, date);
    }
}
