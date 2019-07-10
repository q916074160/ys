package com.example.demo.dao;

import com.example.demo.entity.Shisuan;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ShisuanMapper {
    int deleteByPrimaryKey(Integer shiid);

    int insert(Shisuan record);

    int insertSelective(Shisuan record);

    Shisuan selectByPrimaryKey(Integer shiid);

    int updateByPrimaryKeySelective(Shisuan record);

    int updateByPrimaryKey(Shisuan record);
}