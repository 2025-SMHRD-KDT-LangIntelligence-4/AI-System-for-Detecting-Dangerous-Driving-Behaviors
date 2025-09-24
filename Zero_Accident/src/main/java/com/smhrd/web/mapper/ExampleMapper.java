package com.smhrd.web.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.smhrd.web.entity.ExampleEntity;

@Mapper
public interface ExampleMapper {
	ExampleEntity ExampleFunction1();
}
