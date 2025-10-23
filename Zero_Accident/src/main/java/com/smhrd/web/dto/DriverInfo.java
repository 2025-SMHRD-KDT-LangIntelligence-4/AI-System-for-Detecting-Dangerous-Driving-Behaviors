package com.smhrd.web.dto;

import java.math.BigDecimal;
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

	public class DriverInfo {
	
    // Driver 관련
	private int driverIdx;
	private String driverId;
	private String driverPwd;
	private String driverName;
	private String driverRegion;
    private String driverContact;
    private LocalDate driverBirthdate;
    private String driverGender;
    private String driverImg;
    private LocalDateTime createdAt;
	//@Column(precision = 17, scale = 14, nullable = false)
    private String driverLon;
	//@Column(precision = 17, scale = 14, nullable = false)
    private String driverLat;
    // 총 위험행위 건수
    private int totalCount;
    
    // Admin 관련
    private String adminName;
    
    // Car 관련
    private String carNumber;
    private String carType;
    
    // Log 관련
    private String countLog;
    
    //포매팅 관련
    private String fmtCreatedAt;
    private String fmtDriverBirthdate;
    private String driverCode;
}
