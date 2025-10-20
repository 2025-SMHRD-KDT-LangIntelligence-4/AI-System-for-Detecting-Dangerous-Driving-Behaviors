package com.smhrd.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smhrd.web.dto.SelectEvent;
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
    
    	public SelectEvent selectEventchart() {
    		SelectEvent result = mapper유선.selectEventchart();
    		return result;
    }
    	
        public List<SelectLog> selectBlackbox() {
    		return mapper유선.selectBlackbox();
    }
    
}


