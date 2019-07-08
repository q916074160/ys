package com.example.demo.dao;

import com.example.demo.entity.ShiSuan;

public interface ShiSuanMapper {
    int deleteByPrimaryKey(Integer shiid);

    int insert(ShiSuan record);

    int insertSelective(ShiSuan record);

    ShiSuan selectByPrimaryKey(Integer shiid);

    int updateByPrimaryKeySelective(ShiSuan record);

    int updateByPrimaryKey(ShiSuan record);
}