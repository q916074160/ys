package com.example.demo.dao;

import com.example.demo.entity.Renyuan;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface RenyuanMapper {
    List<Renyuan>  queryAll();

    List<Renyuan> selectById(Integer bid);

    int insert(Renyuan record);
}