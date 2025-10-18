package com.smhrd.web.service;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.smhrd.web.dto.DriverInfo;
import com.smhrd.web.dto.MakeGraph;
import com.smhrd.web.dto.SelectLog;
import com.smhrd.web.dto.SelectVideo;
import com.smhrd.web.mapper.MainMapper;
import com.smhrd.web.mapper.Mapper우빈;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class MainService {
	
    private final MainMapper mapper;
    
    public List<DriverInfo> SelectAllDrivers() {
    	return mapper.SelectAllDrivers();
    }
    
    public int SelectDriverCount() {
    	return mapper.SelectDriverCount();
    }
    
    public int countDriverIdx() {
        return mapper.countDriverIdx();
    }
    
    public List<SelectLog> selectLogList() {
    		return mapper.selectLogList();
    }
    
    // 우빈 : 블랙박스 4개 리스트
    public List<SelectVideo> selectVideoList() {
        List<SelectVideo> list = mapper.selectVideoList();

        // 🔹 Service에서 색상 및 코드 포맷 지정
        for (SelectVideo v : list) {
            switch (v.getEventLevel()) {
                case "1" -> v.setEventColor("frame-item2");
                case "2" -> v.setEventColor("frame-child");
                case "3" -> v.setEventColor("frame-item");
            }
            v.setDriverCode(String.format("S%03d", v.getDriverIdx()));
        }

        return list;
    }
    
    // 우빈 : 그래프 영어 -> 한글 매핑
    private static final Map<String, String> eventTypeMapping = Map.of(
        "ASSAULT", "운전자 폭행",
        "DROWSY",  "졸음 운전",
        "PHONE",   "휴대폰 조작",
        "HAND",    "운전대 미제어"
    );
    // 우빈 : 그패프 기간별 버튼 비통기 통신 구현
    public List<MakeGraph> selectEventTypeCountByPeriod(String period) {

        List<MakeGraph> list;

        switch (period) {
            case "year"  -> list = mapper.selectEventTypeCountYear();
            case "month" -> list = mapper.selectEventTypeCountMonth();
            case "week"  -> list = mapper.selectEventTypeCountWeek();
            default      -> list = mapper.selectEventTypeCountYear();
        }

        // 1. DB결과 → Map 변환 (event_type → cnt)
        Map<String, Integer> resultMap = new HashMap<>();
        for (MakeGraph e : list) {
            resultMap.put(e.getEventType(), e.getCnt());
        }

        // 2. 4유형 고정 순서로 매핑, 없는 건 0 보정
        List<MakeGraph> fixedList = new ArrayList<>();
        for (String key : eventTypeMapping.keySet()) {
            MakeGraph g = new MakeGraph();
            g.setEventType(eventTypeMapping.get(key)); // 한글 변환
            g.setCnt(resultMap.getOrDefault(key, 0));  // 값 없으면 0
            fixedList.add(g);
        }

        return fixedList;
    }
}
