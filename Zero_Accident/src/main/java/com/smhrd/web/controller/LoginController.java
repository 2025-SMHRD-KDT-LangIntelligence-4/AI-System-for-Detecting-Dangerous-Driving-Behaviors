package com.smhrd.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.smhrd.web.mapper.LoginMapper;
import com.smhrd.web.service.LoginService;
import com.smhrd.web.service.RegisterService;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class LoginController{
	
	private final LoginService service;
	
	public void maind() {
		
	}
	
}
