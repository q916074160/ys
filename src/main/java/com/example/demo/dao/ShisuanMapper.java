package com.example.demo.dao;

import com.example.demo.entity.Shisuan;
import com.example.demo.entity.Yusuan;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ShisuanMapper {

    int insert(Shisuan record);

    List<Shisuan>  queryAll();
    //动态查询
    List<Shisuan> queryShiSuan(Shisuan shisuan);
    //计算实算总和
   public List<Shisuan> sumShiSuan(Shisuan shisuan);
}