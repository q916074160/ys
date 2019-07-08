package com.example.demo.service;
import com.example.demo.dao.YuSuanMapper;
import com.example.demo.entity.YuSuan;
import org.springframework.stereotype.Service;

@Service
public class YuService{
    YuSuanMapper mapper;

    public int insert(YuSuan record) {
        return mapper.insert(record);
    }
}
