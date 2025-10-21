package com.smhrd.web.controller;

import java.time.format.DateTimeFormatter;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.smhrd.web.dto.DriverInfo;
import com.smhrd.web.dto.MakeGraph;
import com.smhrd.web.dto.MakeGraph2_4;
import com.smhrd.web.dto.SelectLog;
import com.smhrd.web.dto.SelectVideo;
import com.smhrd.web.entity.Admin;
import com.smhrd.web.entity.Driver;
import com.smhrd.web.service.LogService;
import com.smhrd.web.service.MainService;
import com.smhrd.web.service.MapService;

import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor

public class MainController{
	
	private final MainService service;
	private final LogService logService;
	private final MapService mapService;

	
	
	// 가장 첫 화면 : 관리자 or 운전자 선택
	@GetMapping("/") 
	public String StartPage() {
		return "StartPage";
	}
		
	// 관리자 로그인 화면
	@GetMapping("/LoginAdmin") // 주소창에 뭘 적으면 갈까요?
	public String LoginAdmin() { // 내가 지을 메서드 별명
		return "LoginAdmin"; // 화면에 띄워줄 view.jsp 이름
	}
	
	// 운전자 로그인 화면
	@GetMapping("/LoginDriver")
	public String LoginDriver() {
		return "LoginDriver";
	}
	
	// 관리자 회원가입 화면
	@GetMapping("/RegisterAdmin")
	public String RegisterAdmin() {
		return "RegisterAdmin";
	}
	
	// 운전자 회원가입 화면
	@GetMapping("/RegisterDriver")
	public String RegisterDriver() {
		return "RegisterDriver";
	}
	
	// 우빈 : 검색문구 AJAX 방식으로 받기
	@ResponseBody
    @GetMapping("/api/search/drivers")
	// 우빈 : 메인페이지 검색창
	public List<DriverInfo> selectSearchList (@RequestParam("q") String q) {
		//System.out.println("검색어: " + q); // 콘솔 확인용
		List<DriverInfo> searchList = service.selectSearchList(q);
        return searchList;
	}
	
    @GetMapping("/MainAdmin")
    public String MainAdmin(Model model) {
	    // 솔민 : tb_log의 log_idx 총 개수 조회
	    int totalCount = logService.getTotalLogCount();
	    model.addAttribute("totalCount", totalCount); // JSP에 전달
	    
	  	// 우빈 : 운전자 현재 위치 마커불러오기
	    List<Driver> drivers = mapService.getAllWithCoords();
	    model.addAttribute("drivers", drivers);
	    
        // 우빈 : 블랙박스 4개 영상 위험도 순으로 가져오기
        List<SelectVideo> videoList = service.selectVideoList();
        model.addAttribute("videoList", videoList);
        
        // 우빈 : 통계 그래프 (기본 year)
        List<MakeGraph> eventList = service.selectEventTypeCountByPeriod("year");
        model.addAttribute("eventList", eventList);
	    
	    // 유선 : 현재 운행 차량 조회
	    long count = service.countDriverIdx();
	    model.addAttribute("count", count);
	    
	    // 유선 : 로그(위험등급색깔, 로그기록시간, 차번호, 위험운전타입)
		 List<SelectLog> logList = service.selectLogList();
		 // 유선 : 이벤트레벨에 따라 문자열을 바꾼다. 
		 // 포매팅 (색깔에 관한문자열 frame-item :빨강, frame-child :주황
		 for (SelectLog log : logList) {
				 if ("1".equals(log.getEventLevel())){
					 log.setEventColor("frame-item2");
				 }if ("2".equals(log.getEventLevel())){
					 log.setEventColor("frame-child");
				 }if ("3".equals(log.getEventLevel())){
				 log.setEventColor("frame-item");
			 }
		 }
		 // 유선 : 영어 -> 한글로 바꾸기
		 // (PHONE -> 휴대폰 조작, HAND -> 핸들미제어, DROWSY -> 졸음운전, ASSAULT -> 운전자폭행
		 for (SelectLog log : logList) {
			 if ("PHONE".equals(log.getEventType())){
				 log.setEventTypeKo("휴대폰 조작");
			 }if ("HAND".equals(log.getEventType())){
				  log.setEventTypeKo("핸들 미제어");
			 }if ("DROWSY".equals(log.getEventType())){
				  log.setEventTypeKo("졸음 운전");
			 }if ("ASSAULT".equals(log.getEventType())){
				  log.setEventTypeKo("운전자 폭행");
			 }
		 }
			 
		 // 유선 : 로그 기록 시간 보기 쉽게 바꾸기 [13:44:08]
		 // ofPattern에 내가 바꾸고 싶은 형식 지정 (hh:mm:ss 등)
		 DateTimeFormatter formatter = DateTimeFormatter.ofPattern("hh:mm:ss");
		    for (SelectLog j : logList) {
		        	j.setRegDate(j.getCreatedAt().format(formatter));
		    }
		    
		    model.addAttribute("logList", logList);
			return "/MainAdmin";
    }
    
