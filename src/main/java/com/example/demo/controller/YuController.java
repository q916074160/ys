package com.example.demo.controller;

import com.example.demo.dao.BumenMapper;
import com.example.demo.dao.RenyuanMapper;
import com.example.demo.dao.ShisuanMapper;
import com.example.demo.dao.YusuanMapper;
import com.example.demo.entity.Renyuan;
import com.example.demo.entity.Shisuan;
import com.example.demo.entity.Yusuan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;


@RestController
public class YuController {
    @Autowired
    private YusuanMapper yu;

    @Autowired
    private ShisuanMapper shiSuanMapper;

    @Autowired
    private BumenMapper bumenMapper;

    @Autowired
    private RenyuanMapper renyuanMapper;

    @RequestMapping(value = "/sumY",method= RequestMethod.GET)
    public double sumY( @RequestParam String name,@RequestParam int ren,@RequestParam int zhongdui,
        @RequestParam double gongshang,@RequestParam double yiliao,@RequestParam double yanglao,@RequestParam double shengyu,@RequestParam double shiye,
        @RequestParam int shi,@RequestParam double chepiao,@RequestParam double chuchai,@RequestParam double fangzu,@RequestParam double tongxing,
        @RequestParam double gongzi,@RequestParam double qita,@RequestParam double rengong,@RequestParam double riyong,@RequestParam double shebei,
        @RequestParam double shuidian,@RequestParam double shuifei,@RequestParam double tongxun,@RequestParam double waibao,@RequestParam double gongjiao,
                                @RequestParam double zhaodai,@RequestParam double zuche,@RequestParam double xiuche,@RequestParam double youji){
        //总共盈利
        double sum=0;

        sum=sum+(gongshang+yiliao+yanglao+shengyu+shiye+gongzi+fangzu+chepiao+chuchai+tongxing+qita+rengong+riyong+shebei+shuidian+shuifei+tongxun+gongjiao+zhaodai+zuche+xiuche+youji)*shi+waibao;
        double jieguo=sum;
        return sum;
    }
    @RequestMapping(value = "/addY",method= RequestMethod.GET)
    public double YInsert( @RequestParam String name,@RequestParam int ren,@RequestParam int zhongdui,
                            @RequestParam double gongshang,@RequestParam double yiliao,@RequestParam double yanglao,@RequestParam double shengyu,@RequestParam double shiye,
                            @RequestParam int shi,@RequestParam double chepiao,@RequestParam double chuchai,@RequestParam double fangzu,@RequestParam double tongxing,
                            @RequestParam double gongzi,@RequestParam double qita,@RequestParam double rengong,@RequestParam double riyong,@RequestParam double shebei,
                            @RequestParam double shuidian,@RequestParam double shuifei,@RequestParam double tongxun,@RequestParam double waibao,@RequestParam double gongjiao,
                            @RequestParam double zhaodai,@RequestParam double zuche,@RequestParam double xiuche,@RequestParam double youji){
        //总共盈利
        double sum=0;

        sum=sum+(gongshang+yiliao+yanglao+shengyu+shiye+gongzi+fangzu+chepiao+chuchai+tongxing+qita+rengong+riyong+shebei+shuidian+shuifei+tongxun+gongjiao+zhaodai+zuche+xiuche+youji)*shi+waibao;

        Yusuan yusuan=new Yusuan();
        //合同名称
        yusuan.setXiangmuname(name);
        yusuan.setRenshu(ren);
        yusuan.setGongshang(gongshang);
        yusuan.setShengyu(shengyu);
        yusuan.setShiye(shiye);
        yusuan.setYanglao(yanglao);
        yusuan.setYiliao(yiliao);
        yusuan.setChepiao(chepiao);
        yusuan.setChuchaijiayou(chuchai);
        yusuan.setFangzu(fangzu);
        yusuan.setGaosutongxing(tongxing);
        yusuan.setGongzi(gongzi);
        yusuan.setQita(qita);
        yusuan.setRengong(rengong);
        yusuan.setRiyongpin(riyong);
        yusuan.setShebeixiuli(shebei);
        yusuan.setShichang(shi);
        yusuan.setShuidian(shuidian);
        yusuan.setShuifei(shuifei);
        yusuan.setTongxunfei(tongxun);
        yusuan.setWaibao(waibao);
        yusuan.setShineigongjiao(gongjiao);
        yusuan.setXiuchefei(xiuche);
        yusuan.setYoujifei(youji);
        yusuan.setZhaodaifei(zhaodai);
        yusuan.setZuchefei(zuche);
        yusuan.setBid(zhongdui);

        yusuan.setJieguo(sum);

        yu.insert(yusuan);
        return sum;
    }
    @RequestMapping(value = "/sumS",method= RequestMethod.GET)
    public double sumS(@RequestParam String name,@RequestParam String time,@RequestParam int zhongdui, @RequestParam int ren,
                            @RequestParam int shi, @RequestParam double chepiao, @RequestParam double chuchai, @RequestParam double fangzu, @RequestParam double tongxing,
                            @RequestParam double gongzi, @RequestParam double qita, @RequestParam double rengong, @RequestParam double riyong, @RequestParam double shebei,
                            @RequestParam double shuidian, @RequestParam double shuifei, @RequestParam double tongxun, @RequestParam double waibao, @RequestParam double gongjiao,
                            @RequestParam double zhaodai, @RequestParam double zuche, @RequestParam double xiuche, @RequestParam double youji){
        //总共盈利
        double sum=0;

        sum=sum+gongzi+fangzu+chepiao+chuchai+tongxing+qita+rengong+riyong+shebei+shuidian+shuifei+tongxun+gongjiao+zhaodai+zuche+xiuche+youji+waibao;


        return sum;
    }
    @RequestMapping(value = "/addS",method= RequestMethod.GET)
    public double SInsert(@RequestParam String name,@RequestParam String time,@RequestParam int zhongdui, @RequestParam int ren,
                            @RequestParam int shi, @RequestParam double chepiao, @RequestParam double chuchai, @RequestParam double fangzu, @RequestParam double tongxing,
                            @RequestParam double gongzi, @RequestParam double qita, @RequestParam double rengong, @RequestParam double riyong, @RequestParam double shebei,
                            @RequestParam double shuidian, @RequestParam double shuifei, @RequestParam double tongxun, @RequestParam double waibao, @RequestParam double gongjiao,
                            @RequestParam double zhaodai, @RequestParam double zuche, @RequestParam double xiuche, @RequestParam double youji){

        SimpleDateFormat formatter=new SimpleDateFormat("yyyy-MM-dd");
        Date date1= null;
        try {
            date1= formatter.parse(time);
        } catch (ParseException e) {
            e.printStackTrace();
        }

        //总共盈利
        double sum=0;

        sum=sum+gongzi+fangzu+chepiao+chuchai+tongxing+qita+rengong+riyong+shebei+shuidian+shuifei+tongxun+gongjiao+zhaodai+zuche+xiuche+youji+waibao;

        Shisuan shisuan=new Shisuan();
        //合同名称
        shisuan.setXiangmuname(name);
        shisuan.setRenshu(ren);
        shisuan.setChepiao(chepiao);
        shisuan.setChuchaijiayou(chuchai);
        shisuan.setFangzu(fangzu);
        shisuan.setGaosutongxing(tongxing);
        shisuan.setGongzi(gongzi);
        shisuan.setQita(qita);
        shisuan.setRengong(rengong);
        shisuan.setRiyongpin(riyong);
        shisuan.setShebeixiuli(shebei);
        shisuan.setShichang(shi);
        shisuan.setShuidian(shuidian);
        shisuan.setShuifei(shuifei);
        shisuan.setTongxunfei(tongxun);
        shisuan.setWaibao(waibao);
        shisuan.setShineigongjiao(gongjiao);
        shisuan.setXiuchefei(xiuche);
        shisuan.setYoujifei(youji);
        shisuan.setZhaodaifei(zhaodai);
        shisuan.setZuchefei(zuche);
        shisuan.setBid(zhongdui);
        shisuan.setTime(date1);
        shisuan.setJieguo(sum);

        shiSuanMapper.insert(shisuan);
        return sum;
    }
    @RequestMapping(value = "/sel",method= RequestMethod.GET)
    public Double[] selectGongzi(@RequestParam int zhongdui,@RequestParam String time){
        int c= time.lastIndexOf("-");
        String a=time.substring(0,c);

        double sum=0;
        double ren=0;

        List<Renyuan> renyuanList=renyuanMapper.selectById(zhongdui,a);
        for(int i=0;i<renyuanList.size();i++){
            Renyuan renyuan=new Renyuan();
            renyuan=renyuanList.get(i);
            sum+=renyuan.getGongzi()+renyuan.getYanglao()+renyuan.getYiliao()+renyuan.getShengyu()+renyuan.getShiye()+renyuan.getGongshang();
            ren+=1;
        }
        Double[] zhi={sum,ren};
        return zhi;
    }
}
