package com.example.demo.controller;

import com.example.demo.entity.YuSuan;
import com.example.demo.service.YuService;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;

@RestController
public class YuController {
    @RequestMapping(value = "/add",method= RequestMethod.GET)
    public double selectAllCity(HttpServletRequest request, YuSuan yusuan,@RequestParam int ren,
        @RequestParam double gongshang,@RequestParam double yiliao,@RequestParam double yanglao,@RequestParam double shengyu,@RequestParam double shiye,
        @RequestParam double shi,@RequestParam double chepiao,@RequestParam double chuchai,@RequestParam double fangzu,@RequestParam double tongxing,
        @RequestParam double gongzi,@RequestParam double qita,@RequestParam double rengong,@RequestParam double riyong,@RequestParam double shebei,
        @RequestParam double shuidian,@RequestParam double shuifei,@RequestParam double tongxun,@RequestParam double waibao,@RequestParam double gongjiao,
                                @RequestParam double zhaodai,@RequestParam double zuche,@RequestParam double xiuche,@RequestParam double youji){
        //总共盈利
        double sum=0;

        sum=sum+(gongshang+yiliao+yanglao+shengyu+shiye)*ren*shi+gongzi*ren*shi+fangzu*shi+chepiao+chuchai+tongxing+qita+rengong+riyong+shebei+shuidian*shi+shuifei+tongxun+waibao+gongjiao+zhaodai+zuche+xiuche+youji;

        //合同名称
        /*yusuan.setXiangmuname(request.getParameter("xiangmuname"));
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


        //盈利
        double yingli=sum;
        yusuan.setYingli(yingli);*/


        //YuService yu=new YuService();
        //yu.insert(yusuan);
        return sum;
    }
}
