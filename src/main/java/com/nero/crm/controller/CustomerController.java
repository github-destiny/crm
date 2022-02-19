package com.nero.crm.controller;

import com.nero.crm.domain.Customer;
import com.nero.crm.exception.CustomerException;
import com.nero.crm.service.ContactsService;
import com.nero.crm.service.CustomerService;
import com.nero.crm.service.TranService;
import com.nero.crm.util.DateTimeUtil;
import com.nero.crm.util.MapUtil;
import com.nero.crm.vo.ContactsVO;
import com.nero.crm.vo.CustomerVO;
import com.nero.crm.vo.PaginationVO;
import com.nero.crm.vo.TranVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author Nero Claudius
 * @version 1.0.0
 * @Date 2022/2/18
 */
@RestController
@RequestMapping("/customer")
public class CustomerController {

    @Autowired
    private CustomerService customerService;

    @Autowired
    private TranService tranService;

    @Autowired
    private ContactsService contactsService;

    @PostMapping("/insert")
    public Map<String, Object> insertCustomer(Customer customer){
        try {
            customerService.insertCustomer(customer);
            customer.setCreateTime(DateTimeUtil.getDate());
            return MapUtil.getSuccessMap("insert success");
        } catch (CustomerException e) {
            return MapUtil.getFailureMap(e.getMessage());
        }
    }

    @PostMapping("/edit")
    public Map<String, Object> editCustomer(Customer customer){
        try {
            customerService.editCustomer(customer);
            customer.setEditTime(DateTimeUtil.getDate());
            return MapUtil.getSuccessMap("edit success");
        } catch (CustomerException e) {
            return MapUtil.getFailureMap(e.getMessage());
        }
    }

    @PostMapping("/delete/{id}")
    public Map<String, Object> deleteCustomer(@PathVariable("id") int id){
        try {
            customerService.deleteCustomer(id);
            return MapUtil.getSuccessMap("delete success");
        } catch (RuntimeException e) {
            return MapUtil.getFailureMap(e.getMessage());
        }
    }

    @PostMapping("/delete/many")
    public Map<String, Object> deleteAnyCustomer(@RequestParam("ids") List<Integer> ids){
        try {
            customerService.deleteAnyCustomer(ids);
            return MapUtil.getSuccessMap("delete success");
        } catch (Exception e) {
            return MapUtil.getFailureMap(e.getMessage());
        }
    }

    @PostMapping("/pageList")
    public Map<String, Object> pageList(@RequestParam("pageNo") Integer pageNo,
                                        @RequestParam("pageSize") Integer pageSize,
                                        @RequestParam(value = "name", required = false) String name,
                                        @RequestParam(value = "owner", required = false) String owner,
                                        @RequestParam(value = "mhone", required = false) String mphone,
                                        @RequestParam(value = "website", required = false) String website){
        Map<String, Object> map = new HashMap<>();
        int skipCount = (pageNo - 1) * pageSize;
        map.put("skipCount", skipCount);
        map.put("pageSize", pageSize);
        map.put("name", name);
        map.put("owner", owner);
        map.put("mhone", mphone);
        map.put("website", website);
        PaginationVO<CustomerVO> vo = customerService.pageList(map);
        return MapUtil.getSuccessMap(vo);
    }

    @GetMapping("/{id}")
    public Map<String, Object> getCustomerInfo(@PathVariable("id") Integer id){
        return MapUtil.getSuccessMap(customerService.getCustomerInfoById(id));
    }

    @GetMapping("/tran/{id}")
    public Map<String, Object> getTranVO(@PathVariable("id") Integer customerId){
        List<TranVO> dataList = tranService.getTranVOList(customerId);
        return MapUtil.getSuccessMap(dataList);
    }

    @PostMapping("/tran/{id}")
    public Map<String, Object> deleteTran(@PathVariable("id") Integer tranId){
        tranService.deleteTran(tranId);
        return MapUtil.getSuccessMap("删除了该条交易");
    }

    @GetMapping("/contacts/{id}")
    public Map<String, Object> getContactsVO(@PathVariable("id") Integer customerId){
        List<ContactsVO> dataList = contactsService.getContactsListByCustomerId(customerId);
        return MapUtil.getSuccessMap(dataList);
    }

    @PostMapping("/contacts/{id}")
    public Map<String, Object> deleteContactsById(@PathVariable("id") Integer contactsId){
        contactsService.deleteContactsById(contactsId);
        return MapUtil.getSuccessMap("delete success");
    }

}
