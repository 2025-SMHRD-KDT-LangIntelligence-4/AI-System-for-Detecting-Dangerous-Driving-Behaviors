package com.smhrd.web.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.smhrd.web.entity.Log;

@Mapper
public interface LogMapper {

    // tb_log 테이블에서 log_idx의 총 개수 세기
    @Select("SELECT COUNT(log_idx) FROM tb_log")
    int countLogIdx();
}
