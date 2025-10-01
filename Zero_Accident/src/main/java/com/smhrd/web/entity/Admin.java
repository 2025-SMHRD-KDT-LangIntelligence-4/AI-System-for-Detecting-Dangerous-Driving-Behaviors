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

	public class Admin {
		private int adminIdx;
		private String adminId;
		private String adminPwd;
		private String adminName;
		private String adminContact;
		private LocalDateTime JoinedAt;
		
	}

