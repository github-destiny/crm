package com.nero.crm.mapper;

import com.nero.crm.domain.Tran;
import com.nero.crm.vo.TranVO;
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
public interface TranMapper {

    int deleteTranByCustomerId(int customerId);

    int deleteTranByCustomerIds(@Param("ids") List<Integer> ids);

    int deleteTranByContactsId(int contactsId);

    int deleteTranByContactsIds(@Param("contactsIds") List<Integer> contactsIds);

    int insertTran(Tran tran);

    int editTran(Tran tran);

    int deleteTranById(Integer id);

    int deleteAnyTranByIds(@Param("ids") List<Integer> ids);

    List<TranVO> pageList(Map<String, Object> map);

    Tran getInfoById(Integer id);

    int deleteTranHistory(Integer id);

    int deleteAnyTranHistory(@Param("tranIds") List<Integer> tranIds);

    int getTotal();

    int insert10(@Param("trans") List<Tran> trans);

    int insertTranByClue(@Param("clueId") Integer clueId);

    int updateTranByClue(Map<String, Object> map);

}
