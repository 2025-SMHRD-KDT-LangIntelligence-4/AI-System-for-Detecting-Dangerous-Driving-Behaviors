package com.smhrd.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smhrd.web.entity.Log솔민;
import com.smhrd.web.mapper.LogMapper;

import lombok.RequiredArgsConstructor;

@Service
public class LogService {

    private final LogMapper logMapper;

    public LogService(LogMapper logMapper) {
        this.logMapper = logMapper;
    }

    // log_idx 총 개수 조회
    public int getTotalLogCount() {
        return logMapper.countLogIdx();
    }
}