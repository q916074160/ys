package com.example.demo.dao;

import com.example.demo.entity.ShiSuan;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ShiSuanMapper {
    int deleteByPrimaryKey(Integer shiid);

    int insert(ShiSuan record);

    int insertSelective(ShiSuan record);

    ShiSuan selectByPrimaryKey(Integer shiid);

    int updateByPrimaryKeySelective(ShiSuan record);

    int updateByPrimaryKey(ShiSuan record);
}