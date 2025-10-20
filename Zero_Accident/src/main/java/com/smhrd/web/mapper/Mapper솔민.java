package com.smhrd.web.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.smhrd.web.dto.LogDTO;

@Mapper
public interface Mapper솔민 {

    /**
     * 2단계 JOIN 및 동적 검색 쿼리 (XML 대신 <script> 태그 사용)
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
        </where>
        
        ORDER BY 
            L.log_idx DESC
        </script>
        """)
    List<LogDTO> getLogList(@Param("searchQuery") String searchQuery);
}