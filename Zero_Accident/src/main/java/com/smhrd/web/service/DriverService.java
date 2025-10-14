package com.smhrd.web.service;

import java.util.List;
import org.springframework.stereotype.Service;
import lombok.RequiredArgsConstructor;
import com.smhrd.web.entity.Driver;
import com.smhrd.web.mapper.DriverMapper;

@Service
@RequiredArgsConstructor
public class DriverService {

    private final DriverMapper mapper;

    public List<Driver> getAllWithCoords() {
        return mapper.findAllWithCoords();
    }

    public Driver getOne(int driverIdx) {
        return mapper.findByIdx(driverIdx);
    }
}
