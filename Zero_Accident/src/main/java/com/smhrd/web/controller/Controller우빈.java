package com.smhrd.web.controller;

import java.time.format.DateTimeFormatter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.smhrd.web.entity.Join1;
import com.smhrd.web.service.Service우빈;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class Controller우빈{
	
	private final Service우빈 service;
	
	@GetMapping("ButtonAdmin2_")
	public String ButtonAdmin2_(Model model) {
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
		
		return "ButtonAdmin2_";
	}

}
