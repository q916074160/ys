package com.example.demo.dao;

import com.example.demo.entity.Renyuan;
import org.apache.ibatis.annotations.Mapper;

import java.util.Date;
import java.util.List;

@Mapper
public interface RenyuanMapper {
    List<Renyuan>  queryAll();

    List<Renyuan> selectById(Integer bid, String time1);

    int insert(Renyuan record);
}