package com.smhrd.web.controller;


import java.time.format.DateTimeFormatter;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.smhrd.web.dto.DriverDetail;
import com.smhrd.web.dto.DriverInfo;
import com.smhrd.web.dto.SelectLog;
import com.smhrd.web.dto.SelectVideo;
import com.smhrd.web.service.MainService2;

import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor

public class MainController2{
	private final MainService2 service;
	
// 우빈 : 운전자 메인페이지
@GetMapping("/MainDriver")
public String MainDriver(HttpSession session, RedirectAttributes ra, Model model) {
	// 세션에서 로그인 정보 가져오기
    DriverInfo loginDriver = (DriverInfo) session.getAttribute("loginDriver");
    
    // 로그인 안 된 경우 로그인 페이지로 돌려보내기
    if (loginDriver == null) {
        ra.addFlashAttribute("alertMsg", "로그아웃 세션이 만료되었습니다."); // 1회성 메시지
    	return "redirect:/LoginDriver";
    }
    
    // 우빈 : 운전자 정보 가져오기
    service.formatDriverInfo(loginDriver);
    int driverIdx = ((DriverInfo) session.getAttribute("loginDriver")).getDriverIdx();

    // 우빈 : driverIdx로 운전자별전체 사건 수 조회
	int totalCount = service.selectTotalLogCount(driverIdx);
	
	// 우빈 : driverIdx로 운전자별 로그리스트 조회
	List<SelectVideo> logList = service.selectLogListByDriverIdx(driverIdx);
	
	// 우빈 : 정보들 모델에 담기
    model.addAttribute("loginDriver", loginDriver);
    model.addAttribute("totalCount", totalCount);
    model.addAttribute("logList", logList);
    
	return "/MainDriver";
}
	
// 우희 : 운전자 위험운전상세페이지
   @GetMapping("/MainDriver2")
   public String MainDriver2(Model model, HttpSession session, RedirectAttributes ra) {
     // 유선 : 운전자 위험 운전 이력
     // 유선 : 로그인 할 때, 입력받은 정보가 세션에 DriverInfo형태로 들어있다. 그걸 불러옴
   	 DriverInfo loginDriver = (DriverInfo) session.getAttribute("loginDriver");
   	 
     // 로그인 안 된 경우 로그인 페이지로 돌려보내기
     if (loginDriver == null) {
         ra.addFlashAttribute("alertMsg", "로그아웃 세션이 만료되었습니다."); // 1회성 메시지
     	return "redirect:/LoginDriver";
     }
   	 
   	 // 유선 : DriverInfo 형태로 들어있는 것 중에서 int driverIdx만 꺼내겠다
   	 int driverIdx = loginDriver.getDriverIdx();
   	
     List<DriverDetail> driverLog = service.driverLogList(driverIdx);
     
      // 유선 : 이벤트 레벨에 따라 문자열을 바꾼다. 
      // 포매팅 (색깔에 관한 문자열 frame-item :빨강, frame-child :노랑 frame-item2 : 파랑
      for (DriverDetail d_log : driverLog) {
            if ("1".equals(d_log.getEventLevel())){
               d_log.setEventColor("circle-blue");
            }if ("2".equals(d_log.getEventLevel())){
               d_log.setEventColor("circle-yellow");
            }if ("3".equals(d_log.getEventLevel())){
               d_log.setEventColor("circle-red");
         }
      }
      // 유선 : 영어 -> 한글로 바꾸기
      // (PHONE -> 휴대폰 조작, HAND -> 핸들미제어, DROWSY -> 졸음운전, ASSAULT -> 운전자폭행
      for (DriverDetail d_log : driverLog) {
         if ("PHONE".equals(d_log.getEventType())){
            d_log.setEventTypeKo("휴대폰 조작");
         }if ("HAND".equals(d_log.getEventType())){
            d_log.setEventTypeKo("핸들 미제어");
         }if ("DROWSY".equals(d_log.getEventType())){
            d_log.setEventTypeKo("졸음 운전");
         }if ("ASSAULT".equals(d_log.getEventType())){
            d_log.setEventTypeKo("운전자 폭행");
         }
      }
         
      // 유선 : 로그 기록 시간 보기 쉽게 바꾸기 2025-10-29
      // ofPattern에 내가 바꾸고 싶은 형식 지정 (YYYY-MM-DD 등) 대소문자 차이 주의
      DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
         for (DriverDetail j : driverLog) {
                j.setRegDate(j.getCreatedAt().format(formatter));
         }
     // 우빈 : driverIdx로 운전자별전체 사건 수 조회
 	 int totalCount = service.selectTotalLogCount(driverIdx);
 	 
         model.addAttribute("driverLog", driverLog);
         model.addAttribute("totalCount", totalCount);
         
         return "MainDriver2";
  }
	
// 우희 : 운전자 위험운전상세페이지
@PostMapping("/MainDriver2_1")
public String MainDriver2_1(@RequestParam("logIdx") int logIdx, Model model, HttpSession session, RedirectAttributes ra) {
	
  	 DriverInfo loginDriver = (DriverInfo) session.getAttribute("loginDriver");
   	 
    // 로그인 안 된 경우 로그인 페이지로 돌려보내기
    if (loginDriver == null) {
        ra.addFlashAttribute("alertMsg", "로그아웃 세션이 만료되었습니다."); // 1회성 메시지
    	return "redirect:/LoginDriver";
    }

  	String adminName = loginDriver.getAdminName();
  	
    // logIdx 값이 비었을 경우
    if (logIdx == 0) {
        ra.addFlashAttribute("alertMsg", "logIdx 값이 비어 있습니다!");
        return "redirect:/MainDriver";
    }
    System.out.println("📢 logIdx = " + logIdx);
    
    
	List<SelectVideo> videoList = service.selectLogDetailByLogIdx(logIdx);
	
//	System.out.println("📦 videoList size = " + videoList.size());
//	if (!videoList.isEmpty()) {
//	    System.out.println("🎬 첫번째 eventType = " + videoList.get(0).getEventType());
//	}
	
	model.addAttribute("videoList", videoList);
	model.addAttribute("adminName", adminName);
	
	return "MainDriver2_1";
}
	
}

