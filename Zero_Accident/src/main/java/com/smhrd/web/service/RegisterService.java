package com.smhrd.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.stereotype.Service;

import com.smhrd.web.entity.Driver;
import com.smhrd.web.mapper.RegisterMapper;

import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class RegisterService {
	
    private final RegisterMapper mapper;
    
    public boolean isAvailableId(String driverId) {
    	return mapper.countByDriverId(driverId) == 0;
    }
    
    @Transactional
    public void registerDriver(Driver driver) {
        // (선택) 비밀번호 해시
        // BCryptPasswordEncoder enc = new BCryptPasswordEncoder();
        // driver.setDriverPwd(enc.encode(driver.getDriverPwd()));
    	
    	if (!isAvailableId(driver.getDriverId())) {
    		throw new DuplicateKeyException("이 ID는 중복입니다");
    	}
    	mapper.registerDriver(driver);
    	
    }
    
}
