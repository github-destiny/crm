package com.nero.crm.controller;

import com.nero.crm.domain.*;
import com.nero.crm.mapper.*;
import com.nero.crm.service.CustomerService;
import com.nero.crm.util.DateTimeUtil;
import com.nero.crm.util.UUIDUtil;
import lombok.extern.slf4j.Slf4j;
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
@Slf4j
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

    @Autowired
    private TestMapper testMapper;

    @RequestMapping("/access")
    public Object access() {
        Map<String, Object> map = new HashMap<>();
        map.put("status", 200);
        map.put("msg", "ok");
        map.put("timestamp", DateTimeUtil.getDate());
        map.put("hello", "项目启动成功~");
        return map;
    }

    private void insertActivity() {
        List<Activity> list = new ArrayList<>();
        for (int i = 0; i < 10; i++) {
            Activity activity = new Activity("asdfgh", "发传单" + i,
                    DateTimeUtil.getDate(), DateTimeUtil.getDate(),
                    Integer.toString(i * 1000), "发传单" + i, DateTimeUtil.getDate(), "asdfgh", "", "");
            list.add(activity);
        }
        activityMapper.insertManyData(list);
    }

    private int getTotal() {
        return activityMapper.getTotal();
    }

    private void insertClue(){
        List<Clue> clueList = new ArrayList<>();
        for (int i = 0; i < 10; i++) {
            Clue clue = new Clue("线索" + i, "先生", "asdfgh", "公司" + i, "CTO", i + "@qq.com", i + "xxxxxxxx", "www." + i + ".com", "0" + i + "0-xxxxxx", "联系中", "广告",
                    "asdfgh", DateTimeUtil.getDate(), "描述" + i, "联系纪要" + i, DateTimeUtil.getDate(), "地区" + i);
            clueList.add(clue);
        }
        clueMapper.insertClue10(clueList);
    }

    private void insertClueActivityRelation(){
        for(int i = 1, j = 10; i <= 10 && j >= 1; i++, j--){
            clueMapper.insertClueActivityRelation(i, j);
        }
    }

    private Map<String, Object> getMap(Integer code, String msg, Integer count){
        Map<String, Object> map = new HashMap<>();
        map.put("status", code);
        map.put("msg", msg);
        map.put("count", count);
        return map;
    }

    private void customerTest(){
        // 模拟数据
        List<Customer> customerList = new ArrayList<>();
        for (int i = 0; i < 10; i++) {
            Customer customer = new Customer("asdfgh", "公司" + i, "www." + i + ".com", Integer.toString(i), "asdfgh", DateTimeUtil.getDate(), Integer.toString(i), DateTimeUtil.getDate(), Integer.toString(i), Integer.toString(i));
            customerList.add(customer);
        }
        customerService.insert10(customerList);
    }

    /**
     * @return
     */
    private void contacts(){
        List<Contacts> contactsList = new ArrayList<>();
        for (int i = 0; i < 10; i++) {
            Contacts contacts = new Contacts("asdfgh", "广告", i, "李" + i, "先生", i + "@qq.com", Integer.toString(i), Integer.toString(i), "2022-01-01", "asdfgh", DateTimeUtil.getDate(),
                    Integer.toString(i), Integer.toString(i), DateTimeUtil.getDate(), Integer.toString(i));
            contactsList.add(contacts);
        }
        contactsMapper.insert10(contactsList);
    }

    /**|
     * @return
     */
    private void tran(){
        ArrayList<Tran> list = new ArrayList<>();
        for (int i = 0; i < 10; i++) {
            Tran tran = new Tran("asdfgh", Integer.toString(5000), "交易" + i, "2022-01-01", 5, "资质审查", "新业务", "广告", 6, 5, "asdfgh", "2022-01-01", Integer.toString(i), Integer.toString(i), "2022-01-01", i * 10);
            list.add(tran);
        }
        tranMapper.insert10(list);
    }

    @GetMapping("/itest")
    public Map<String, Object> insertTest(){
        Test test = new Test(UUIDUtil.getUUID(), new Random().nextInt(100));
        int insert = testMapper.insertByTest(test);
        log.info("test.id:{}", test.getId());
        return getMap(200, Integer.toString(insert), 1);
    }

    @GetMapping("/init")
    public Map<String, Object> init(){
        Map<String, Object> map = new HashMap<>();
        testMapper.clearTables();
        map.put("op1", "truncate all table....success!");
        // activity
        insertActivity();
        map.put("op2", "insert tbl_activity....success!");
        int total = getTotal();
        map.put("activity_total", total);
        // clue
        insertClue();
        map.put("op3", "insert tbl_clue....success!");
        insertClueActivityRelation();
        map.put("op4", "insert tbl_clue_activity_relation....success!");
        // customer
        customerTest();
        map.put("op5", "insert tbl_customer....success!");
        // contacts
        contacts();
        map.put("op6", "insert tbl_contacts....success!");
        // tran
        tran();
        map.put("op7", "insert tbl_tran....success!");
        map.put("res", "all operator completed...");
        map.put("status", 200);
        return map;
    }
}
