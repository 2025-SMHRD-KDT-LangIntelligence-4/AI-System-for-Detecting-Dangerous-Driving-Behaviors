package com.smhrd.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smhrd.web.entity.ExampleEntity;
import com.smhrd.web.mapper.설명용Mapper;

@Service // 이 클래스를 서비스라고 정하겠다
// 컨트롤러:요청을 받아 서비스에 전달하고, 처리 결과를 반환하는 곳 ex.조는 건지 영상 분석해줘
// 서비스: 컨트롤러와 매퍼 사이에서 데이터 처리 ex.졸음운전 탐지 로직 실행, DB에 기록, 알림 발송 등
// 매퍼:DB와 연결되어 SQL문실행 ex. 졸음운전 몇분 몇시인지 DB에 insert함

public class 설명용Service {
    @Autowired // 스프링이 알아서 연결해주는 어노테이션
    private 설명용Mapper mapper; // 뭘 연결해? ExampleMapper라는 매퍼와 연결하겠다. 그리고 mapper라는 이름으로 가져다 쓰겠다.

    
    public List<ExampleEntity> getExampleDBList() {
    	// ExampleEntity라는 객체를 리스트에 담아 반환한다.
    	// 이 메서드(기능)을 getExampleDBList()라고 이름 짓겠다.
        return mapper.CheckDBConnection();
        // 실제 DB 접근은 이 서비스와 연결된 매퍼가 담당하는데, 그 매퍼의 메서드 중에 CheckDBConnection()을 쓰겠다.
    }
}
