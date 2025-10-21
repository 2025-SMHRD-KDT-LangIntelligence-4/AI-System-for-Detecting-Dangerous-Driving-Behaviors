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

    // 메인페이지 - 현재 운행 차량
    public int countDriverIdx() {
        return mapper유선.countDriverIdx();
    }
    
    // 메인 페이지 - 로그 불러오기
    public List<SelectLog> selectLogList() {
    		return mapper유선.selectLogList();
    }
    
    // 서브페이지 - 블랙박스 - 일간 실시간 통계
    	public SelectEvent selectEventchart() {
    		SelectEvent result = mapper유선.selectEventchart();
    		return result;
    }
    	
    	// 서브페이지 - 블랙박스 실시간
    public List<SelectLog> selectBlackbox() {
    		return mapper유선.selectBlackbox();
    }
    
}


