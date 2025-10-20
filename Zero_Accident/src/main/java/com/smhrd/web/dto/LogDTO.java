package com.smhrd.web.dto;

import java.sql.Timestamp;

public class LogDTO {
    
    // DB에서 조회하는 필드
    private int logIdx;          // 순번 (log_idx)
    private Timestamp createdAt; // 발생일시 (created_at)
    private String carNumber;    // 차량번호 (car_number)
    private String driverName;   // 운전자 (현재 쿼리에서 제외되어 null로 채워짐)
    private String eventType;    // 위험 행위 종류 (event_type)
    private String eventLevel;   // 위험 등급 (event_level)
    
    // JSP에 표시할 상태 (고정값)
    private String actionMethod; 
    private int actionCount;
    private String actionStatus;

    // 기본 생성자
    public LogDTO() {
        // '상태' 필드 고정값 설정
        this.actionMethod = "경고 발송";
        this.actionCount = 1;
        this.actionStatus = "조치중";
    }

    // =========================================================
    // ⚠️ 누락된 Getter/Setter 메서드 
    // =========================================================

    public int getLogIdx() {
        return logIdx;
    }

    public void setLogIdx(int logIdx) {
        this.logIdx = logIdx;
    }

    // 🚨 JSP 오류의 원인이었던 createdAt의 Getter/Setter
    public Timestamp getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Timestamp createdAt) {
        this.createdAt = createdAt;
    }

    public String getCarNumber() {
        return carNumber;
    }

    public void setCarNumber(String carNumber) {
        this.carNumber = carNumber;
    }

    public String getDriverName() {
        return driverName;
    }

    public void setDriverName(String driverName) {
        this.driverName = driverName;
    }

    public String getEventType() {
        return eventType;
    }

    public void setEventType(String eventType) {
        this.eventType = eventType;
    }

    public String getEventLevel() {
        return eventLevel;
    }

    public void setEventLevel(String eventLevel) {
        this.eventLevel = eventLevel;
    }

    public String getActionMethod() {
        return actionMethod;
    }
    
    // setActionMethod는 고정값이므로 생략 가능하나, 완전성을 위해 추가합니다.
    public void setActionMethod(String actionMethod) {
        this.actionMethod = actionMethod;
    }

    public int getActionCount() {
        return actionCount;
    }

    public void setActionCount(int actionCount) {
        this.actionCount = actionCount;
    }

    public String getActionStatus() {
        return actionStatus;
    }

    public void setActionStatus(String actionStatus) {
        this.actionStatus = actionStatus;
    }
}