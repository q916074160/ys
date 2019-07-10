package com.example.demo.dao;

import com.example.demo.entity.Bumen;

public interface BumenMapper {
    int deleteByPrimaryKey(Integer bid);

    int insert(Bumen record);

    int insertSelective(Bumen record);

    Bumen selectByPrimaryKey(Integer bid);

    int updateByPrimaryKeySelective(Bumen record);

    int updateByPrimaryKey(Bumen record);
}