package com.smhrd.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smhrd.web.entity.Driver솔민;
import com.smhrd.web.mapper.RegisterMapper솔민;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor // 생성자 자동 주입
public class RegisterService솔민 {
	
    @Autowired
    private RegisterMapper솔민 mapper;
    public void 회원가입확인메서드(Driver솔민 driver) {
    	// 아이디 중복 확인 로직 등 작성
    	mapper.회원가입DB와연결메서드(driver);
    }
}
