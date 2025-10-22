package com.smhrd.web.service;

import com.smhrd.web.dto.LogDTO;
import java.util.List;

// Service솔민 인터페이스 수정
public interface Service솔민 {
    
    /**
     * 로그 리스트를 검색어, 날짜, 이벤트 종류, 이벤트 레벨 필터와 함께 조회합니다.
     */
    List<LogDTO> getLogList(
        String searchQuery,
        String filterDate, 
        String filterEvent, 
        String filterLevel // 🚨 Mapper와 동일하게 4개의 파라미터로 수정
    );
}