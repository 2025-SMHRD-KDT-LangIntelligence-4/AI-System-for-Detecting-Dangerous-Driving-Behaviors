package com.smhrd.web.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.smhrd.web.entity.Driver우빈;

@Mapper
public interface RegisterMapper우빈 {
	void 회원가입DB와연결메서드(Driver우빈 driver);
}
