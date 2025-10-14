package com.smhrd.web.entity;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.time.LocalDateTime;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

	public class Driver {
		private int driverIdx;
		private String driverId;
		private String driverPwd;
		private String driverName;
		private String driverRegion;
		private String driverContact;
		private LocalDate driverBirthdate;
		private String driverGender;
		private LocalDateTime createdAt;
		//@Column(precision = 17, scale = 14, nullable = false)
	    private BigDecimal driverLat;
		//@Column(precision = 17, scale = 14, nullable = false)
	    private BigDecimal driverLon;
		
	    private String displayAddr;
	    
		private int adminIdx;
	}

