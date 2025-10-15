package com.smhrd.web.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import com.smhrd.web.entity.Driver;

@Mapper
public interface MapMapper {

    // 좌표가 있는 운전자 목록
    List<Driver> findAllWithCoords();

    // 단일 운전자 (필요시)
    Driver findByIdx(@Param("driverIdx") int driverIdx);
}