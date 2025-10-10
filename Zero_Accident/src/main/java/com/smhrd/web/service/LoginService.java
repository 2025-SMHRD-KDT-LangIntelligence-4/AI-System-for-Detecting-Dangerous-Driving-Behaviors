package com.smhrd.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import com.smhrd.web.entity.Admin;
import com.smhrd.web.entity.Driver;
import com.smhrd.web.entity.ExampleEntity;
import com.smhrd.web.mapper.ExampleMapper;
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

	    // 3. 로그인 성공
	    return findAdmin;
	}
	
	public Driver login(Driver driver) {
	    // 1. 아이디 존재 여부 확인
		Driver findDriver = mapper.findByDriverId(driver.getDriverId());
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
