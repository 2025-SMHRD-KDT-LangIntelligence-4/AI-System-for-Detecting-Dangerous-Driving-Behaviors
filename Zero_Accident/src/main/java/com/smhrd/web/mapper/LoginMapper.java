package com.smhrd.web.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.web.bind.annotation.RequestParam;

import com.smhrd.web.entity.Admin;

@Mapper
public interface LoginMapper {
    Admin findById(String adminId);
}

