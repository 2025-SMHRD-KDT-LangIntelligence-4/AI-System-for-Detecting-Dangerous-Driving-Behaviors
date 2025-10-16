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

	public class LogWithCarNumber {
	
		private String eventType;
		private String eventLevel;
		private String carNumber;
		private LocalDateTime createdAt;
		private String eventColor;
	}

