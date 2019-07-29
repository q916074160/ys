package com.example.demo.dao;

import com.example.demo.entity.Renyuan;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

@Mapper
public interface RenyuanMapper {
    List<Renyuan>  queryAll();

    List<Renyuan> selectById(@Param("bid")Integer bid,@Param("time1")String time1);

    int insert(Renyuan record);
}