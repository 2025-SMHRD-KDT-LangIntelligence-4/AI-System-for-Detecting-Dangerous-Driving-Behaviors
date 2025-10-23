package com.smhrd.web.mapper;


import org.apache.ibatis.annotations.Mapper;


@Mapper
public interface MainMapper2 {
    int selectTotalLogCount(int driverIdx);
}
