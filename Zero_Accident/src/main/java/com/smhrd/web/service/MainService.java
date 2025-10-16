package com.smhrd.web.service;


import java.util.List;

import org.springframework.stereotype.Service;

import com.smhrd.web.dto.DriverInfo;
import com.smhrd.web.dto.SelectLog;
import com.smhrd.web.mapper.MainMapper;
import com.smhrd.web.mapper.Mapper우빈;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class MainService {
	
    private final MainMapper mapper;
    
    public List<DriverInfo> SelectAllDrivers() {
    	return mapper.SelectAllDrivers();
    }
    
    public int SelectDriverCount() {
    	return mapper.SelectDriverCount();
    }
    
    public int countDriverIdx() {
        return mapper.countDriverIdx();
    }
    
    public List<SelectLog> selectLogList() {
    		return mapper.selectLogList();
    }
    
}
