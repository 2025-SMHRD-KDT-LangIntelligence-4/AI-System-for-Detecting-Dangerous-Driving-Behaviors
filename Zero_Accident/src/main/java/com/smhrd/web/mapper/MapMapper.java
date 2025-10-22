package com.smhrd.web.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;

import com.smhrd.web.dto.DriverInfo;

@Mapper
public interface MapMapper {

    // 좌표가 있는 운전자 목록
    List<DriverInfo> findAllWithCoords();
}