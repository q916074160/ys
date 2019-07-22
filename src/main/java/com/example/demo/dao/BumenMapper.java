package com.example.demo.dao;

import com.example.demo.entity.Bumen;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface BumenMapper {
    List<Bumen> queryAll();

    int insert(Bumen record);

}