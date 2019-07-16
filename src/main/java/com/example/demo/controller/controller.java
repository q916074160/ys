package com.example.demo.controller;

import com.example.demo.dao.BumenMapper;
import com.example.demo.dao.ShisuanMapper;
import com.example.demo.dao.UserMapper;
import com.example.demo.dao.YusuanMapper;
import com.example.demo.entity.Bumen;
import com.example.demo.entity.Shisuan;
import com.example.demo.entity.User;
import com.example.demo.entity.Yusuan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import java.util.List;

@Controller
public class controller {
    @Autowired
    ShisuanMapper shisuanMapper;
    @Autowired
    UserMapper userMapper;
    @Autowired
    BumenMapper bumenMapper;
    @Autowired
    private YusuanMapper yu;


    //登录页面
    @RequestMapping("/login")
    public String login() {
        return "login";
    }

    //用户登录
    @RequestMapping("/userLogin")
    public String userLogin(HttpServletRequest request, User user, HttpSession session) {
        Integer i = userMapper.userLogin(user);
        if (i >= 1) {
            session.setAttribute("user", user);
            session.setMaxInactiveInterval(30 * 60);
            return "index";
        } else {
            return "login";
        }
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

    @RequestMapping("/querySs")
    public String queryShiSuan(Shisuan shisuan, Yusuan yusuan, HttpServletRequest request, HttpServletResponse response) {
        List<Shisuan> list = shisuanMapper.queryShiSuan(shisuan);
        List<Bumen> bumenList = bumenMapper.queryBumen();

        List<Shisuan> sumShiSuan = shisuanMapper.sumShiSuan(shisuan);
        List<Yusuan> yulist = yu.queryYuSuan(yusuan);
        String xiangmuname = request.getParameter("xiangmuname");
        String bidstr = request.getParameter("bid");
        Integer bid = null;
        if (bidstr != null && !"".equals(bidstr)) {
            bid = Integer.parseInt(bidstr);
        }
        shisuan.setBid(bid);

        request.setAttribute("sumShiSuan", sumShiSuan);
        request.setAttribute("bid", bid);
        request.setAttribute("xiangmuname", xiangmuname);
        request.setAttribute("list", list);
        request.setAttribute("bumenList", bumenList);
        request.setAttribute("yulist", yulist);
        return "ys";
    }

    //人员导入
    @RequestMapping("/rydr")
    public String rydr() {
        return "rydr";
    }

    @RequestMapping("/a")
    public String a(){
        return "a";
    }

}
