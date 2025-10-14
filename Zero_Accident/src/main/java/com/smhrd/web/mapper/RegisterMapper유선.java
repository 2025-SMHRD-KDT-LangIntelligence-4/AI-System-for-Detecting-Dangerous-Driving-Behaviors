package com.smhrd.web.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.smhrd.web.entity.ExampleEntity;

@Mapper
public interface RegisterMapper유선 {
	@Select("SELECT COUNT(driver_idx) FROM tb_car")
			int countDriverIdx();
	
}
