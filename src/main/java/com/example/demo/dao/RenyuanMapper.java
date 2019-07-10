package com.example.demo.dao;

import com.example.demo.entity.Renyuan;

public interface RenyuanMapper {
    int deleteByPrimaryKey(Integer rid);

    int insert(Renyuan record);

    int insertSelective(Renyuan record);

    Renyuan selectByPrimaryKey(Integer rid);

    int updateByPrimaryKeySelective(Renyuan record);

    int updateByPrimaryKey(Renyuan record);
}