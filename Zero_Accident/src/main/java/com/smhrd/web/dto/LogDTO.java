package com.smhrd.web.dto;

import java.sql.Timestamp;

public class LogDTO {
    
    // DB에서 조회하는 필드 (Mapper와 LogDTO의 필드 이름이 카멜 케이스로 일치해야 합니다.)
    private int logIdx;          // Log DTO에 이미 존재
    private Timestamp createdAt; // Log DTO에 이미 존재
    private String carNumber;    // Log DTO에 이미 존재
    private String driverName;   // Log DTO에 이미 존재
    private String eventType;    // Log DTO에 이미 존재
    private String eventLevel;   // Log DTO에 이미 존재
    private String status;       // Log DTO에 이미 존재
    
    // 추가적인 필드 (쿼리에 따라 필요)
    private String formattedLogId;
    private String formattedDriverId;
    private int driverIdx;

    // 상세 조회에 필요한 필드를 미리 추가했습니다.
    private String location; 
    private String admin;
    
    
    // ================== Getter/Setter ==================

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getAdmin() {
		return admin;
	}

	public void setAdmin(String admin) {
		this.admin = admin;
	}
    
	public String getFormattedLogId() {
		return formattedLogId;
	}

	public void setFormattedLogId(String formattedLogId) {
		this.formattedLogId = formattedLogId;
	}

	public String getFormattedDriverId() {
		return formattedDriverId;
	}

	public void setFormattedDriverId(String formattedDriverId) {
		this.formattedDriverId = formattedLogId; // setFormattedDriverId 오류 수정
	}

	public int getDriverIdx() {
		return driverIdx;
	}

	public void setDriverIdx(int driverIdx) {
		this.driverIdx = driverIdx;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

    public int getLogIdx() {
        return logIdx;
    }

    public void setLogIdx(int logIdx) {
        this.logIdx = logIdx;
    }
    
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
}
