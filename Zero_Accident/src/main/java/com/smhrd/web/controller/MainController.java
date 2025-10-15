package com.smhrd.web.controller;

import java.time.format.DateTimeFormatter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.smhrd.web.entity.Driver;
import com.smhrd.web.entity.Join1;
import com.smhrd.web.mapper.MainMapper;
import com.smhrd.web.service.LogService;
import com.smhrd.web.service.MainService;
import com.smhrd.web.service.MapService;
import com.smhrd.web.service.Service유선;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor

public class MainController{
	
	private final MainService service;
	private final LogService logService;
	private final MapService mapService;
	private final Service유선 registerservice유선;
	
	// private final MainService service; 아직 메인서비스가 없음
	
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
	
    @GetMapping("/MainAdmin")
    public String MainAdmin(Model model) {
    	
        // 솔민 : tb_log의 log_idx 총 개수 조회
        int totalCount = logService.getTotalLogCount();
        model.addAttribute("totalCount", totalCount); // JSP에 전달
        
      	// 우빈 : 운전자 현재 위치 마커불러오기
        List<Driver> drivers = mapService.getAllWithCoords();
        model.addAttribute("drivers", drivers);
        
        // 유선 : 현재 운행 차량 조회
        long count = registerservice유선.getruncarCount();
        model.addAttribute("count", count);
    	
        return "MainAdmin";
    }
	
	// 운전자 메인 화면
		@GetMapping("/MainDriver")
		public String MainDriver() {
			return "MainDriver";
		}
	// 관리자 - 운전자 관리 페이지 기본틀
		@GetMapping("ButtonAdmin2_0")
		public String ButtonAdmin2_0(Model model) {
			List<Join1> driverList = service.SelectAllDrivers();
			int driverCount = service.SelectDriverCount();
			
			// 우빈 : 포매팅 -> DB에서 가져온 정보를 보여줄 방식을 설정
		    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy년MM월dd일");
		    for (Join1 j : driverList) {
		    	// 날짜 yyyy-mm-dd 형식을 yyyy년mm월dd일로 바꾸기 + localdatetime -> localdate
		        if (j.getCreatedAt() != null) {
		        	j.setFmtCreatedAt(j.getCreatedAt().toLocalDate().format(formatter));
		        }
		     // 날짜 yyyy-mm-dd 형식을 yyyy년mm월dd일로 바꾸기
		        if (j.getDriverBirthdate() != null) {
		        	j.setFmtDriverBirthdate(j.getDriverBirthdate().format(formatter));
		        }
		        // driver_idx → "S001" 형식으로 
		        // "S%03d"뜻 : S로 시작해서 3자리 미만을 3자리로 하고 빈칸에 0을 채워라.
		        	j.setDriverCode(String.format("S%03d", j.getDriverIdx()));
		    }
		    
		    // 모델에 driverList라는 이름으로 담아서 뷰페이지로 보내기
			model.addAttribute("driverList", driverList); 
			model.addAttribute("driverCount", driverCount);
			
			return "ButtonAdmin2_0";
		}
		
	// 관리자 - 운전자 관리 페이지 (디폴트)
		@GetMapping("/ButtonAdmin2_1")
		public String ButtonAdmin2_1() {
			return "ButtonAdmin2_1";
		}
		
	// 관리자 - 운전자 등록 페이지
		@GetMapping("/ButtonAdmin2_2")
		public String ButtonAdmin2_2() {
			return "ButtonAdmin2_2";
		}
		
	// 관리자 - 메시지 보내기 페이지
		@GetMapping("/ButtonAdmin2_3")
		public String ButtonAdmin2_3() {
			return "ButtonAdmin2_3";
		}
	// 관리자 - 통계 페이지
		@GetMapping("/ButtonAdmin2_4")
		public String ButtonAdmin2_4() {
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
		public String ButtonAdmin5() {
			return "ButtonAdmin5";
			}	
}
