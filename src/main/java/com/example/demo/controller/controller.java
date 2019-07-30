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
    @RequestMapping("/update")
    public String  updateShiSuan(Shisuan shisuan,HttpServletRequest request){

        shisuanMapper.updateShiSuan(shisuan);
        return "ys";
    }

    @RequestMapping("/querySs")
    public String queryShiSuan(@DateTimeFormat(pattern="yyyy-MM-dd") Date date,Shisuan shisuan, Yusuan yusuan, HttpServletRequest request, HttpServletResponse response,Integer shiid) {
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

        }catch (Exception e){
            e.printStackTrace();
        }

//        shisuan.setBid(bid);
//        shisuan.setXiangmuname(xiangmuname);
//        yusuan.setXiangmuname(xiangmuname);
//        System.out.println(xiangmuname);
        List<Shisuan> list = shisuanMapper.queryShiSuan(shisuan);
        List<Bumen> bumenList = bumenMapper.queryAll();
        List<Shisuan> sumShiSuan = shisuanMapper.sumShiSuan(shisuan);
        List<Yusuan> yulist = yu.queryYuSuan(yusuan);

        double Yjieguosum=0;
        double Sjieguosum=0;

        int Yrenshusum=0;
        int Srenshusum=0;

        double Ygongzisum=0;
        double Sgongzisum=0;


        double Sshichangsum=0;

        double Yshuifeisum=0;
        double Sshuifeisum=0;

        double Yfangzusum=0;
        double Sfangzusum=0;

        double Ywaibaosum=0;
        double Swaibaosum=0;

        double Yzhaodaifeisum=0;
        double Szhaodaifeisum=0;

        double Ytongxunfeisum=0;
        double Stongxunfeisum=0;

        double Yriyongpinsum=0;
        double Sriyongpinsum=0;


        double Yyoujifeisum=0;
        double Syoujifeisum=0;


        double Yzuchefeisum=0;
        double Szuchefeisum=0;


        double Yshebeixiulisum=0;
        double Sshebeixiulisum=0;


        double Ygaosutongxingsum=0;
        double Sgaosutongxingsum=0;


        double Ychuchaijiayousum=0;
        double Schuchaijiayousum=0;


        double Yshineigongjiaosum=0;
        double Sshineigongjiaosum=0;


        double Yxiuchefeisum=0;
        double Sxiuchefeisum=0;

        double Yrengongsum=0;
        double Srengongsum=0;


        double Yshuidiansum=0;
        double Sshuidiansum =0;


        double Ychepiaosum=0;
        double Schepiaosum=0;


        double Yqitasum=0;
        double Sqitasum=0;


