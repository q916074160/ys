package com.example.demo.dao;

import com.example.demo.entity.Shisuan;
import com.example.demo.entity.Yusuan;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ShisuanMapper {
    int deleteByPrimaryKey(Integer shiid);

    int insert(Shisuan record);

    int insertSelective(Shisuan record);

    Shisuan selectByPrimaryKey(Integer shiid);

    int updateByPrimaryKeySelective(Shisuan record);

    int updateByPrimaryKey(Shisuan record);
    List<Shisuan> queryShiSuan(Shisuan shisuan);
}