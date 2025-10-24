package com.smhrd.web.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class LogDTO {
    private int logIdx;
    private String createdAt;
    private String carNumber;
    private String driverName;
    private String driverIdx;  // 추가
    private String eventType;
    private String eventLevel;
}

