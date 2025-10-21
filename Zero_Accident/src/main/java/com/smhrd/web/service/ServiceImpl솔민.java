package com.smhrd.web.service;

import com.smhrd.web.dto.LogDTO;
import com.smhrd.web.mapper.Mapper솔민; 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Service
public class ServiceImpl솔민 implements Service솔민 {

    // 🚨 영어 -> 한국어 매핑 정의
    private static final Map<String, String> EVENT_TYPE_MAP = Map.of(
        "HAND", "운전대 미제어",
        "DROWSY", "졸음운전",
        "PHONE", "휴대폰 조작",
        "ASSAULT", "운전자 폭행"
        // 실제 데이터에 따라 항목 추가/수정 필요
    );

    private final Mapper솔민 mapper솔민;

    @Autowired
    public ServiceImpl솔민(Mapper솔민 mapper솔민) {
        this.mapper솔민 = mapper솔민;
    }

    @Override
    public List<LogDTO> getLogList(String searchQuery, 
                                   String filterDate, 
                                   String filterEvent, 
                                   String filterLevel) {
        
        // 1. Mapper를 호출하여 DB에서 로그 리스트(영문 event_type 포함)를 가져옵니다.
        List<LogDTO> logList = mapper솔민.getLogList(searchQuery, filterDate, filterEvent, filterLevel);

        // 2. 🚨 로그 리스트를 스트림 처리하여 event_type을 한국어로 변환합니다.
        List<LogDTO> translatedLogList = logList.stream()
            .map(log -> {
                String englishType = log.getEventType(); // DTO에서 현재 영문 event_type을 가져옵니다.
                
                // 맵에서 한국어 값을 찾습니다. 없으면 기존 영문 값을 그대로 사용합니다.
                String koreanType = EVENT_TYPE_MAP.getOrDefault(englishType, englishType);
                
                // DTO의 eventType을 한국어로 설정합니다.
                log.setEventType(koreanType); 
                
                return log;
            })
            .collect(Collectors.toList());

        // 3. 한국어로 변환된 리스트를 반환합니다.
        return translatedLogList;
    }
}