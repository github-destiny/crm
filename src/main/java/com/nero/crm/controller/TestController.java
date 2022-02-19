package com.nero.crm.controller;

import com.nero.crm.domain.*;
import com.nero.crm.mapper.*;
import com.nero.crm.service.CustomerService;
import com.nero.crm.util.DateTimeUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.*;

/**
 * @author Nero Claudius
 * @version 1.0.0
 * @Date 2022/2/15
 */
@Controller
@RequestMapping("/test")
@ResponseBody
public class TestController {

    @Autowired
    private ActivityMapper activityMapper;

    @Autowired
    private ClueMapper clueMapper;

    @Autowired
    private CustomerService customerService;

    @Autowired
    private ContactsMapper contactsMapper;

    @Autowired
    private TranMapper tranMapper;

    @RequestMapping("/access")
    public Object access() {
        Map<String, Object> map = new HashMap<>();
        map.put("status", 200);
        map.put("msg", "ok");
        map.put("timestamp", DateTimeUtil.getDate());
        map.put("hello", "项目启动成功~");
        return map;
    }

    @RequestMapping("/iactivity")
    public Map<String, Object> insertActivity() {
        List<Activity> list = new ArrayList<>();
        for (int i = 0; i < 10; i++) {
            Activity activity = new Activity("asdfgh", "发传单" + i,
                    DateTimeUtil.getDate(), DateTimeUtil.getDate(),
                    Integer.toString(i * 1000), "发传单" + i, DateTimeUtil.getDate(), "asdfgh", "", "");
            list.add(activity);
        }
        int i = activityMapper.insertManyData(list);
        Map<String, Object> map = new HashMap<>();
        if (i == 10) {
            map.put("count", 10);
            map.put("status", 200);
            map.put("msg", "插入成功");
        } else {
            map.put("error", "error");
            map.put("status", 500);
            map.put("msg", "插入失败!");
        }
        return map;
    }

    @RequestMapping("/atotal")
    public Map<String, Object> getTotal() {
        int total = activityMapper.getTotal();
        Map<String, Object> map = new HashMap<>();
        map.put("status", 200);
        map.put("total", total);
        return map;
    }

    /**
     * 插入clue数据
     * @return
     */
    @RequestMapping("/iclue")
    public Map<String, Object> insertClue(){
        List<Clue> clueList = new ArrayList<>();
        for (int i = 0; i < 10; i++) {
            Clue clue = new Clue("线索" + i, "先生", "asdfgh", "公司" + i, "CTO", i + "@qq.com", i + "xxxxxxxx", "www." + i + ".com", "0" + i + "0-xxxxxx", "联系中", "广告",
                    "asdfgh", DateTimeUtil.getDate(), "描述" + i, "联系纪要" + i, DateTimeUtil.getDate(), "地区" + i);
            clueList.add(clue);
        }
        clueMapper.insertClue10(clueList);
        return getMap(200, "插入成功", 10);
    }

    @RequestMapping("/icar")
    public Map<String, Object> insertClueActivityRelation(){
        for(int i = 1, j = 10; i <= 10 && j >= 1; i++, j--){
            clueMapper.insertClueActivityRelation(i, j);
        }
        return getMap(200, "插入成功", 10);
    }

    private Map<String, Object> getMap(Integer code, String msg, Integer count){
        Map<String, Object> map = new HashMap<>();
        map.put("status", code);
        map.put("msg", msg);
        map.put("count", count);
        return map;
    }

    @GetMapping("/customer")
    public Map<String, Object> customerTest(){
        // 模拟数据
        List<Customer> customerList = new ArrayList<>();
        for (int i = 0; i < 10; i++) {
            Customer customer = new Customer("asdfgh", "公司" + i, "www." + i + ".com", Integer.toString(i), "asdfgh", DateTimeUtil.getDate(), Integer.toString(i), DateTimeUtil.getDate(), Integer.toString(i), Integer.toString(i));
            customerList.add(customer);
        }
        customerService.insert10(customerList);
        return getMap(200, "插入成功", 10);
    }

    /**
     * @return
     */
    @GetMapping("/contacts")
    public Map<String, Object> contacts(){
        List<Contacts> contactsList = new ArrayList<>();
        for (int i = 0; i < 10; i++) {
            Contacts contacts = new Contacts("asdfgh", "广告", i, "李" + i, "先生", i + "@qq.com", Integer.toString(i), Integer.toString(i), "2022-01-01", "asdfgh", DateTimeUtil.getDate(),
                    Integer.toString(i), Integer.toString(i), DateTimeUtil.getDate(), Integer.toString(i));
            contactsList.add(contacts);
        }
        contactsMapper.insert10(contactsList);
        return getMap(200, "插入成功", 10);
    }

    /**|
     *         this.owner = owner;
     *         this.money = money;
     *         this.name = name;
     *         this.expectedDate = expectedDate;
     *         this.customerId = customerId;
     *         this.stage = stage;
     *         this.type = type;
     *         this.source = source;
     *         this.activityId = activityId;
     *         this.contactsId = contactsId;
     *         this.createBy = createBy;
     *         this.createTime = createTime;
     *         this.description = description;
     *         this.contactSummary = contactSummary;
     *         this.nextContactTime = nextContactTime;
     *         this.possible = possible;
     * @return
     */
    @GetMapping("/tran")
    public Map<String, Object> tran(){
        ArrayList<Tran> list = new ArrayList<>();
        for (int i = 0; i < 10; i++) {
            Tran tran = new Tran("asdfgh", Integer.toString(5000), "交易" + i, "2022-01-01", 5, "资质审查", "新业务", "广告", 6, 5, "asdfgh", "2022-01-01", Integer.toString(i), Integer.toString(i), "2022-01-01", i * 10);
            list.add(tran);
        }
        tranMapper.insert10(list);
        return getMap(200, "插入成功", 10);
    }
}
