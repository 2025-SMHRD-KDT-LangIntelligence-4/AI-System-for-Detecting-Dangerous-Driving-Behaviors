package com.smhrd.web.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.smhrd.web.dto.DriverInfo;
import com.smhrd.web.dto.SelectLog;
import com.smhrd.web.dto.SelectVideo;


@Mapper
public interface MainMapper2 {
    int selectTotalLogCount(int driverIdx);

	List<SelectVideo> selectLogListByDriverIdx(int driverIdx);
}
