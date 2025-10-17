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

	public class SelectEvent {
	private Long totalPhone; // SQL의 total_P와 매핑
    private Long totalHand; // SQL의 total_H와 매핑
    private Long totalDrowsy; // SQL의 total_D와 매핑
    private Long totalAssault; // SQL의 total_A와 매핑
	
	}

