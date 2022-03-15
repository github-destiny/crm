package com.nero.crm.mapper;

import com.nero.crm.domain.Log;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author Nero Claudius
 * @version 1.0.0
 * @Date 2022/3/15
 */
@Mapper
@Repository
public interface LogMapper {

    void insert(Log log);

    List<Log> pageList(@Param("skipCount") Integer skipCount, @Param("pageSize") Integer pageSize, @Param("createTime") String createTime);

    Integer getTotal(@Param("skipCount") Integer skipCount, @Param("pageSize") Integer pageSize, @Param("createTime") String createTime);



}
