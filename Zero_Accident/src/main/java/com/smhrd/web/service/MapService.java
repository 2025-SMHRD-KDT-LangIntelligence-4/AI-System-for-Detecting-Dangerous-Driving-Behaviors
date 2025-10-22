package com.smhrd.web.service;

import java.util.List;
import org.springframework.stereotype.Service;
import lombok.RequiredArgsConstructor;

import com.smhrd.web.dto.DriverInfo;
import com.smhrd.web.mapper.MapMapper;

@Service
@RequiredArgsConstructor
public class MapService {

    private final MapMapper mapper;

    public List<DriverInfo> getAllWithCoords() {
        return mapper.findAllWithCoords();
    }
}
