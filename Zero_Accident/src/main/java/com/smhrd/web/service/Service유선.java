package com.smhrd.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smhrd.web.dto.DriverDetail;
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
    
    // 유선 : 운전자 상세 페이지
    public DriverDetail driverDetailLog(int logIdx) {
        return mapper유선.driverDetailLog(logIdx);
    }
    
    // 유선 : 운전자 위험 운전 이력
    public List<DriverDetail> driverDetailLogList() {
        // 목록 조회 시 페이징 처리(OFFSET, LIMIT 등) 로직이 추가될 수 있습니다.
        return mapper유선.driverDetailLogList();
    }
    

}


