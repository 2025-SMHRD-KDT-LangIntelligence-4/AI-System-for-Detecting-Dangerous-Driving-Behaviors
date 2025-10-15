package com.smhrd.web.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smhrd.web.mapper.Mapper솔민;

@Service
public class Service솔민 {

    @Autowired
    private Mapper솔민 mapper;

    public int getAssaultCount() {
        return mapper.countAssault();
    }

    public int getDrowsyCount() {
        return mapper.countDrowsy();
    }

    public int getHandCount() {
        return mapper.countHand();
    }

    public int getPhoneCount() {
        return mapper.countPhone();
    }
}
