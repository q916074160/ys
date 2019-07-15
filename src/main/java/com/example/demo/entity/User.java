package com.example.demo.entity;

public class User {
    private Integer uid;

    private String uname;

    private String upass;

    private Integer uleve;

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname == null ? null : uname.trim();
    }

    public String getUpass() {
        return upass;
    }

    public void setUpass(String upass) {
        this.upass = upass == null ? null : upass.trim();
    }

    public Integer getUleve() {
        return uleve;
    }

    public void setUleve(Integer uleve) {
        this.uleve = uleve;
    }
}