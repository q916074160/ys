package com.example.demo.dao;

import com.example.demo.entity.Yusuan;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface YusuanMapper {

    int insert(Yusuan record);

    //动态查询
    List<Yusuan> queryYuSuan(Yusuan yusuan);




}