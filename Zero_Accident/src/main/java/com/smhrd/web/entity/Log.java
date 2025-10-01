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
// 롬복이라는 라이브러리 기능인데, getter, setter 만들고 또 알아서 연결해주는 등의 기능이다.

	public class Log {
		private int logIdx;
		private String eventType;
		private int lat;
		private int lon;
		private String eventLevel;
		private String eventDesc;
		private String eventImg1;
		private String eventImg2;
		private String eventImg3;
		private String eventVideo;
		private LocalDateTime createdAt;
		
		private int carNumber;
	}

