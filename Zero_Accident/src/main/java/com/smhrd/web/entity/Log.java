		package com.smhrd.web.entity;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.time.LocalDateTime;

import org.springframework.format.annotation.DateTimeFormat;

import jakarta.persistence.Column;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

	public class Log {
		private int logIdx;
		private String eventType; //요거			
		//@Column(precision = 17, scale = 14, nullable = false)
	    private BigDecimal eventLat;
		//@Column(precision = 17, scale = 14, nullable = false)
	    private BigDecimal eventLon;
		private String eventLevel; //요거
		private String eventDesc;
		private String eventImg1;
		private String eventImg2;
		private String eventImg3;
		private String eventVideo;
		private LocalDateTime createdAt; //요거
		private String displayAddr;
	}

