package com.smhrd.web.service;


import java.util.List;

import org.springframework.stereotype.Service;

import com.smhrd.web.entity.Join1;
import com.smhrd.web.mapper.Mapper우빈;

import lombok.RequiredArgsConstructor;


@Service
@RequiredArgsConstructor
public class Service우빈 {
	
    private final Mapper우빈 mapper;
    
    public List<Join1> SelectAllDrivers() {
    	return mapper.SelectAllDrivers();
    }
    
    public int SelectDriverCount() {
    	return mapper.SelectDriverCount();
    }
}
