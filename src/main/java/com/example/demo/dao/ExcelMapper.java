package com.example.demo.dao;

import com.example.demo.entity.Excel;

public interface ExcelMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Excel record);

    int insertSelective(Excel record);

    Excel selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Excel record);

    int updateByPrimaryKey(Excel record);
}