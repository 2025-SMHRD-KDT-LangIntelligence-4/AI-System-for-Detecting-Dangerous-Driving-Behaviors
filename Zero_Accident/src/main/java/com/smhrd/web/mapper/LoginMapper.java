package com.smhrd.web.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.smhrd.web.dto.DriverInfo;
import com.smhrd.web.entity.Admin;

@Mapper
public interface LoginMapper {
    Admin findByAdminId(String adminId);
    
    DriverInfo findByDriverId(String driverId);
    
    int selectTotalLogCount(int driverIdx);
}

