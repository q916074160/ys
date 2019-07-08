package com.example.demo.controller;

import com.example.demo.entity.YuSuan;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import com.example.demo.service.YuService;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class controller {
    @RequestMapping("/index")
    public String addStudent() {
        return "index";
    }


}
