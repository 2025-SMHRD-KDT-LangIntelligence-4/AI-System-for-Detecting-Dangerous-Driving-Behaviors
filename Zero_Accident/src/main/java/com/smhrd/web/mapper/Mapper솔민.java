package com.smhrd.web.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import java.util.List;
import java.util.Map;

@Mapper
public interface Mapper솔민 {

    @Select("SELECT event_type, COUNT(*) as count " +
            "FROM tb_log " +
            "WHERE YEAR(created_at) = #{year} " +
            "GROUP BY event_type")
    List<Map<String, Object>> getYearlyCount(@Param("year") int year);

    @Select("SELECT event_type, COUNT(*) as count " +
            "FROM tb_log " +
            "WHERE YEAR(created_at) = #{year} AND MONTH(created_at) = #{month} " +
            "GROUP BY event_type")
    List<Map<String, Object>> getMonthlyCount(@Param("year") int year, @Param("month") int month);

    @Select("SELECT event_type, COUNT(*) as count " +
            "FROM tb_log " +
            "WHERE YEARWEEK(created_at, 1) = YEARWEEK(STR_TO_DATE(#{date}, '%Y-%m-%d'), 1) " +
            "GROUP BY event_type")
    List<Map<String, Object>> getWeeklyCount(@Param("date") String date);

    @Select("SELECT event_type, COUNT(*) as count " +
            "FROM tb_log " +
            "WHERE DATE(created_at) = #{date} " +
            "GROUP BY event_type")
    List<Map<String, Object>> getDailyCount(@Param("date") String date);
}
