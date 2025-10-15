package com.smhrd.web.entity;

import java.time.LocalDate;
import java.time.LocalDateTime;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

// 우빈 : driver, admin, log 테이블 다중 조인용 엔터티

	public class Join1 {
	
    // Driver 관련
	private int driverIdx;
	private String driverName;
    private String driverContact;
    private LocalDate driverBirthdate;
    private String driverRegion;
    private String driverImg;
    private LocalDateTime createdAt;
    
    // Admin 관련
    private String adminName;
    
    // Car 관련
    private String carNumber;
    
    // Log 관련
    private String countLog;
    
    //포매팅 관련
    private String fmtCreatedAt;
    private String fmtDriverBirthdate;
    private String driverCode;
    
	}

