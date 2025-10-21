package com.smhrd.web.dto;

import java.time.LocalDate;
import java.time.LocalDateTime;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

	public class DriverWaiting {
	
		private int driverCount;
		private String driverId;
		private String driverName;
		private String driverGender;
		private String driverContact;
		private LocalDate driverBirthdate;
		private String FmtDriverBirthdate;
		private LocalDateTime createdAt;
		private String fmtCreatedAt;
	}

