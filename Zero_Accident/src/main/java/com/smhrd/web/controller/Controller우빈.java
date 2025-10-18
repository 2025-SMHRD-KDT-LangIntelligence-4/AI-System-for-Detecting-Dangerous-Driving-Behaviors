package com.smhrd.web.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.smhrd.web.dto.DriverInfo;
import com.smhrd.web.dto.MakeGraph;
import com.smhrd.web.dto.SelectVideo;
import com.smhrd.web.entity.Admin;
import com.smhrd.web.entity.Driver;
import com.smhrd.web.service.Service우빈;

import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class Controller우빈 {
    private final Service우빈 service;
}
