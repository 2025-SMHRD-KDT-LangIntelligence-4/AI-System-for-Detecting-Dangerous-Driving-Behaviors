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
// 롬복이라는 라이브러리 기능인데, getter, setter 만들고 또 알아서 연결해주는 등의 기능이다.

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
		
		private int adminIdx;
	}

