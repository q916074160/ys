package com.example.demo.entity;

import java.util.Date;

public class Renyuan {
    private Integer rid;

    private String rname;

    private Integer bid;

    private Double gongzi;

    private Double gerenbaoxian;

    private Double gerenshui;

    private Double jingling;

    private Double yanglao;

    private Double yiliao;

    private Double shiye;

    private Double shengyu;

    private Double gongshang;

    private Date time;

    public Integer getRid() {
        return rid;
    }

    public void setRid(Integer rid) {
        this.rid = rid;
    }

    public String getRname() {
        return rname;
    }

    public void setRname(String rname) {
        this.rname = rname == null ? null : rname.trim();
    }

    public Integer getBid() {
        return bid;
    }

    public void setBid(Integer bid) {
        this.bid = bid;
    }

    public Double getGongzi() {
        return gongzi;
    }

    public void setGongzi(Double gongzi) {
        this.gongzi = gongzi;
    }

    public Double getGerenbaoxian() {
        return gerenbaoxian;
    }

    public void setGerenbaoxian(Double gerenbaoxian) {
        this.gerenbaoxian = gerenbaoxian;
    }

    public Double getGerenshui() {
        return gerenshui;
    }

    public void setGerenshui(Double gerenshui) {
        this.gerenshui = gerenshui;
    }

    public Double getJingling() {
        return jingling;
    }

    public void setJingling(Double jingling) {
        this.jingling = jingling;
    }

    public Double getYanglao() {
        return yanglao;
    }

    public void setYanglao(Double yanglao) {
        this.yanglao = yanglao;
    }

    public Double getYiliao() {
        return yiliao;
    }

    public void setYiliao(Double yiliao) {
        this.yiliao = yiliao;
    }

    public Double getShiye() {
        return shiye;
    }

    public void setShiye(Double shiye) {
        this.shiye = shiye;
    }

    public Double getShengyu() {
        return shengyu;
    }

    public void setShengyu(Double shengyu) {
        this.shengyu = shengyu;
    }

    public Double getGongshang() {
        return gongshang;
    }

    public void setGongshang(Double gongshang) {
        this.gongshang = gongshang;
    }

    public Date getTime(){return time;}

    public void setTime(Date time){this.time=time;}
}