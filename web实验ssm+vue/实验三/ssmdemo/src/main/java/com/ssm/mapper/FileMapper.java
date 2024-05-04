package com.ssm.mapper;
import com.ssm.entity.File;
public interface FileMapper {
    File selectByPrimaryKey(Integer id);
}