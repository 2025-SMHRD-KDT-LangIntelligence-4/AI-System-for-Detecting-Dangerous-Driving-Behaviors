package com.smhrd.web.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.web.bind.annotation.RequestParam;

import com.smhrd.web.entity.Admin;
import com.smhrd.web.entity.Driver;

@Mapper
public interface LoginMapper {
    Admin findByAdminId(String adminId);
    
    Driver findByDriverId(String driverId);
}

