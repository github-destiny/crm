package com.nero.crm.service;

import com.nero.crm.domain.Clue;
import com.nero.crm.exception.ClueException;
import com.nero.crm.mapper.ClueMapper;
import com.nero.crm.mapper.ContactsMapper;
import com.nero.crm.mapper.CustomerMapper;
import com.nero.crm.mapper.TranMapper;
import com.nero.crm.vo.ActivityVO;
import com.nero.crm.vo.ClueVO;
import com.nero.crm.vo.PaginationVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

/**
 * @author Nero Claudius
 * @version 1.0.0
 * @Date 2022/2/17
 */
@Service
public class ClueService {

    @Autowired
    private ClueMapper clueMapper;

    @Autowired
    private CustomerMapper customerMapper;

    @Autowired
    private ContactsMapper contactsMapper;

    @Autowired
    private TranMapper tranMapper;

    public int createOneClue(Clue clue){
        int i = clueMapper.createOnnClue(clue);
        if (i != 1)
            throw new ClueException("插入数据失败");
        return i;
    }

    @Transactional
    public int deleteOneClue(int id){
        int i = clueMapper.deleteClue(id);
        int rCount = clueMapper.getCountAboutActivityRelation(id);
        int j = clueMapper.deleteActivitiesRelationThisClue(id);
        if (i == 1 && j == rCount)
            return i;
        throw new ClueException("删除失败!");
    }

    @Transactional
    public int deleteManyClue(List<Integer> clueIds){
        int size = clueIds.size();
        int removeClueCount = clueMapper.deleteManyClue(clueIds);
        // 移除所有与线索列表中线索相关的市场活动信息
        // 对于删除而言需要进行校验，但这里就不予校验了
        // 校验的实现最简单的就是遍历，统计与列表中线索相关的市场活动个数
        // 并于移除的个数进行比对，从而确定是否数据全部移除
        clueMapper.deleteActivitiesByClueIdList(clueIds);
        if (removeClueCount == size)
            return removeClueCount;
        throw new ClueException("删除全部数据失败!");
    }

    public int editClue(Clue clue){
        int i = clueMapper.editClue(clue);
        if (i == 1)
            return i;
        throw new ClueException("更新线索失败!");
    }

    public PaginationVO<ClueVO> pageList(Map<String, Object> map){
        List<ClueVO> dataList = clueMapper.pageList(map);
        int total = clueMapper.getTotal();
        PaginationVO<ClueVO> vo = new PaginationVO<>();
        vo.setTotal(total);
        vo.setDataList(dataList);
        return vo;
    }

    public Clue getInfo(int id){
        Clue info = clueMapper.getClueInfo(id);
        if (null == info)
            throw new ClueException("查无此线索");
        return info;
    }

    public List<ActivityVO> getActivityByClueId(int clueId){
        return clueMapper.getActivityRelation(clueId);
    }

    public int connectClueAndActivity(List<Integer> activitiesIds, int clueId){
        // 进行校验，如果存在已经有关联的市场活动，那么将不会重复进行插入
        Iterator<Integer> iterator = activitiesIds.iterator();
        while(iterator.hasNext()){
            int activitiesId = iterator.next();
            int i = clueMapper.checkExistsRelation(clueId, activitiesId);
            if (i == 1)
                iterator.remove();
        }
        // 对于一个市场活动是否能够绑定多个线索，我个人认为则是一个市场活动也可以绑定多个线索
        // 因此本crm项目按照此标准进行设计
        int i = clueMapper.connectClueAndActivity(clueId, activitiesIds);
        if (i != activitiesIds.size())
            throw new ClueException("插入市场活动关联失败!");
        return i;
    }

    public int getTotal(){
        return clueMapper.getTotal();
    }

    @Transactional
    public void convert(Integer id, boolean flag, Map<String, Object> map){
        // 线索转换
        Clue clue = clueMapper.getClueInfo(id);
        // 根据线索生成customer
        customerMapper.insertCustomerByClue(id);
        // 根据线索生成contacts
        contactsMapper.insertContactsByClue(id);
        // 根据线索生成交易信息
        if (flag) {
            tranMapper.insertTranByClue(id);
            tranMapper.updateTranByClue(map);
        }
        // 删除线索信息
        clueMapper.deleteClue(id);
    }



}
