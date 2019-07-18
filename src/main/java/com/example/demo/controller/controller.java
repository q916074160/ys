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
        String xiangmuname = request.getParameter("xiangmuname");
        String bidstr = request.getParameter("bid");
        Integer bid = null;
        if (bidstr != null && !"".equals(bidstr)) {
            bid = Integer.parseInt(bidstr);
        }
        shisuan.setBid(bid);
        shisuan.setXiangmuname(xiangmuname);
        yusuan.setXiangmuname(xiangmuname);
        List<Shisuan> list = shisuanMapper.queryShiSuan(shisuan);
        List<Bumen> bumenList = bumenMapper.queryBumen();
        List<Shisuan> sumShiSuan = shisuanMapper.sumShiSuan(shisuan);
        List<Yusuan> yulist = yu.queryYuSuan(yusuan);
        for (int i = 0; i < yulist.size(); i++) {
            for (int j = 0; j < sumShiSuan.size(); j++) {
                Integer renshu = yulist.get(i).getRenshu() - sumShiSuan.get(j).getRenshu();
                Double gongzi = yulist.get(i).getGongzi() - sumShiSuan.get(j).getGongzi();
                Integer shichang = yulist.get(i).getShichang() - sumShiSuan.get(j).getShichang();
                Double shuiFei = yulist.get(i).getShuifei() - sumShiSuan.get(j).getShuifei();
                Double fangzu = yulist.get(i).getFangzu() - sumShiSuan.get(j).getFangzu();
                Double waibao = yulist.get(i).getWaibao() - sumShiSuan.get(j).getWaibao();
                Double zhaodaifei = yulist.get(i).getZhaodaifei() - sumShiSuan.get(j).getZhaodaifei();
                Double tongxunfei = yulist.get(i).getTongxunfei() - sumShiSuan.get(j).getTongxunfei();
                Double riyongpin = yulist.get(i).getRiyongpin() - sumShiSuan.get(j).getRiyongpin();
                Double youji = yulist.get(i).getYoujifei() - sumShiSuan.get(j).getYoujifei();
                Double zuche = yulist.get(i).getZuchefei() - sumShiSuan.get(j).getZuchefei();
                Double xiuli = yulist.get(i).getShebeixiuli() - sumShiSuan.get(j).getShebeixiuli();
                Double tongxing = yulist.get(i).getGaosutongxing() - sumShiSuan.get(j).getGaosutongxing();
                Double chuchaijiayou = yulist.get(i).getChuchaijiayou() - sumShiSuan.get(j).getChuchaijiayou();
                Double gongjiao = yulist.get(i).getShineigongjiao() - sumShiSuan.get(j).getShineigongjiao();
                Double xiuche = yulist.get(i).getXiuchefei() - sumShiSuan.get(j).getXiuchefei();
                Double rengong = yulist.get(i).getRengong() - sumShiSuan.get(j).getRengong();
                Double shuidian = yulist.get(i).getShuidian() - sumShiSuan.get(j).getShuidian();
                Double chepiao = yulist.get(i).getChepiao() - sumShiSuan.get(j).getChepiao();




                request.setAttribute("renshu", renshu);
                request.setAttribute("gongzi", gongzi);
                request.setAttribute("shichang", shichang);
                request.setAttribute("fangzu", fangzu);
                request.setAttribute("waibao", waibao);
                request.setAttribute("zhaodaifei", zhaodaifei);
                request.setAttribute("tongxunfei", tongxunfei);
                request.setAttribute("riyongpin", riyongpin);
                request.setAttribute("youji", youji);
                request.setAttribute("zuche", zuche);
                request.setAttribute("xiuli", xiuli);
                request.setAttribute("tongxing", tongxing);
                request.setAttribute("chuchaijiayou", chuchaijiayou);
                request.setAttribute("gongjiao", gongjiao);
                request.setAttribute("xiuche", xiuche);
                request.setAttribute("rengong", rengong);
                request.setAttribute("shuidian", shuidian);
                request.setAttribute("chepiao", chepiao);
                request.setAttribute("shuiFei", shuiFei);
            }
        }

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
