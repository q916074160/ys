package com.example.demo.dao;

import com.example.demo.entity.YuSuan;

public interface YuSuanMapper {
    int deleteByPrimaryKey(Integer yuid);

    int insert(YuSuan record);

    int insertSelective(YuSuan record);

    YuSuan selectByPrimaryKey(Integer yuid);

    int updateByPrimaryKeySelective(YuSuan record);

    int updateByPrimaryKey(YuSuan record);
}