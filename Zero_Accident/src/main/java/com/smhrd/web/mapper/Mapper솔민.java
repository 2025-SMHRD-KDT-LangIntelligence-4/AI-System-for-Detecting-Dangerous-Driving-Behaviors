package com.smhrd.web.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface Mapper솔민 {

    @Select("SELECT COUNT(*) FROM tb_log WHERE event_type = 'ASSAULT'")
    int countAssault();

    @Select("SELECT COUNT(*) FROM tb_log WHERE event_type = 'DROWSY'")
    int countDrowsy();

    @Select("SELECT COUNT(*) FROM tb_log WHERE event_type = 'HAND'")
    int countHand();

    @Select("SELECT COUNT(*) FROM tb_log WHERE event_type = 'PHONE'")
    int countPhone();
}
