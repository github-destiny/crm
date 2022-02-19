package com.nero.crm.service;

import com.nero.crm.domain.Activity;
import com.nero.crm.exception.ActivityException;
import com.nero.crm.mapper.ActivityMapper;
import com.nero.crm.vo.ActivityVO;
import com.nero.crm.vo.PaginationVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

/**
 * @author Nero Claudius
 * @version 1.0.0
 * @Date 2022/2/17
 */
@Service
public class ActivityService {

    @Autowired
    private ActivityMapper activityMapper;

    public int insertActivity(Activity activity){
        int i = activityMapper.insertActivity(activity);
        if (i != 1)
            throw new ActivityException("市场活动插入失败!");
        return i;
    }

    public int editActivity(Activity activity){
        int i = activityMapper.editActivity(activity);
        if (i != 1)
            throw new ActivityException("市场活动更新失败!");
        return i;
    }

    public int deleteActivity(int id){
        int i = activityMapper.deleteActivity(id);
        if (i != 1)
            throw new ActivityException("市场活动删除失败!");
        return i;
    }

    @Transactional
    public int deleteActivities(List<Integer> ids){
        int i = activityMapper.deleteActivityList(ids);
        if (i != ids.size())
            throw new ActivityException("删除"+ ids.size() +"条数据失败");
        return i;
    }

    public Activity getActivityInfo(int id){
        Activity info = activityMapper.getActivityInfo(id);
        if (null != info)
            return info;
        throw new ActivityException("无此条记录...");
    }

    public PaginationVO<ActivityVO> pageList(Map<String, Object> map){
        List<ActivityVO> list = activityMapper.pageList(map);
        int total = activityMapper.getTotal();
        PaginationVO<ActivityVO> vo = new PaginationVO<>();
        vo.setDataList(list);
        vo.setTotal(total);
        return vo;
    }


    public List<ActivityVO> getAllActivity() {
        return activityMapper.getAllActivity();
    }

    public List<ActivityVO> getActivityVOListByContactsId(Integer contactsId) {
        return activityMapper.getActivityVOListByContactsId(contactsId);
    }
}
