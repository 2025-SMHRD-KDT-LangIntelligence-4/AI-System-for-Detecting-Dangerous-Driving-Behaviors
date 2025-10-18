package com.smhrd.web.dto;

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
		private String eventLevel;
		private String eventColor;
		private String eventVideo;
		private String createdAt;
		private String carNumber;
		private int driverIdx;
		private String driverCode;
	}

