package com.smhrd.web.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.smhrd.web.dto.DriverInfo;
import com.smhrd.web.dto.SelectVideo;



@Mapper
public interface Mapper우빈 {
	List<SelectVideo> selectVideoList();
}
