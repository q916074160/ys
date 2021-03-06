package com.example.demo.entity;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class Shisuan {
    private Integer shiid;

    private Integer bid;

    private String xiangmuname;

    private Integer renshu;

    private Double gongzi;

    private Double shuifei;

    private Double fangzu;

    private Double waibao;

    private Double zhaodaifei;

    private Double tongxunfei;

    private Double riyongpin;

    private Double youjifei;

    private Double zuchefei;

    private Double shebeixiuli;

    private Double gaosutongxing;

    private Double chuchaijiayou;

    private Double shineigongjiao;

    private Double xiuchefei;

    private Double rengong;

    private Double shuidian;

    private Double chepiao;

    private Double qita;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date kaishitime;

    private Double jieguo;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date time;

    private String beizhu;

    public String getBeizhu(){return beizhu;}

    public void setBeizhu(String beizhu){this.beizhu=beizhu;}

    public Integer getShiid() {
        return shiid;
    }

    public void setShiid(Integer shiid) {
        this.shiid = shiid;
    }

    public Integer getBid() {
        return bid;
    }

    public void setBid(Integer bid) {
        this.bid = bid;
    }

    public String getXiangmuname() {
        return xiangmuname;
    }

    public void setXiangmuname(String xiangmuname) {
        this.xiangmuname = xiangmuname == null ? null : xiangmuname.trim();
    }

    public Integer getRenshu() {
        return renshu;
    }

    public void setRenshu(Integer renshu) {
        this.renshu = renshu;
    }

    public Double getGongzi() {
        return gongzi;
    }

    public void setGongzi(Double gongzi) {
        this.gongzi = gongzi;
    }


    public Double getShuifei() {
        return shuifei;
    }

    public void setShuifei(Double shuifei) {
        this.shuifei = shuifei;
    }

    public Double getFangzu() {
        return fangzu;
    }

    public void setFangzu(Double fangzu) {
        this.fangzu = fangzu;
    }

    public Double getWaibao() {
        return waibao;
    }

    public void setWaibao(Double waibao) {
        this.waibao = waibao;
    }

    public Double getZhaodaifei() {
        return zhaodaifei;
    }

    public void setZhaodaifei(Double zhaodaifei) {
        this.zhaodaifei = zhaodaifei;
    }

    public Double getTongxunfei() {
        return tongxunfei;
    }

    public void setTongxunfei(Double tongxunfei) {
        this.tongxunfei = tongxunfei;
    }

    public Double getRiyongpin() {
        return riyongpin;
    }

    public void setRiyongpin(Double riyongpin) {
        this.riyongpin = riyongpin;
    }

    public Double getYoujifei() {
        return youjifei;
    }

    public void setYoujifei(Double youjifei) {
        this.youjifei = youjifei;
    }

    public Double getZuchefei() {
        return zuchefei;
    }

    public void setZuchefei(Double zuchefei) {
        this.zuchefei = zuchefei;
    }

    public Double getShebeixiuli() {
        return shebeixiuli;
    }

    public void setShebeixiuli(Double shebeixiuli) {
        this.shebeixiuli = shebeixiuli;
    }

    public Double getGaosutongxing() {
        return gaosutongxing;
    }

    public void setGaosutongxing(Double gaosutongxing) {
        this.gaosutongxing = gaosutongxing;
    }

    public Double getChuchaijiayou() {
        return chuchaijiayou;
    }

    public void setChuchaijiayou(Double chuchaijiayou) {
        this.chuchaijiayou = chuchaijiayou;
    }

    public Double getShineigongjiao() {
        return shineigongjiao;
    }

    public void setShineigongjiao(Double shineigongjiao) {
        this.shineigongjiao = shineigongjiao;
    }

    public Double getXiuchefei() {
        return xiuchefei;
    }

    public void setXiuchefei(Double xiuchefei) {
        this.xiuchefei = xiuchefei;
    }

    public Double getRengong() {
        return rengong;
    }

    public void setRengong(Double rengong) {
        this.rengong = rengong;
    }

    public Double getShuidian() {
        return shuidian;
    }

    public void setShuidian(Double shuidian) {
        this.shuidian = shuidian;
    }

    public Double getChepiao() {
        return chepiao;
    }

    public void setChepiao(Double chepiao) {
        this.chepiao = chepiao;
    }

    public Double getQita() {
        return qita;
    }

    public void setQita(Double qita) {
        this.qita = qita;
    }

    public Date getKaishitime() {
        return kaishitime;
    }

    public void setKaishitime(Date kaishitime) {
        this.kaishitime = kaishitime;
    }

    public Double getJieguo() {
        return jieguo;
    }

    public void setJieguo(Double jieguo) {
        this.jieguo = jieguo;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }
}