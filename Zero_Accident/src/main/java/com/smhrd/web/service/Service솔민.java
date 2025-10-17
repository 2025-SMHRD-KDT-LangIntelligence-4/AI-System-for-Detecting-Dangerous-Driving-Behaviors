package com.smhrd.web.service;

import com.smhrd.web.mapper.Mapper솔민;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class Service솔민 {

    @Autowired
    private Mapper솔민 mapper솔민;

    public Map<String, Integer> getLogCount(String type, LocalDate targetDate) {
        List<Map<String, Object>> rawData;
        Map<String, Integer> result = new HashMap<>();

        // 초기값 0으로 세팅
        result.put("ASSAULT", 0);
        result.put("DROWSY", 0);
        result.put("HAND", 0);
        result.put("PHONE", 0);

        switch (type.toLowerCase()) {
            case "yearly":
                rawData = mapper솔민.getYearlyCount(targetDate.getYear());
                break;
            case "monthly":
                rawData = mapper솔민.getMonthlyCount(targetDate.getYear(), targetDate.getMonthValue());
                break;
            case "weekly":
                rawData = mapper솔민.getWeeklyCount(targetDate.toString());
                break;
            default:
                rawData = mapper솔민.getDailyCount(targetDate.toString());
        }

        for (Map<String, Object> row : rawData) {
            String eventType = (String) row.get("event_type");
            Integer count = ((Long) row.get("count")).intValue(); // MyBatis가 Long으로 가져올 수 있음
            result.put(eventType, count);
        }

        return result;
    }
}
