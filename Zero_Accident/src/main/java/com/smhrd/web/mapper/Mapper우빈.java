package com.smhrd.web.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.smhrd.web.entity.Join1;


@Mapper
public interface Mapper우빈 {
	
		List<Join1> SelectAllDrivers();
		
		int SelectDriverCount();
}
