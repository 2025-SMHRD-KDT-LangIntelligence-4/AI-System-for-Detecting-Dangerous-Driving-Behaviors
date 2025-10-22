package com.smhrd.web.service;


import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import com.smhrd.web.dto.DriverInfo;
import com.smhrd.web.dto.DriverWaiting;
import com.smhrd.web.dto.MakeGraph;
import com.smhrd.web.dto.MakeGraph2_4;
import com.smhrd.web.dto.SelectEvent;
import com.smhrd.web.dto.SelectLog;
import com.smhrd.web.dto.SelectVideo;
import com.smhrd.web.mapper.MainMapper;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class MainService {
	
    private final MainMapper mapper;
    
    public List<DriverInfo> SelectAllDrivers() {
		// 우빈 : 2_1페이지 
    	// 포매팅 -> DB에서 가져온 정보를 보여줄 방식을 설정
    	List<DriverInfo> driverList = mapper.SelectAllDrivers();
	    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy년MM월dd일");
	    for (DriverInfo j : driverList) {
	    	// createdAt yyyy-mm-dd 형식을 yyyy년mm월dd일로 바꾸기 + localdatetime -> localdate
	        if (j.getCreatedAt() != null) {
	        	j.setFmtCreatedAt(j.getCreatedAt().toLocalDate().format(formatter));
	        }
	        // brithDate yyyy-mm-dd 형식을 yyyy년mm월dd일로 바꾸기
	        if (j.getDriverBirthdate() != null) {
	        	j.setFmtDriverBirthdate(j.getDriverBirthdate().format(formatter));
	        }
	        // 성별 M, F를 남, 여로 바꾸기
        	switch (j.getDriverGender()) {
        	case "M" -> j.setDriverGender("남");
        	case "F"  -> j.setDriverGender("여");
        	}
	        // driver_idx → "S001" 형식으로 
	        // "S%03d"뜻 : S로 시작해서 3자리 미만을 3자리로 하고 빈칸에 0을 채워라.
	        	j.setDriverCode(String.format("S%03d", j.getDriverIdx()));
	    }
    	return driverList;
    }
    // 우빈 : 2_1 페이지
    public int SelectDriverCount() {
    	return mapper.SelectDriverCount();
    }
    
    // 우빈 : 2_2 페이지
	public List<DriverWaiting> SelectWaitingDrivers() {
		List<DriverWaiting> driverList = mapper.SelectWaitingDrivers();
	    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy년MM월dd일");
		for (DriverWaiting j : driverList) {
	    	// createdAt yyyy-mm-dd 형식을 yyyy년mm월dd일로 바꾸기 + localdatetime -> localdate
	        if (j.getCreatedAt() != null) {
	        	j.setFmtCreatedAt(j.getCreatedAt().toLocalDate().format(formatter));
	        }
	        // brithDate yyyy-mm-dd 형식을 yyyy년mm월dd일로 바꾸기
	        if (j.getDriverBirthdate() != null) {
	        	j.setFmtDriverBirthdate(j.getDriverBirthdate().format(formatter));
	        }
	        // 성별 M, F를 남, 여로 바꾸기
        	switch (j.getDriverGender()) {
        	case "M" -> j.setDriverGender("남");
        	case "F"  -> j.setDriverGender("여");
        	}
		}
		return driverList;
	}
	
	// 우빈 : 2_2 페이지
	public int SelectWaitingDriverCount() {
		return mapper.SelectWaitingDriverCount();
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

        for (SelectVideo v : list) {
        	// 이벤트타입 영어 -> 한글 변환
        	switch (v.getEventType()) {
        	case "ASSAULT" -> v.setEventType("운전자 폭행");
        	case "DROWSY"  -> v.setEventType("졸음 운전");
        	case "PHONE"   -> v.setEventType("휴대폰 조작");
        	case "HAND"    -> v.setEventType("운전대 미제어");
        	}
        	// 동그라미 아이콘 색상 변경, 이벤트타입 글씨색 변경
            switch (v.getEventLevel()) {
                case "1" -> {v.setEventColor("frame-item2"); v.setEventTypeColor("div54-1");
                			 v.setEventButtonColor("div64"); v.setEventIcon("/image/Volume.svg");}
                case "2" -> {v.setEventColor("frame-child"); v.setEventTypeColor("div61");
                			 v.setEventButtonColor("div64"); v.setEventIcon("/image/Volume.svg");}
                case "3" -> {v.setEventColor("frame-item"); v.setEventTypeColor("div54");
                			 v.setEventButtonColor("div57"); v.setEventIcon("/image/Danger.svg");}
            }
            // driverIdx : '1' -> 'S001' 식으로 변경
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
    
    // 우빈 : 관리자 마이페이지 정보 조회
	public List<DriverInfo> selectDriverByAdminIdx(int adminIdx) {
		List<DriverInfo> list = mapper.selectDriverByAdminIdx(adminIdx);

        for (DriverInfo d : list) {
            // 우빈 : driver_idx → S001 형식으로
            d.setDriverCode(String.format("S%03d", d.getDriverIdx()));
            // 우빈 : 차량 타입 한글 매핑
            if (d.getCarType() != null) {
                switch (d.getCarType()) {
                    case "BUS":
                        d.setCarType("버스");
                        break;
                    case "TAXI":
                        d.setCarType("택시");
                        break;
                    case "TRUCK":
                        d.setCarType("트럭");
                        break;
                    case "PRIVATE":
                        d.setCarType("개인");
                        break;
                    default:
                        d.setCarType("기타");
                        break;
                }
            }
        }
        return list;
	}
	
	// 우빈 : 메인페이지 검색창 (이름, 차량번호, 차량타입, 운전자코드)
	public List<DriverInfo> selectSearchList(String q) {
	    // 1️⃣ 검색어 전처리 (null 방지 + 앞뒤 공백 제거)
	    String keyword = (q != null) ? q.trim() : "";
	    // === 추가: 검색어 길이 제한 50 (DB 부하 방지) ===
	    if (keyword.length() > 50) {
	        keyword = keyword.substring(0, 50);
	    }
	    // === 추가 : 아무것도 입력 안 하면 바로 빈 리스트 반환 (전체목록 방지)
	    if (keyword.isEmpty()) {
	        return new ArrayList<>(); // 빈 배열 반환 → 화면에 아무것도 안 뜸
	    }
	    // 2️⃣ 한글 → 영어 차량 타입 매핑
	    Map<String, String> typeMap = Map.of(
	        "택시", "TAXI",
	        "버스", "BUS",
	        "트럭", "TRUCK",
	        "개인", "PRIVATE"
	    );
	    // 3️⃣ 차량 타입 한글 검색 시 → 영어 코드로 자동 변환
	    for (Map.Entry<String, String> e : typeMap.entrySet()) {
	        // === 추가: e.getKey()가 비어있으면 substring 호출하지 않도록 방어 ===
	        String key = e.getKey();
	        if (key == null || key.isEmpty()) {
	            continue;
	        }
	        // 기존 로직: 부분 일치(첫글자 포함 또는 전체 포함) 검사
	        if (keyword.contains(key.substring(0, 1)) || keyword.contains(key)) {
	            keyword = e.getValue();
	            break;
	        }
	    }
	    // 4️⃣ driverCode 검색 처리 (예: "S001" → "1")
	    if (keyword.length() > 1 && keyword.toUpperCase().startsWith("S")) {
	        try {
	            int idx = Integer.parseInt(keyword.substring(1).replaceAll("[^0-9]", ""));
	            keyword = String.valueOf(idx);
	        } catch (NumberFormatException ex) {
	            // 숫자 변환 실패 시 원래 검색어 유지 (안정성 확보)
	            System.out.println("⚠️ driverCode 변환 실패: " + keyword);
	        }
	    }
	    // 5️⃣ 변환된 keyword로 DB 조회
	    List<DriverInfo> list = mapper.selectSearchList(keyword);
	    // 6️⃣ 조회 결과 후처리
	    for (DriverInfo d : list) {
	        // 6-1️⃣ driver_idx → S001 형식 코드화
	        d.setDriverCode(String.format("S%03d", d.getDriverIdx()));
	        // 6-2️⃣ 영어 차량 타입을 한글로 변환
	        if (d.getCarType() != null) {
	            switch (d.getCarType()) {
	                case "BUS":
	                    d.setCarType("버스");
	                    break;
	                case "TAXI":
	                    d.setCarType("택시");
	                    break;
	                case "TRUCK":
	                    d.setCarType("트럭");
	                    break;
	                case "PRIVATE":
	                    d.setCarType("개인");
	                    break;
	                case "SEDAN":
	                    d.setCarType("승용");
	                    break;
	                default:
	                    d.setCarType("기타");
	                    break;
	            }
	        }
	    }
	    // 7️⃣ 최종 리스트 반환
	    return list;
	}
	
	// 우빈 : ButtonAdmin2_4 통계
    public List<MakeGraph2_4> selectMonthlyByEventType(int months) {
    	List<MakeGraph2_4> list = mapper.selectMonthlyByEventType(months);
        for (MakeGraph2_4 v : list) {
        	// 이벤트타입 영어 -> 한글 변환
        	switch (v.getEventType()) {
        	case "ASSAULT" -> v.setEventType("운전자 폭행");
        	case "DROWSY"  -> v.setEventType("졸음 운전");
        	case "PHONE"   -> v.setEventType("휴대폰 조작");
        	case "HAND"    -> v.setEventType("운전대 미제어");
        	}
        }
        return list;
    }
    
    // 유선 : 블랙박스 페이지 실시간 통계
	public SelectEvent selectEventchart() {
		SelectEvent result = mapper.selectEventchart();
		return result;
	}
	
	// 유선: 블랙박스 페이지 실시간 모니터링
	public List<SelectLog> selectBlackbox() {
			return mapper.selectBlackbox();
	}
    
    
    
    
}
