package com.example.demo.controller;

import com.example.demo.entity.YuSuan;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class controller {
    @RequestMapping("/index")
    public String addStudent() {
        return "index";
    }

    @RequestMapping("/ysFind")
    public String findYs() {
        return "ys";
    }
    //预算导入
    @RequestMapping("/ysdr")
    public String ysdr() {
        return "ysdr";
    }
    //实算导入
    @RequestMapping("/ssdr")
    public String ssdr() {
        return "ss";
    }
}
