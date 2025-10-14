package com.smhrd.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smhrd.web.entity.ExampleEntity;
import com.smhrd.web.mapper.ExampleMapper;
import com.smhrd.web.mapper.RegisterMapper유선;

import lombok.RequiredArgsConstructor;

@Service
public class RegisterService유선 {

    private final RegisterMapper유선 registerMapper유선;

    public RegisterService유선(RegisterMapper유선 registerMapper유선) {
        this.registerMapper유선 = registerMapper유선;
    }

    // log_idx 총 개수 조회
    public int getruncarCount() {
        return registerMapper유선.countDriverIdx();
    }
}


