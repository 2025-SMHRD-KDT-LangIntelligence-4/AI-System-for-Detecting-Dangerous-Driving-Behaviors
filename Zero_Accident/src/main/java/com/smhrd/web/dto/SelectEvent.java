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
	private Long totalP; // SQL의 totalP와 매핑
    private Long totalH; // SQL의 totalH와 매핑
    private Long totalD; // SQL의 totalD와 매핑
    private Long totalA; // SQL의 totalA와 매핑
	
    public Long getTotalSum() {
        // null 체크를 포함하여 안전하게 합산합니다.
        long sum = 0;
        if (totalP != null) sum += totalP;
        if (totalH != null) sum += totalH;
        if (totalD != null) sum += totalD;
        if (totalA != null) sum += totalA;
        return sum;
    }
    
	}

