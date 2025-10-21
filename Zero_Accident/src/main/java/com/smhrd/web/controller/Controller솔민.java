package com.smhrd.web.controller;

import com.smhrd.web.dto.LogDTO;
import com.smhrd.web.service.Service솔민; // Service솔민 인터페이스 주입
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import java.util.List;

// 클래스 이름에 '솔민' 적용
@Controller
public class Controller솔민 {

    // Service솔민 인터페이스 주입
    private final Service솔민 service솔민;

    @Autowired
    public Controller솔민(Service솔민 service솔민) {
        this.service솔민 = service솔민;
    }

    /**
     * 로그 페이지 로드 및 모든 검색/필터 기능을 처리합니다.
     * JSP 파일명: ButtonAdmin3솔민.jsp (한글)
     */
    @GetMapping({"/ButtonAdmin3솔민", "/logPage"})
    public String logPage(
            Model model, 
            // 1. 검색어 파라미터
            @RequestParam(value = "searchQuery", required = false, defaultValue = "") String searchQuery,
            // 2. 날짜 필터 파라미터
            @RequestParam(value = "filterDate", required = false, defaultValue = "") String filterDate,
            // 3. 이벤트 종류 필터 파라미터
            @RequestParam(value = "filterEvent", required = false, defaultValue = "") String filterEvent,
            // 4. 위험 레벨 필터 파라미터
            @RequestParam(value = "filterLevel", required = false, defaultValue = "") String filterLevel) {
        
        System.out.println("검색어: " + searchQuery + ", 날짜: " + filterDate + 
                           ", 이벤트: " + filterEvent + ", 레벨: " + filterLevel);
        
        // 1. 4개의 파라미터를 Service로 전달하여 필터링된 로그 리스트를 받아옴
        List<LogDTO> logList;
        try {
            logList = service솔민.getLogList(searchQuery, filterDate, filterEvent, filterLevel); 
        } catch (Exception e) {
            // DB 오류 발생 시 빈 리스트 처리 (SQLSyntaxErrorException 등)
            e.printStackTrace();
            model.addAttribute("errorMessage", "데이터베이스 조회 중 오류가 발생했습니다.");
            logList = List.of();
        }
        
        // 2. 로그 리스트를 모델에 추가
        model.addAttribute("logList", logList);
        
        // 3. 필터 상태 유지를 위해 모든 파라미터를 모델에 다시 추가
        model.addAttribute("searchQuery", searchQuery); 
        model.addAttribute("filterDate", filterDate); 
        model.addAttribute("filterEvent", filterEvent);
        model.addAttribute("filterLevel", filterLevel);

        // 4. JSP 파일명 반환 (요청하신 한글명)
        return "ButtonAdmin3솔민"; 
    }
}