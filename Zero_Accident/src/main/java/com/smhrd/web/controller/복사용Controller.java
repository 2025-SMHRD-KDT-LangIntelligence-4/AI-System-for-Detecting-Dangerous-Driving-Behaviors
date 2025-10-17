package com.smhrd.web.controller;


import org.springframework.stereotype.Controller;

import com.smhrd.web.service.복사용Service;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor

public class 복사용Controller{
	private final 복사용Service service;
	
}