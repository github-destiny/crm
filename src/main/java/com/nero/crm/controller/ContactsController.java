package com.nero.crm.controller;

import com.nero.crm.domain.Contacts;
import com.nero.crm.exception.ContactsException;
import com.nero.crm.service.ContactsService;
import com.nero.crm.util.DateTimeUtil;
import com.nero.crm.util.MapUtil;
import com.nero.crm.vo.ContactsVO;
import com.nero.crm.vo.PaginationVO;
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
@RequestMapping("/contacts")
public class ContactsController {

    @Autowired
    private ContactsService contactsService;

    @PostMapping("/insert")
    public Map<String, Object> insert(Contacts contacts){
        try {
            contacts.setCreateTime(DateTimeUtil.getDate());
            contactsService.insertContacts(contacts);
            return MapUtil.getSuccessMap("insert success");
        } catch (ContactsException e) {
            return MapUtil.getFailureMap(e.getMessage());
        }
    }

    @PostMapping("/edit")
    public Map<String, Object> edit(Contacts contacts){
        try {
            contacts.setEditTime(DateTimeUtil.getDate());
            contactsService.editContacts(contacts);
            return MapUtil.getSuccessMap("edit success");
        } catch (ContactsException e) {
            return MapUtil.getFailureMap(e.getMessage());
        }
    }

    @PostMapping("/delete/{id}")
    public Map<String, Object> deleteOne(@PathVariable("id") Integer id){
        contactsService.deleteContactsById(id);
        return MapUtil.getSuccessMap("delete success");
    }

    @PostMapping("/delete/many")
    public Map<String, Object> deleteAny(@RequestParam("ids") List<Integer> ids){
        contactsService.deleteAnyContactsByIds(ids);
        return MapUtil.getSuccessMap("delete all success");
    }

    @PostMapping("/pageList")
    public Map<String, Object> pageList(@RequestParam("pageNo") Integer pageNo,
                                        @RequestParam("pageSize") Integer pageSize,
                                        @RequestParam(value = "name", required = false) String name,
                                        @RequestParam(value = "owner", required = false) String owner,
                                        @RequestParam(value = "fullname", required = false) String fullname,
                                        @RequestParam(value = "source", required = false) String source,
                                        @RequestParam(value = "birth", required = false) String birth){
        Map<String, Object> map = new HashMap<>();
        int skipCount = (pageNo - 1) * pageSize;
        map.put("skipCount", skipCount);
        map.put("pageSize", pageSize);
        map.put("name", name);
        map.put("owner", owner);
        map.put("fullname", fullname);
        map.put("source", source);
        map.put("birth", birth);
        PaginationVO<ContactsVO> vo = contactsService.pageList(map);
        return MapUtil.getSuccessMap(vo);
    }

    @GetMapping("/{id}")
    public Map<String, Object> getInfo(@PathVariable("id") Integer id){
        return MapUtil.getSuccessMap(contactsService.getInfoById(id));
    }

}
