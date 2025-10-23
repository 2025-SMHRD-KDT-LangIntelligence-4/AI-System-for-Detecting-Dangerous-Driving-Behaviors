package com.smhrd.web.service;


import java.time.format.DateTimeFormatter;

import org.springframework.stereotype.Service;

import com.smhrd.web.dto.DriverInfo;
import com.smhrd.web.mapper.MainMapper2;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor

public class MainService2 {
	
    private final MainMapper2 mapper;

    public int selectTotalLogCount(int driverIdx) {
        return mapper.selectTotalLogCount(driverIdx);
    }
    
    public void formatDriverInfo(DriverInfo driver) {
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy년MM월dd일");

        if (driver.getCreatedAt() != null) {
            driver.setFmtCreatedAt(driver.getCreatedAt().toLocalDate().format(formatter));
        }
        if (driver.getDriverBirthdate() != null) {
            driver.setFmtDriverBirthdate(driver.getDriverBirthdate().format(formatter));
        }

        driver.setDriverCode(String.format("S%03d", driver.getDriverIdx()));
    }
    
}
