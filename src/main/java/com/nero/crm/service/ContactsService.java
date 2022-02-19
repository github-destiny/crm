package com.nero.crm.service;

import com.nero.crm.domain.Contacts;
import com.nero.crm.exception.ContactsException;
import com.nero.crm.mapper.ContactsMapper;
import com.nero.crm.mapper.TranMapper;
import com.nero.crm.vo.ContactsVO;
import com.nero.crm.vo.PaginationVO;
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
public class ContactsService {

    @Autowired
    private ContactsMapper contactsMapper;

    @Autowired
    private TranMapper tranMapper;

    public void insertContacts(Contacts contacts){
        int i = contactsMapper.insertContact(contacts);
        if (i != 1)
            throw new ContactsException("联系人插入失败!");
    }

    public void editContacts(Contacts contacts){
        int i = contactsMapper.editContact(contacts);
        if (i != 1)
            throw new ContactsException("联系人修改失败!");
    }

    @Transactional
    public void deleteContactsById(Integer id){
        // 删除联系人
        contactsMapper.deleteContactById(id);
        // 删除与联系人关联的市场活动
        contactsMapper.deleteRelationAboutActivity(id);
        // 删除与联系人有关的交易
        tranMapper.deleteTranByContactsId(id);
    }

    @Transactional
    public void deleteAnyContactsByIds(List<Integer> ids){
        contactsMapper.deleteContactsByCustomerIds(ids);
        contactsMapper.deleteRelationAboutActivityByContactsIds(ids);
        tranMapper.deleteTranByContactsIds(ids);
    }

    public PaginationVO<ContactsVO> pageList(Map<String, Object> map){
        List<ContactsVO> dataList = contactsMapper.pageList(map);
        int total = contactsMapper.getTotal();
        PaginationVO<ContactsVO> vo = new PaginationVO<>();
        vo.setTotal(total);
        vo.setDataList(dataList);
        return vo;
    }

    public Contacts getInfoById(Integer id){
        return contactsMapper.getInfoById(id);
    }

    public List<ContactsVO> getContactsListByCustomerId(Integer customerId){
        return contactsMapper.getContactsListByCustomerId(customerId);
    }

}
