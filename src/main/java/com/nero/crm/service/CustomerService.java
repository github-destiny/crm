package com.nero.crm.service;

import com.nero.crm.domain.Customer;
import com.nero.crm.exception.CustomerException;
import com.nero.crm.mapper.ContactsMapper;
import com.nero.crm.mapper.CustomerMapper;
import com.nero.crm.mapper.TranMapper;
import com.nero.crm.vo.CustomerVO;
import com.nero.crm.vo.PaginationVO;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

/**
 * @author Nero Claudius
 * @version 1.0.0
 * @Date 2022/2/18
 */
@Service
@Slf4j
public class CustomerService {

    @Autowired
    private CustomerMapper customerMapper;

    @Autowired
    private TranMapper tranMapper;

    @Autowired
    private ContactsMapper contactsMapper;

    public void insertCustomer(Customer customer){
        int i = customerMapper.insertCustomer(customer);
        if (i != 1)
            throw new CustomerException("客户对象插入失败!");
    }

    public void editCustomer(Customer customer) {
        int i = customerMapper.editCustomer(customer);
        if (i != 1)
            throw new CustomerException("客户信息修改失败!");
    }

    @Transactional
    public void deleteCustomer(int id){
        // 删除客户信息
        customerMapper.deleteOneCustomer(id);
        // 删除与客户相关的交易信息
        tranMapper.deleteTranByCustomerId(id);
        // 删除与客户相关的联系人信息
        contactsMapper.deleteContactsByCustomerId(id);
    }

    @Transactional
    public void deleteAnyCustomer(List<Integer> ids){
        // 批量删除客户信息
        customerMapper.deleteAnyCustomer(ids);
        // 批量删除联系人
        contactsMapper.deleteContactsByCustomerIds(ids);
        // 批量删除交易记录
        tranMapper.deleteTranByCustomerIds(ids);
    }

    public PaginationVO<CustomerVO> pageList(Map<String, Object> map){
        List<CustomerVO> dataList = customerMapper.pageList(map);
        int total = customerMapper.getTotal();
        PaginationVO<CustomerVO> vo = new PaginationVO<>();
        vo.setDataList(dataList);
        vo.setTotal(total);
        return vo;
    }

    public Customer getCustomerInfoById(int id){
        return customerMapper.getCustomerInfo(id);
    }

    public void insert10(List<Customer> customerList){
        log.warn("================");
        log.warn("你正在调用测试接口!");
        customerMapper.insert10(customerList);
        log.warn("成功插入10条数据!");
        log.warn("================");
    }

}
