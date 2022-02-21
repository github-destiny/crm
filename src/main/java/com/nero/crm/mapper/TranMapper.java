package com.nero.crm.mapper;

import com.nero.crm.domain.Clue;
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

    /**
     * 删除交易通过customerId
     * @param customerId customerId
     * @return
     */
    int deleteTranByCustomerId(int customerId);

    /**
     * 删除交易通过customer id 列表
     * @param ids customer id 列表
     * @return
     */
    int deleteTranByCustomerIds(@Param("ids") List<Integer> ids);

    /**
     * 删除交易通过contacts id
     * @param contactsId contacts id
     * @return
     */
    int deleteTranByContactsId(int contactsId);

    /**
     * 删除交易通过contacts id 列表
     * @param contactsIds id 列表
     * @return
     */
    int deleteTranByContactsIds(@Param("contactsIds") List<Integer> contactsIds);

    /**
     * 插入一条交易
     * @param tran tran
     * @return
     */
    int insertTran(Tran tran);

    /**
     * 修改一条交易信息
     * @param tran 除id以外，其他数据可以随意传递
     * @return
     */
    int editTran(Tran tran);

    /**
     * 删除交易通过交易id
     * @param id id
     * @return
     */
    int deleteTranById(Integer id);

    /**
     * 批量删除交易
     * @param ids  交易id列表
     * @return
     */
    int deleteAnyTranByIds(@Param("ids") List<Integer> ids);

    /**
     * 分页与模糊查询
     * @param map 参数列表
     * @return
     */
    List<TranVO> pageList(Map<String, Object> map);

    /**
     * 获取一条交易的详细信息
     * @param id id
     * @return
     */
    Tran getInfoById(Integer id);

    /**
     * 删除交易历史
     * @param id id
     * @return
     */
    int deleteTranHistory(Integer id);

    /**
     * 批量删除交易历史
     * @param tranIds
     * @return
     */
    int deleteAnyTranHistory(@Param("tranIds") List<Integer> tranIds);

    /**
     * 获取交易总数
     * @return
     */
    int getTotal();

    /**
     * 测试接口，批量插入10条数据
     * @param trans tran列表
     * @return
     */
    int insert10(@Param("trans") List<Tran> trans);

    /**
     * 插入tran通过线索id
     * @param clueId 线索id
     * @return
     */
    int insertTranByClueId(@Param("clueId") Integer clueId);

    /**
     * 插入交易通过线索
     * @param clue 线索
     * @return
     */
    int insertTranByClue(Clue clue);

    /**
     * 更新通过线索转换的交易信息，补充完整数据
     * @param map 参数列表
     * @return
     */
    int updateTranByClue(Map<String, Object> map);

    /**
     * 通过customerId获取与该id相关的所有交易
     * @param customerId customer id
     * @return
     */
    List<TranVO> getTranVOByCustomerId(Integer customerId);

    /**
     * 通过contactsId获取tran列表
     * @param contactsId
     * @return
     */
    List<TranVO> getTranVOByContactsId(Integer contactsId);

    /**
     * 在某条市场活动被删除后，更新交易中的与这条市场活动相关的交易的activityId属性
     * @param activityId
     * @return
     */
    int updateTranRelationActivity(Integer activityId);

    /**
     * 批量修改activityId属性
     * @param activityIds
     * @return
     */
    int updateTranRelationActivities(@Param("activityIds") List<Integer> activityIds);

}
