package com.smhrd.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.smhrd.web.entity.Driver;
import com.smhrd.web.service.MapService;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class Controller우빈{
	
	private final MapService service;

}
