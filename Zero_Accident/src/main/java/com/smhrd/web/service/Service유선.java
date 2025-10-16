package com.smhrd.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smhrd.web.dto.SelectLog;
import com.smhrd.web.entity.ExampleEntity;
import com.smhrd.web.mapper.Mapper우빈;
import com.smhrd.web.mapper.Mapper유선;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class Service유선 {

    private final Mapper유선 mapper유선;

    
    public int countDriverIdx() {
        return mapper유선.countDriverIdx();
    }
    
    public List<SelectLog> selectLogList() {
    		return mapper유선.selectLogList();
    }
}


