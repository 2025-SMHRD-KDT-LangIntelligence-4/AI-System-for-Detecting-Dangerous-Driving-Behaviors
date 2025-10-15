package com.smhrd.web.service;


import org.springframework.stereotype.Service;

import com.smhrd.web.mapper.MainMapper;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor

public class MainService {
	
    private final MainMapper mapper;

}
