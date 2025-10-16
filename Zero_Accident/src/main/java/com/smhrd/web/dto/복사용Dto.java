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

	public class 복사용Dto {
	
		private String 테이블컬럼명과일치;
		// ex) tb_driver의 driver_name이 있으면
		// private String driverName으로 만들어야함
		
	}

