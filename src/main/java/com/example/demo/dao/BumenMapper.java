package com.example.demo.dao;

import com.example.demo.entity.Bumen;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface BumenMapper {
    int deleteByPrimaryKey(Integer bid);

    int insert(Bumen record);

    int insertSelective(Bumen record);

    Bumen selectByPrimaryKey(Integer bid);

    int updateByPrimaryKeySelective(Bumen record);

    int updateByPrimaryKey(Bumen record);
}