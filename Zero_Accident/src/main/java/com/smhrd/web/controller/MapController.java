package com.smhrd.web.controller;

import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import lombok.RequiredArgsConstructor;
import com.smhrd.web.entity.Driver;
import com.smhrd.web.service.DriverService;

@Controller
@RequiredArgsConstructor
public class MapController {

    private final DriverService driverService;

    // 여러 운전자 마커
    @GetMapping("/map/drivers")
    public String mapDrivers(Model model) {
        List<Driver> drivers = driverService.getAllWithCoords();
        model.addAttribute("drivers", drivers);
        return "MapDrivers"; // /WEB-INF/MapDrivers.jsp
    }

    // 단일 운전자 마커 (선택)
    @GetMapping("/map/driver")
    public String mapDriver(@RequestParam int driverIdx, Model model) {
        Driver d = driverService.getOne(driverIdx);
        model.addAttribute("driver", d);
        return "MapDriver"; // /WEB-INF/MapDriver.jsp
    }
}
