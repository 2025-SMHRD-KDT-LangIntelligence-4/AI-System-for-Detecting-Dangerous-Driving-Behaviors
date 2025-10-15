package com.smhrd.web.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface Mapper솔민 {

	@Select("SELECT COUNT(*) FROM tb_log WHERE event_type = #{eventType} AND DATE(created_at) BETWEEN #{startDate} AND #{endDate}")
	int countByEventAndDate(@Param("eventType") String eventType,
	                        @Param("startDate") String startDate,
	                        @Param("endDate") String endDate);
}
