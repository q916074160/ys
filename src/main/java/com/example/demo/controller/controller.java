package com.example.demo.controller;

import com.example.demo.entity.Yusuan;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

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

    //人员导入
    @RequestMapping("/rydr")
    public String rydr() {
        return "rydr";
    }

}
