package com.smhrd.web.service;

import java.time.format.DateTimeFormatter;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import com.smhrd.web.dto.DriverInfo;
import com.smhrd.web.entity.Admin;
import com.smhrd.web.mapper.LoginMapper;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor

public class LoginService {
	private final LoginMapper mapper;
	
	public Admin login(Admin admin) {
	    // 1. 아이디 존재 여부 확인
	    Admin findAdmin = mapper.findByAdminId(admin.getAdminId());
	    if (findAdmin == null) {
	        // 아이디 없음
	        return null;  // 컨트롤러에서 "아이디 없음" 처리
	    }
	    // 2. 비밀번호 일치 여부 확인
	    if (!findAdmin.getAdminPwd().equals(admin.getAdminPwd())) {
	        // 비밀번호 틀림
	        // 비밀번호만 틀린 경우를 구분하기 위해 특별한 값 반환 가능
	        findAdmin.setAdminPwd(null);  
	        return findAdmin;
	    }
	    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy년MM월dd일");
	    // 3. joined_at 날짜 포매팅
	    if (findAdmin.getJoinedAt() != null) {
	        findAdmin.setFmtJoinedAt(findAdmin.getJoinedAt().toLocalDate().format(formatter));
	    }
        // 4. birthdate(LocalDate) → 날짜포매팅
        if (findAdmin.getAdminBirthdate() != null) {
            findAdmin.setFmtAdminBirthdate(findAdmin.getAdminBirthdate().format(formatter));
        }	    
	    // 5. admin_idx → A001 형식으로
            findAdmin.setAdminCode(String.format("A%03d", findAdmin.getAdminIdx()));
	    // 6. 로그인 성공
	    return findAdmin;
	}
	
	public DriverInfo login(DriverInfo driver) {
	    // 1. 아이디 존재 여부 확인
		DriverInfo findDriver = mapper.findByDriverId(driver.getDriverId());
	    if (findDriver == null) {
	        // 아이디 없음
	        return null;  // 컨트롤러에서 "아이디 없음" 처리
	    }

	    // 2. 비밀번호 일치 여부 확인
	    if (!findDriver.getDriverPwd().equals(driver.getDriverPwd())) {
	        // 비밀번호 틀림
	        // 비밀번호만 틀린 경우를 구분하기 위해 특별한 값 반환 가능
	        findDriver.setDriverPwd(null);  
	        return findDriver;
	    }
	    
	    // 3. 로그인 성공
	    return findDriver;
	}

}
