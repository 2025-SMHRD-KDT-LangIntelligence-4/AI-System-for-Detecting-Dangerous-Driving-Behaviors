package com.smhrd.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mysql.cj.log.Log;
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
    


}


