package com.smhrd.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.stereotype.Service;

import com.smhrd.web.entity.Admin;
import com.smhrd.web.entity.Driver;
import com.smhrd.web.mapper.RegisterMapper;

import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class RegisterService {
	
    private final RegisterMapper mapper;
    
//--------------------------------------------------------------------------------------------
    // 관리자 아이디 중복 확인
    public boolean isAvailableAdminId(String adminId) {
    	return mapper.countByAdminId(adminId) == 0;
    }
    
    // 중복이 아니면 회원가입 정보 DB에 보내기
    @Transactional
    public void registerAdmin(Admin admin) {
    	if (!isAvailableAdminId(admin.getAdminId())) {
    		throw new DuplicateKeyException("이 ID는 중복입니다");
    	}
    	mapper.registerAdmin(admin);
    }
    
    
//--------------------------------------------------------------------------------------------
    // 운전자 아이디 중복 확인
    public boolean isAvailableDriverId(String driverId) {
    	return mapper.countByDriverId(driverId) == 0;
    }
    
    // 중복이 아니면 회원가입 정보 DB에 보내기
    @Transactional
    public void registerDriver(Driver driver) {
        // (선택) 비밀번호 해시
        // BCryptPasswordEncoder enc = new BCryptPasswordEncoder();
        // driver.setDriverPwd(enc.encode(driver.getDriverPwd()));
    	
    	if (!isAvailableDriverId(driver.getDriverId())) {
    		throw new DuplicateKeyException("이 ID는 중복입니다");
    	}
    	mapper.registerDriver(driver);
    }

}
