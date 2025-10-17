package com.smhrd.web.service;


import java.util.List;

import org.springframework.stereotype.Service;

import com.smhrd.web.dto.DriverInfo;
import com.smhrd.web.dto.SelectVideo;
import com.smhrd.web.mapper.Mapper우빈;

import lombok.RequiredArgsConstructor;


@Service
@RequiredArgsConstructor
public class Service우빈 {
    private final Mapper우빈 mapper;
    
    public List<SelectVideo> selectVideoList() {
    	return mapper.selectVideoList();
    	}
}
