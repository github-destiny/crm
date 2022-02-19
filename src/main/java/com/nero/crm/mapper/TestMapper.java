package com.nero.crm.mapper;

import com.nero.crm.domain.Test;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

/**
 * @author Nero Claudius
 * @version 1.0.0
 * @Date 2022/2/19
 */
@Mapper
@Repository
public interface TestMapper {

    int insert(@Param("name") String name, @Param("age") Integer age);

    int insertByTest(Test test);

    /**
     * 清空主数据表内容
     * @return
     */
    int clearTables();

}
