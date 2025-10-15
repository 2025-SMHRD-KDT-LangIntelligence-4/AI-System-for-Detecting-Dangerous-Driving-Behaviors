package com.smhrd.web.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.smhrd.web.entity.ExampleEntity;

@Mapper // 이 인터페이스가 Mapper라고 선언
public interface 설명용Mapper {
	List<ExampleEntity> CheckDBConnection();
	// CheckDBConnection이라는 이름의 메서드 정의. 이름은 내가 임의로 정해야한다
	// 이 메서드의 실행결과는 ExampleEntity 객체가 담긴 List형식으로 반환하겠다.
}
