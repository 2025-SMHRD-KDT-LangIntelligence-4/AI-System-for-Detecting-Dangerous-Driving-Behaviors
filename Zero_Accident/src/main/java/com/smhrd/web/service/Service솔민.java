package com.smhrd.web.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.smhrd.web.mapper.Mapper솔민;
import com.smhrd.web.dto.LogDTO;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class Service솔민 {

    private final Mapper솔민 mapper;

    public List<Map<String, Object>> getRecentLogs() {
        return mapper.getRecentLogs();
    }

    public LogDTO getLogDetail(int logIdx) {
        return mapper.getLogDetail(logIdx);
    }
    
}