    // 우빈 : 비동기 통신(AJAX) 요청 처리 (통계 버튼)
    @GetMapping("/api/stats")
    @ResponseBody
    public List<MakeGraph> getStats(@RequestParam String period) {
        return service.selectEventTypeCountByPeriod(period);
    }
	
	// 운전자 메인 화면
	@GetMapping("/MainDriver")
	public String MainDriver() {
		return "MainDriver";
	}
	// 관리자 - 운전자 관리 페이지 기본틀
	@GetMapping("ButtonAdmin2_0")
	public String ButtonAdmin2_0() {
		return "ButtonAdmin2_0";
		}
		
	// 우빈 : 관리자 - 운전자 관리 페이지 (디폴트)
	@GetMapping("/ButtonAdmin2_1")
	public String ButtonAdmin2_1(Model model) {
		// 운전자 리스트 조회
		List<DriverInfo> driverList = service.SelectAllDrivers();
		// 운전자 전체 수 조회
		int driverCount = service.SelectDriverCount();
		    
	    // 모델에 driverList라는 이름으로 담아서 뷰페이지로 보내기
		model.addAttribute("driverList", driverList);
		model.addAttribute("driverCount", driverCount);
		
		return "ButtonAdmin2_1";
	}
		
	// 우빈 : 관리자 - 운전자 등록 페이지
	@GetMapping("/ButtonAdmin2_2")
	public String ButtonAdmin2_2() {
		return "ButtonAdmin2_2";
	}
		
	// 우빈 : 관리자 - 메시지 보내기 페이지
	@GetMapping("/ButtonAdmin2_3")
	public String ButtonAdmin2_3(Model model) {
		// 운전자 리스트 조회
		List<DriverInfo> driverList = service.SelectAllDrivers();
		// 운전자 전체 수 조회
		int driverCount = service.SelectDriverCount();
		model.addAttribute("driverList", driverList);
		model.addAttribute("driverCount", driverCount);
		return "ButtonAdmin2_3";
	}
	// 우빈 : 관리자 - 통계 페이지
	@GetMapping("/ButtonAdmin2_4")
    public String ButtonAdmin2_4(Model model) {
        List<MakeGraph2_4> graphValue = service.selectMonthlyByEventType(12);
        model.addAttribute("graphValue", graphValue);
		return "ButtonAdmin2_4";
	}
		
	// 관리자 - 전체 로그 조회 페이지
		@GetMapping("/ButtonAdmin3")
		public String ButtonAdmin3() {
			return "ButtonAdmin3";
		}
				
	// 관리자 - 실시간 블랙박스 모니터링 페이지
		@GetMapping("/ButtonAdmin4")
		public String ButtonAdmin4() {
			return "ButtonAdmin4";
			}
		
	// 관리자 정보 관리 페이지
		@GetMapping("/ButtonAdmin5")
		public String ButtonAdmin5(Model model, HttpSession session, RedirectAttributes ra) {
	    	Admin loginAdmin = (Admin) session.getAttribute("loginAdmin");
	    	if (loginAdmin == null) {
	            // 우빈 : 로그인 세션 만료 시 1회성 메시지 전달
	            ra.addFlashAttribute("alertMsg", "로그인 세션이 만료되었습니다.");
	            return "redirect:/";
	        }
	    	int adminIdx = loginAdmin.getAdminIdx();
	    	List<DriverInfo> driverList = service.selectDriverByAdminIdx(adminIdx);
	    	model.addAttribute("driverList", driverList);
			return "ButtonAdmin5";
			}
}
