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
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
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
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
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

    @RequestMapping("/ysFind1")
    public String findYs1() {
        return "ys1";
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
    public String queryShiSuan(@DateTimeFormat(pattern="yyyy-MM-dd") Date date,Shisuan shisuan, Yusuan yusuan, HttpServletRequest request, HttpServletResponse response) {
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

        String xiangmuname = request.getParameter("xiangmuname");
        String bidstr = request.getParameter("bid");
        Integer bid = null;
        if (bidstr != null && !"".equals(bidstr)) {
            bid = Integer.parseInt(bidstr);
        }


        try {
            String kaishitime=request.getParameter("kaishitime");
            String time=request.getParameter("time");
            System.out.println(kaishitime);
        }catch (Exception e){
            e.printStackTrace();
        }

//
//        shisuan.setBid(bid);
//        shisuan.setXiangmuname(xiangmuname);
//        yusuan.setXiangmuname(xiangmuname);
        List<Shisuan> list = shisuanMapper.queryShiSuan(shisuan);
        List<Bumen> bumenList = bumenMapper.queryAll();
        List<Shisuan> sumShiSuan = shisuanMapper.sumShiSuan(shisuan);
        List<Yusuan> yulist = yu.queryYuSuan(yusuan);
        double sum=0;
        double s=0;
        for (int i = 0; i < yulist.size(); i++) {
            sum=sum+yulist.get(i).getJieguo();

        }
        for (int j = 0; j < sumShiSuan.size(); j++) {
            s=s+sumShiSuan.get(j).getJieguo();
        }
        double jiguo=sum-s;
        request.setAttribute("jiguo",jiguo);
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
    public String a() {
        return "a";
    }


}
