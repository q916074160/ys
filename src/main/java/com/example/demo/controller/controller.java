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
import java.util.*;

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

    @RequestMapping("/update")
    public String updateShiSuan(Shisuan shisuan, HttpServletRequest request) {
        shisuanMapper.updateShiSuan(shisuan);
        return "ys";
    }

    @RequestMapping("/querySs")
    public String queryShiSuan(@DateTimeFormat(pattern = "yyyy-MM-dd") Date date, Shisuan shisuan, Yusuan yusuan, HttpServletRequest request, HttpServletResponse response, Integer shiid, HttpSession session) {
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        String xiangmuname = request.getParameter("xiangmuname");
        if (xiangmuname == null || xiangmuname.equals("")) {
            xiangmuname = "死";
        }
        String bidstr = request.getParameter("bid");
        Integer bid = null;
        if (bidstr != null && !"".equals(bidstr)) {
            bid = Integer.parseInt(bidstr);
        }
        try {
            String kaishitime = request.getParameter("kaishitime");
            String time = request.getParameter("time");

        } catch (Exception e) {
            e.printStackTrace();
        }
//        System.out.println(yusuan.getXiangmuname());

        //shisuan.setBid(bid);
        if (xiangmuname != null || !xiangmuname.equals("")) {
            shisuan.setXiangmuname(xiangmuname);
            yusuan.setXiangmuname(xiangmuname);

            List<Shisuan> list = shisuanMapper.queryShiSuan(shisuan);
            List<Bumen> bumenList = bumenMapper.queryAll();

            List<Yusuan> yulist = yu.queryYuSuan(yusuan);

            List<Shisuan> sumShiSuan = shisuanMapper.sumShiSuan(shisuan);
            List<Yusuan> sumyulist = yu.sumYuSuan(yusuan);

            List<Yusuan> list1 = new ArrayList<>();

            List<Yusuan> yusuanList = new ArrayList<>();
            List<Shisuan> shisuanList = new ArrayList<>();

            for (int i = 0; i < sumyulist.size(); i++) {
                yusuan = new Yusuan();
                yusuan.setXiangmuname(sumyulist.get(i).getXiangmuname());
                yusuan.setBid(sumyulist.get(i).getBid());
                yusuan.setShichang(sumyulist.get(i).getShichang());
                yusuan.setJieguo(sumyulist.get(i).getJieguo());
                yusuan.setChepiao(sumyulist.get(i).getChepiao());
                yusuan.setRenshu(sumyulist.get(i).getRenshu());
                yusuan.setGongzi(sumyulist.get(i).getGongzi());
                yusuan.setShuifei(sumyulist.get(i).getShuifei());
                yusuan.setFangzu(sumyulist.get(i).getFangzu());
                yusuan.setWaibao(sumyulist.get(i).getWaibao());
                yusuan.setZhaodaifei(sumyulist.get(i).getZhaodaifei());
                yusuan.setTongxunfei(sumyulist.get(i).getTongxunfei());
                yusuan.setRiyongpin(sumyulist.get(i).getRiyongpin());
                yusuan.setYoujifei(sumyulist.get(i).getYoujifei());
                yusuan.setZuchefei(sumyulist.get(i).getZuchefei());
                yusuan.setShebeixiuli(sumyulist.get(i).getShebeixiuli());
                yusuan.setGaosutongxing(sumyulist.get(i).getGaosutongxing());
                yusuan.setChuchaijiayou(sumyulist.get(i).getChuchaijiayou());
                yusuan.setShineigongjiao(sumyulist.get(i).getShineigongjiao());
                yusuan.setXiuchefei(sumyulist.get(i).getXiuchefei());
                yusuan.setRengong(sumyulist.get(i).getRengong());
                yusuan.setShuidian(sumyulist.get(i).getShuidian());
                yusuan.setQita(sumyulist.get(i).getQita());

                yusuanList.add(yusuan);


            }
            for (int j = 0; j < sumShiSuan.size(); j++) {
                shisuan = new Shisuan();
                shisuan.setXiangmuname(sumShiSuan.get(j).getXiangmuname());
                shisuan.setBid(sumShiSuan.get(j).getBid());
                shisuan.setJieguo(sumShiSuan.get(j).getJieguo());
                shisuan.setChepiao(sumShiSuan.get(j).getChepiao());
                shisuan.setRenshu(sumShiSuan.get(j).getRenshu());
                shisuan.setGongzi(sumShiSuan.get(j).getGongzi());
                shisuan.setShuifei(sumShiSuan.get(j).getShuifei());
                shisuan.setFangzu(sumShiSuan.get(j).getFangzu());
                shisuan.setWaibao(sumShiSuan.get(j).getWaibao());
                shisuan.setZhaodaifei(sumShiSuan.get(j).getZhaodaifei());
                shisuan.setTongxunfei(sumShiSuan.get(j).getTongxunfei());
                shisuan.setRiyongpin(sumShiSuan.get(j).getRiyongpin());
                shisuan.setYoujifei(sumShiSuan.get(j).getYoujifei());
                shisuan.setZuchefei(sumShiSuan.get(j).getZuchefei());
                shisuan.setShebeixiuli(sumShiSuan.get(j).getShebeixiuli());
                shisuan.setGaosutongxing(sumShiSuan.get(j).getGaosutongxing());
                shisuan.setChuchaijiayou(sumShiSuan.get(j).getChuchaijiayou());
                shisuan.setShineigongjiao(sumShiSuan.get(j).getShineigongjiao());
                shisuan.setXiuchefei(sumShiSuan.get(j).getXiuchefei());
                shisuan.setRengong(sumShiSuan.get(j).getRengong());
                shisuan.setShuidian(sumShiSuan.get(j).getShuidian());
                shisuan.setQita(sumShiSuan.get(j).getQita());

                shisuanList.add(shisuan);

            }
            for (int k = 0; k < yusuanList.size(); k++) {
                        yusuan = new Yusuan();
                        if(shisuanList.size()==0){
                            continue;
                        }
                        for (int s = 0; s < shisuanList.size(); s++) {
                            if (yusuanList.get(k).getXiangmuname().equals(shisuanList.get(s).getXiangmuname())) {

                                yusuan.setXiangmuname(yusuanList.get(k).getXiangmuname());
                                yusuan.setBid(yusuanList.get(k).getBid());
                                yusuan.setShichang(sumyulist.get(k).getShichang());
                                yusuan.setJieguo(yusuanList.get(k).getJieguo() - shisuanList.get(s).getJieguo());
                                yusuan.setChepiao(yusuanList.get(k).getChepiao() - shisuanList.get(s).getChepiao());
                                yusuan.setRenshu(yusuanList.get(k).getRenshu() - shisuanList.get(s).getRenshu());
                                yusuan.setGongzi(yusuanList.get(k).getGongzi() - shisuanList.get(s).getGongzi());
                                yusuan.setShuifei(yusuanList.get(k).getShuifei() - shisuanList.get(s).getShuifei());
                                yusuan.setFangzu(yusuanList.get(k).getFangzu() - shisuanList.get(s).getFangzu());
                                yusuan.setWaibao(yusuanList.get(k).getWaibao() - shisuanList.get(s).getWaibao());
                                yusuan.setZhaodaifei(yusuanList.get(k).getZhaodaifei() - shisuanList.get(s).getZhaodaifei());
                                yusuan.setTongxunfei(yusuanList.get(k).getTongxunfei() - shisuanList.get(s).getTongxunfei());
                                yusuan.setRiyongpin(yusuanList.get(k).getRiyongpin() - shisuanList.get(s).getRiyongpin());
                                yusuan.setYoujifei(yusuanList.get(k).getYoujifei() - shisuanList.get(s).getYoujifei());
                                yusuan.setZuchefei(yusuanList.get(k).getZuchefei() - shisuanList.get(s).getZuchefei());
                                yusuan.setShebeixiuli(yusuanList.get(k).getShebeixiuli() - shisuanList.get(s).getShebeixiuli());
                                yusuan.setGaosutongxing(yusuanList.get(k).getGaosutongxing() - shisuanList.get(s).getGaosutongxing());
                                yusuan.setChuchaijiayou(yusuanList.get(k).getChuchaijiayou() - shisuanList.get(s).getChuchaijiayou());
                                yusuan.setShineigongjiao(yusuanList.get(k).getShineigongjiao() - shisuanList.get(s).getShineigongjiao());
                                yusuan.setXiuchefei(yusuanList.get(k).getXiuchefei() - shisuanList.get(s).getXiuchefei());
                                yusuan.setShuidian(yusuanList.get(k).getShuidian() - shisuanList.get(s).getShuidian());
                                yusuan.setQita(yusuanList.get(k).getQita() - shisuanList.get(s).getQita());
                                yusuan.setRengong(yusuanList.get(k).getRengong() - shisuanList.get(s).getRengong());

                            }
                        }
                        list1.add(yusuan);

            }
            request.setAttribute("list1", list1);
            request.setAttribute("sumShiSuan", sumShiSuan);
            request.setAttribute("bid", bid);
            request.setAttribute("xiangmuname", xiangmuname);
            request.setAttribute("list", list);
            request.setAttribute("bumenList", bumenList);
            request.setAttribute("yulist", yulist);
        }

        return "ys";
    }

    //人员导入
    @RequestMapping("/rydr")
    public String rydr() {
        return "rydr";
    }


}
