package com.smhrd.web.controller;
import com.smhrd.web.dto.LogDTO;
import com.smhrd.web.service.Service솔민;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class Controller솔민 {

    private final Service솔민 service솔민;

    @Autowired
    public Controller솔민(Service솔민 service솔민) {
        this.service솔민 = service솔민;
    }

    @GetMapping("/logPage")
    public String logPage(Model model, 
    @RequestParam(value = "searchQuery", required = false, defaultValue = "") String searchQuery) {
        
        // 검색어를 Service로 전달
        List<LogDTO> logList = service솔민.getLogList(searchQuery); 
        
        model.addAttribute("logList", logList);
        // JSP에서 검색어를 유지하기 위해 다시 모델에 추가
        model.addAttribute("searchQuery", searchQuery); 

        return "ButtonAdmin3솔민";
    }
}