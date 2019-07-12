package com.example.demo.dao;

import com.example.demo.entity.Yusuan;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface YusuanMapper {
    int deleteByPrimaryKey(Integer yuid);

    int insert(Yusuan record);

    int insertSelective(Yusuan record);

    Yusuan selectByPrimaryKey(Integer yuid);

    int updateByPrimaryKeySelective(Yusuan record);

    int updateByPrimaryKey(Yusuan record);
}