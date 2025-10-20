package com.smhrd.web.service;
import com.smhrd.web.dto.LogDTO;
import com.smhrd.web.mapper.Mapper솔민;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class Service솔민 {

    private final Mapper솔민 mapper솔민;

    @Autowired
    public Service솔민(Mapper솔민 mapper솔민) {
        this.mapper솔민 = mapper솔민;
    }

    /**
     * 로그 리스트를 가져와서 event_type을 한글로 변환 후 반환 (검색어 처리 포함)
     */
    public List<LogDTO> getLogList(String searchQuery) { 
        // 1. 검색어를 Mapper로 전달하여 필터링된 로그 목록을 가져옵니다.
        List<LogDTO> logList = mapper솔민.getLogList(searchQuery); 
        
        // 2. 반복문을 돌면서 event_type을 한글로 변환합니다.
        for (LogDTO log : logList) {
            String eventTypeEng = log.getEventType();
            String eventTypeKor = "";

            switch (eventTypeEng) {
                case "ASSAULT":
                    eventTypeKor = "운전자 폭행";
                    break;
                case "DROWSY":
                    eventTypeKor = "졸음 운전";
                    break;
                case "PHONE":
                    eventTypeKor = "휴대폰 조작";
                    break;
                case "HAND":
                    eventTypeKor = "운전대 미제어";
                    break;
                default:
                    eventTypeKor = eventTypeEng; // 매핑되지 않은 값은 그대로 유지
                    break;
            }
            
            // 3. 변환된 한글 값을 다시 DTO에 설정합니다.
            log.setEventType(eventTypeKor);
        }
        
        return logList;
    }
}