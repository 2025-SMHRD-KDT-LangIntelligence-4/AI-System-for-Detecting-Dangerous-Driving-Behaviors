package com.smhrd.web.controller;

import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import lombok.RequiredArgsConstructor;
import com.smhrd.web.entity.Driver;
import com.smhrd.web.service.MapService;

@Controller
@RequiredArgsConstructor
public class MapController {

    private final MapService service;

//    // 우빈 : 메인페이지로 이동
//    @GetMapping("/MainAdmin우빈")
//    public String MainAdmin우빈(Model model) {
//    	// 운전자 현재 위치 마커불러오기
//        List<Driver> drivers = service.getAllWithCoords();
//        model.addAttribute("drivers", drivers);
//        return "MainAdmin우빈";
//    }

    // 우빈 : 단일 운전자 마커
    @GetMapping("/map/driver")
    public String mapDriver(@RequestParam int driverIdx, Model model) {
        Driver driver = service.getOne(driverIdx);
        model.addAttribute("driver", driver);
        return "MapDriver"; // /WEB-INF/MapDriver.jsp
    }
}
