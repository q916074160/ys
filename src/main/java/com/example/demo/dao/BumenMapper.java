package com.example.demo.dao;

import com.example.demo.entity.Bumen;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface BumenMapper {
    List<Bumen> queryAll();

    int deleteByPrimaryKey(Integer bid);

    int insert(Bumen record);

    int insertSelective(Bumen record);

    Bumen selectByPrimaryKey(Integer bid);

    int updateByPrimaryKeySelective(Bumen record);

    int updateByPrimaryKey(Bumen record);
}