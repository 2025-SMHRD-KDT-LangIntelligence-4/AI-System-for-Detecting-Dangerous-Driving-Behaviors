package com.smhrd.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.smhrd.web.service.복사용Service;


@Controller
public class 복사용Controller {
	
	@Autowired
	private 복사용Service service;
	
}
