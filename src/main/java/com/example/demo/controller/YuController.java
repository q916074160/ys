package com.example.demo.controller;

import com.example.demo.dao.ShiSuanMapper;
import com.example.demo.dao.YuSuanMapper;
import com.example.demo.entity.ShiSuan;
import com.example.demo.entity.YuSuan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;


@RestController
public class YuController {
    @Autowired
    private YuSuanMapper yu;

    @Autowired
    private ShiSuanMapper shiSuanMapper;

    @RequestMapping(value = "/add",method= RequestMethod.GET)
    public double YuInsert( @RequestParam String name,@RequestParam int ren,@RequestParam String zhongdui,
        @RequestParam double gongshang,@RequestParam double yiliao,@RequestParam double yanglao,@RequestParam double shengyu,@RequestParam double shiye,
        @RequestParam int shi,@RequestParam double chepiao,@RequestParam double chuchai,@RequestParam double fangzu,@RequestParam double tongxing,
        @RequestParam double gongzi,@RequestParam double qita,@RequestParam double rengong,@RequestParam double riyong,@RequestParam double shebei,
        @RequestParam double shuidian,@RequestParam double shuifei,@RequestParam double tongxun,@RequestParam double waibao,@RequestParam double gongjiao,
                                @RequestParam double zhaodai,@RequestParam double zuche,@RequestParam double xiuche,@RequestParam double youji){
        //总共盈利
        double sum=0;

        sum=sum+(gongshang+yiliao+yanglao+shengyu+shiye)*ren*shi+gongzi*ren*shi+fangzu*shi+chepiao+chuchai+tongxing+qita+rengong+riyong+shebei+shuidian*shi+shuifei+tongxun+waibao+gongjiao+zhaodai+zuche+xiuche+youji;

        YuSuan yusuan=new YuSuan();
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
        yusuan.setZhongdui(zhongdui);

        //盈利
        double jieguo=sum;
        yusuan.setJieguo(jieguo);

        yu.insert(yusuan);
        return sum;
    }
    @RequestMapping(value = "/addS",method= RequestMethod.GET)
    public double ShiInsert(@RequestParam String name, @RequestParam String kaishitime,@RequestParam String zhongdui, @RequestParam int ren,
                            @RequestParam double gongshang, @RequestParam double yiliao, @RequestParam double yanglao, @RequestParam double shengyu, @RequestParam double shiye,
                            @RequestParam int shi, @RequestParam double chepiao, @RequestParam double chuchai, @RequestParam double fangzu, @RequestParam double tongxing,
                            @RequestParam double gongzi, @RequestParam double qita, @RequestParam double rengong, @RequestParam double riyong, @RequestParam double shebei,
                            @RequestParam double shuidian, @RequestParam double shuifei, @RequestParam double tongxun, @RequestParam double waibao, @RequestParam double gongjiao,
                            @RequestParam double zhaodai, @RequestParam double zuche, @RequestParam double xiuche, @RequestParam double youji){

        SimpleDateFormat formatter=new SimpleDateFormat("yyyy-MM-dd");
        Date date= null;
        try {
            date = formatter.parse(kaishitime);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        System.out.println(date);
        //总共盈利
        double sum=0;

        sum=sum+(gongshang+yiliao+yanglao+shengyu+shiye)*ren*shi+gongzi*ren*shi+fangzu*shi+chepiao+chuchai+tongxing+qita+rengong+riyong+shebei+shuidian*shi+shuifei+tongxun+waibao+gongjiao+zhaodai+zuche+xiuche+youji;

        ShiSuan shisuan=new ShiSuan();
        //合同名称
        shisuan.setXiangmuname(name);
        shisuan.setRenshu(ren);
        shisuan.setGongshang(gongshang);
        shisuan.setShengyu(shengyu);
        shisuan.setShiye(shiye);
        shisuan.setYanglao(yanglao);
        shisuan.setYiliao(yiliao);
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
        shisuan.setKaishitime(date);
        shisuan.setZhongdui(zhongdui);

        //结果
        double jieguo=sum;
        shisuan.setJieguo(jieguo);

        shiSuanMapper.insert(shisuan);
        return sum;
    }
}