//        double Yyanglaosum=0;
//        double Syanglaosum=0;
//
//
//        double Ygongshangsum=0;
//        double Sgongshangsum=0;
//
//        double Yshiyesum=0;
//        double Sshiyesum=0;
//
//        double Yshengyusum=0;
//        double Sshengyusum=0;



        for (int i = 0; i < yulist.size(); i++) {
            Yjieguosum=Yjieguosum+yulist.get(i).getJieguo();
            Ychepiaosum=Ychepiaosum+yulist.get(i).getChepiao();
            Yrenshusum=Yrenshusum+yulist.get(i).getRenshu();
            Ygongzisum=Ygongzisum+yulist.get(i).getGongzi();
            Yshuifeisum=Yshuifeisum+yulist.get(i).getShuifei();
            Yfangzusum=Yfangzusum+yulist.get(i).getFangzu();
            Ywaibaosum=Ywaibaosum+yulist.get(i).getWaibao();
            Yzhaodaifeisum=Yzhaodaifeisum+yulist.get(i).getZhaodaifei();
            Ytongxunfeisum=Ytongxunfeisum+yulist.get(i).getTongxunfei();
            Yriyongpinsum=Yriyongpinsum+yulist.get(i).getRiyongpin();
            Yyoujifeisum=Yyoujifeisum+yulist.get(i).getYoujifei();
            Yzuchefeisum=Yzuchefeisum+yulist.get(i).getZuchefei();
            Yshebeixiulisum=Yshebeixiulisum+yulist.get(i).getShebeixiuli();
            Ygaosutongxingsum=Ygaosutongxingsum+yulist.get(i).getGaosutongxing();
            Ychuchaijiayousum=Ychuchaijiayousum+yulist.get(i).getChuchaijiayou();
            Yshineigongjiaosum=Yshineigongjiaosum+yulist.get(i).getShineigongjiao();
            Yxiuchefeisum=Yxiuchefeisum+yulist.get(i).getXiuchefei();
            Yrengongsum=Yrengongsum+yulist.get(i).getRengong();
            Yshuidiansum=Yshuidiansum+yulist.get(i).getShuidian();
            Yqitasum=Yqitasum+yulist.get(i).getQita();
//            Yyanglaosum=Yyanglaosum+yulist.get(i).getYanglao();
//            Ygongshangsum=Ygongshangsum+yulist.get(i).getGongshang();
//            Yshiyesum=Yshiyesum+yulist.get(i).getShiye();
//            Yshengyusum=Yshengyusum+yulist.get(i).getShengyu();

        }
        for (int j = 0; j < sumShiSuan.size(); j++) {
            //            Syanglaosum=Syanglaosum+sumShiSuan.get(j).getYanglao();
//            Sgongshangsum=Sgongshangsum+sumShiSuan.get(j).getGongshang();
//            Sshiyesum=Sshiyesum+sumShiSuan.get(j).getShiye();
//            Sshengyusum=Sshengyusum+sumShiSuan.get(j).getShengyu();
            Sjieguosum=Sjieguosum+sumShiSuan.get(j).getJieguo();
            Schepiaosum=Schepiaosum+sumShiSuan.get(j).getChepiao();
            Srenshusum=Srenshusum+sumShiSuan.get(j).getRenshu();
            Sgongzisum=Sgongzisum+sumShiSuan.get(j).getGongzi();
            Sshuifeisum=Sshuifeisum+sumShiSuan.get(j).getShuifei();
            Sfangzusum=Sfangzusum+sumShiSuan.get(j).getFangzu();
            Swaibaosum=Swaibaosum+sumShiSuan.get(j).getWaibao();
            Szhaodaifeisum=Szhaodaifeisum+sumShiSuan.get(j).getZhaodaifei();
            Stongxunfeisum=Stongxunfeisum+sumShiSuan.get(j).getTongxunfei();
            Sriyongpinsum=Sriyongpinsum+sumShiSuan.get(j).getRiyongpin();
            Syoujifeisum=Syoujifeisum+sumShiSuan.get(j).getYoujifei();
            Szuchefeisum=Szuchefeisum+sumShiSuan.get(j).getZuchefei();
            Sshebeixiulisum=Sshebeixiulisum+sumShiSuan.get(j).getShebeixiuli();
            Sgaosutongxingsum=Sgaosutongxingsum+sumShiSuan.get(j).getGaosutongxing();
            Schuchaijiayousum=Schuchaijiayousum+sumShiSuan.get(j).getChuchaijiayou();
            Sshineigongjiaosum=Sshineigongjiaosum+sumShiSuan.get(j).getShineigongjiao();
            Sxiuchefeisum=Sxiuchefeisum+sumShiSuan.get(j).getXiuchefei();
            Sshuidiansum=Sshuidiansum+sumShiSuan.get(j).getShuidian();
            Sqitasum=Sqitasum+sumShiSuan.get(j).getQita();
            Srengongsum=Srengongsum+sumShiSuan.get(j).getRengong();
        }
        double jieguo=Yjieguosum-Sjieguosum;
        double chepiao=Ychepiaosum-Schepiaosum;
        double renshu=Yrenshusum-Srenshusum;
        double gongzi=Ygongzisum-Sgongzisum;
        double shuifei=Yshuifeisum-Sshuifeisum;
        double fangzu=Yfangzusum-Sfangzusum;
        double waibao=Ywaibaosum-Swaibaosum;
        double zhaodaifei=Yzhaodaifeisum-Szhaodaifeisum;
        double tongxunfei=Ytongxunfeisum-Stongxunfeisum;
        double riyongpin=Yriyongpinsum-Sriyongpinsum;
        double youjifei=Yyoujifeisum-Syoujifeisum;
        double zuchefei=Yzuchefeisum-Szuchefeisum;
        double shebeixiuli=Yshebeixiulisum-Sshebeixiulisum;
        double gaosutongxing=Ygaosutongxingsum-Sgaosutongxingsum;
        double chuchaijiayou=Ychuchaijiayousum-Schuchaijiayousum;
        double shineigongjiao=Yshineigongjiaosum-Sshineigongjiaosum;
        double xiuchefei=Yxiuchefeisum-Sxiuchefeisum;
        double shuidian=Yshuidiansum-Sshuidiansum;
        double qita=Yqitasum-Sqitasum;
        double rengong=Yrengongsum-Srengongsum;
//        System.out.println(list.get(0).getShiid());
        request.setAttribute("jieguo",jieguo);
        request.setAttribute("chepiao",chepiao);
        request.setAttribute("renshu",renshu);
        request.setAttribute("gongzi",gongzi);
        request.setAttribute("shuifei",shuifei);
        request.setAttribute("fangzu",fangzu);
        request.setAttribute("waibao",waibao);
        request.setAttribute("zhaodaifei",zhaodaifei);
        request.setAttribute("tongxunfei",tongxunfei);
        request.setAttribute("riyongpin",riyongpin);
        request.setAttribute("youjifei",youjifei);
        request.setAttribute("zuchefei",zuchefei);
        request.setAttribute("shebeixiuli",shebeixiuli);
        request.setAttribute("gaosutongxing",gaosutongxing);
        request.setAttribute("chuchaijiayou",chuchaijiayou);
        request.setAttribute("shineigongjiao",shineigongjiao);
        request.setAttribute("xiuchefei",xiuchefei);
        request.setAttribute("shuidian",shuidian);
        request.setAttribute("qita",qita);
        request.setAttribute("rengong",rengong);
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








}
