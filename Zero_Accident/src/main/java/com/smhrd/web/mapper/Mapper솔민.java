package com.smhrd.web.mapper;

import com.smhrd.web.dto.LogDTO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import java.util.List;

@Mapper
public interface Mapper솔민 {

    /**
     * 2단계 JOIN, 검색, 필터링 조건 (날짜, 위험 행위 종류, 위험 등급) 통합 쿼리
     */
    @Select("""
        <script>
        SELECT 
            L.log_idx, 
            L.created_at, 
            L.car_number, 
            D.driver_name, 
            L.event_type, 
            L.event_level 
            FROM 
            tb_log L 
        JOIN 
            tb_car C ON L.car_number = C.car_number 
        JOIN 
            tb_driver D ON C.driver_idx = D.driver_idx
        
        <where>
            <if test="searchQuery != null and searchQuery != ''">
                (
                    L.car_number LIKE CONCAT('%', #{searchQuery}, '%')
                    OR 
                    D.driver_name LIKE CONCAT('%', #{searchQuery}, '%')
                )
            </if>
            
            <if test="filterDate != null and filterDate != ''">
                AND DATE(L.created_at) = #{filterDate}
            </if>
            
            <if test="filterEvent != null and filterEvent != ''">
                AND L.event_type = #{filterEvent}
            </if>
            
            <if test="filterLevel != null and filterLevel != ''">
                AND L.event_level = #{filterLevel}
            </if>
            
            </where>
        
        ORDER BY 
            L.log_idx DESC
        </script>
        """)
    List<LogDTO> getLogList(@Param("searchQuery") String searchQuery, 
                            @Param("filterDate") String filterDate, 
                            @Param("filterEvent") String filterEvent, 
                            @Param("filterLevel") String filterLevel); 
                            }