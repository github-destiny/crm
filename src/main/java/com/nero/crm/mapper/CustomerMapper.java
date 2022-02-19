package com.nero.crm.mapper;

import com.nero.crm.domain.Clue;
import com.nero.crm.domain.Customer;
import com.nero.crm.vo.CustomerVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

/**
 * @author Nero Claudius
 * @version 1.0.0
 * @Date 2022/2/18
 */
@Mapper
@Repository
public interface CustomerMapper {

    int insertCustomer(Customer customer);

    int editCustomer(Customer customer);

    int deleteOneCustomer(int id);

    int deleteAnyCustomer(@Param("ids") List<Integer> ids);

    List<CustomerVO> pageList(Map<String, Object> map);

    Customer getCustomerInfo(int id);

    int getTotal();

    int insert10(@Param("customerList") List<Customer> customerList);

    /**
     * 通过clueId插入数据
     * @param clueId
     * @return
     */
    int insertCustomerByClueId(Integer clueId);

    int insertCustomerByClue(Clue clue);
}
