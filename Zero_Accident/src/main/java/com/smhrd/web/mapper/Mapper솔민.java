package com.smhrd.web.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.smhrd.web.dto.LogDTO;

@Mapper
public interface Mapper솔민 {

    // 1) 로그 리스트 (초기 화면)
    @Select("""
        SELECT 
            l.log_idx AS logIdx,
            DATE_FORMAT(l.created_at, '%Y-%m-%d %H:%i:%s') AS createdAt,
            l.car_number AS carNumber,
            d.driver_name AS driverName,
            l.event_type AS eventType,
            l.event_level AS eventLevel
        FROM tb_log l
        LEFT JOIN tb_car c ON l.car_number = c.car_number
        LEFT JOIN tb_driver d ON c.driver_idx = d.driver_idx
        ORDER BY l.log_idx ASC
    """)
    List<Map<String, Object>> getRecentLogs();



    // 2) 상세 조회 (div60 클릭 시 호출됨)
    @Select("""
        SELECT 
            l.log_idx AS logIdx,
            DATE_FORMAT(l.created_at, '%Y-%m-%d %H:%i:%s') AS createdAt,
            l.car_number AS carNumber,
            d.driver_name AS driverName,
            d.driver_idx AS driverIdx,
            l.event_type AS eventType,
            l.event_level AS eventLevel
        FROM tb_log l
        LEFT JOIN tb_car c ON l.car_number = c.car_number
        LEFT JOIN tb_driver d ON c.driver_idx = d.driver_idx
        WHERE l.log_idx = #{logIdx}
    """)
    LogDTO getLogDetail(@Param("logIdx") int logIdx);



    
}
