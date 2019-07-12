package com.example.demo.dao;

import com.example.demo.entity.Renyuan;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface RenyuanMapper {
    List<Renyuan> queryAll();

    int deleteByPrimaryKey(Integer rid);

    int insert(Renyuan record);

    int insertSelective(Renyuan record);

    Renyuan selectByPrimaryKey(Integer rid);

    int updateByPrimaryKeySelective(Renyuan record);

    int updateByPrimaryKey(Renyuan record);
}