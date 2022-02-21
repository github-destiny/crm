package com.nero.crm.mapper;

import com.nero.crm.domain.Clue;
import com.nero.crm.domain.Contacts;
import com.nero.crm.vo.ContactsVO;
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
@Repository
@Mapper
public interface ContactsMapper {

    int deleteContactsByCustomerId(int customerId);

    int deleteContactsByCustomerIds(@Param("ids") List<Integer> ids);

    int insertContact(Contacts contacts);

    int editContact(Contacts contacts);

    int deleteContactById(Integer id);

    int deleteAnyContactByIds(@Param("ids") List<Integer> ids);

    List<ContactsVO> pageList(Map<String, Object> map);

    Contacts getInfoById(Integer id);

    int deleteRelationAboutActivity(int contactsId);

    int deleteRelationAboutActivityByContactsIds(@Param("contactsIds") List<Integer> contactsIds);

    int getTotal();

    int insert10(@Param("contactsList") List<Contacts> contactsList);

    int insertContactsByClueId(Integer clueId);

    int insertContactsByClue(@Param("clue") Clue clue, @Param("customerId") Integer customerId);

    List<ContactsVO> getContactsListByCustomerId(Integer customerId);

    /**
     * 通过aid和contactsId删除关联
     * @param activityId aid
     * @param contactsId cid
     * @return
     */
    int deleteRelationByAIdContactsId(@Param("activityId") Integer activityId, @Param("contactsId") Integer contactsId);

    /**
     * 删除市场活动与contacts的关联
     * @param activityId
     * @return
     */
    int deleteRelationActivity(Integer activityId);

    /**
     * 批量删除关联
     * @param activityIds
     * @return
     */
    int deleteRelationActivities(@Param("activityIds") List<Integer> activityIds);
}
