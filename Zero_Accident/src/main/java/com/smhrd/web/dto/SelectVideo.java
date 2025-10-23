package com.smhrd.web.dto;

import java.time.LocalDate;
import java.time.LocalDateTime;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

	public class SelectVideo {
		private String logIdx;
		private String eventType;
		private String eventTypeColor;
		private String eventButtonColor;
		private String eventIcon;
		private String eventLevel;
		private String eventColor;
		private String eventVideo;
		private LocalDate createdAt;
		private String carNumber;
		private int driverIdx;
		private String driverCode;
	}

