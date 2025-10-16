package com.smhrd.web.service;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smhrd.web.mapper.Mapper솔민;
import com.smhrd.web.mapper.Mapper우빈;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class Service솔민 {

    private final Mapper솔민 mapper;

    private final DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");

    public int getAssaultCount(String startDate, String endDate) {
        return mapper.countByEventAndDate("ASSAULT", startDate, endDate);
    }

    public int getDrowsyCount(String startDate, String endDate) {
        return mapper.countByEventAndDate("DROWSY", startDate, endDate);
    }

    public int getHandCount(String startDate, String endDate) {
        return mapper.countByEventAndDate("HAND", startDate, endDate);
    }

    public int getPhoneCount(String startDate, String endDate) {
        return mapper.countByEventAndDate("PHONE", startDate, endDate);
    }
}
