package com.smhrd.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PostMapping;

import com.smhrd.web.entity.Driver우빈;
import com.smhrd.web.mapper.RegisterMapper우빈;

@Service
public class RegisterService우빈 {
	
    @Autowired
    private RegisterMapper우빈 mapper;
    public void 회원가입확인메서드(Driver우빈 driver) {
    	// 아이디 중복 확인 로직 등 작성
    	mapper.회원가입DB와연결메서드(driver);
    }
    
    @PostMapping("DriverIdDuplicate")
    public void drvierIdDuplicate() {
    	
    	return;
    }
}
