package com.nero.crm.service;

import com.nero.crm.domain.Tran;
import com.nero.crm.exception.TranException;
import com.nero.crm.mapper.TranMapper;
import com.nero.crm.vo.PaginationVO;
import com.nero.crm.vo.TranVO;
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
public class TranService {

    @Autowired
    private TranMapper tranMapper;

    public void insertTran(Tran tran){
        int i = tranMapper.insertTran(tran);
        if (i != 1)
            throw new TranException("交易创建失败!");
    }

    public void editTran(Tran tran){
        int i = tranMapper.editTran(tran);
        if (i != 1)
            throw new TranException("交易修改失败!");
    }

    @Transactional
    public void deleteTran(Integer id){
        // 删除交易信息
        tranMapper.deleteTranById(id);
        // 同时删除交易记录
        tranMapper.deleteTranHistory(id);
    }

    public void  deleteAnyTran(List<Integer> tranIds){
        tranMapper.deleteAnyTranByIds(tranIds);
        tranMapper.deleteAnyTranHistory(tranIds);
    }

    public PaginationVO<TranVO> pageList(Map<String, Object> map){
        List<TranVO> dataList = tranMapper.pageList(map);
        int total = tranMapper.getTotal();
        PaginationVO<TranVO> vo = new PaginationVO<>();
        vo.setDataList(dataList);
        vo.setTotal(total);
        return vo;
    }

    public Tran getInfo(Integer id){
        return tranMapper.getInfoById(id);
    }

    public List<TranVO> getTranVOList(Integer customerId){
        return tranMapper.getTranVOByCustomerId(customerId);
    }

    public List<TranVO> getTranVOListByContactsId(Integer contactsId){
        return tranMapper.getTranVOByContactsId(contactsId);
    }

}
