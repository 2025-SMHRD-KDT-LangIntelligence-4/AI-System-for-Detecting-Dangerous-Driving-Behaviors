package com.smhrd.web.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.smhrd.web.dto.SelectEvent;
import com.smhrd.web.dto.SelectLog;


@Mapper
public interface Mapper유선 {
	//@Select("SELECT COUNT(driver_idx) FROM tb_car")
			int countDriverIdx();
	// 간단한 sql문을 쓸 때 사용하는방법. 간단히 테스트 할 때 좋은 방법이에요
	
	// 실무에서는 여기에는 쿼리문을 호출, 받을 타입표기하는 메서드만 남기고(자바문법)
	// 쿼리문은 xml쪽으로 빼서 코딩해요(sql문법)
	// 복잡하고 길이가 긴 코딩일수록 문법이 서로 다르다면 햇갈리기때문이에요 
	
	List<SelectLog> selectLogList();
	
	SelectEvent selectEventchart();
	
}
