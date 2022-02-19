package com.nero.crm.mapper;

import com.nero.crm.domain.Activity;
import com.nero.crm.vo.ActivityVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

/**
 * @author Nero Claudius
 * @version 1.0.0
 * @Date 2022/2/17
 */
@Mapper
@Repository
public interface ActivityMapper {

    /**
     * 增加一条新的市场活动
     * @param activity
     * @return
     */
    int insertActivity(Activity activity);

    /**
     * 编辑一条市场活动
     * @param activity
     * @return
     */
    int editActivity(Activity activity);

    /**
     * 删除一条市场活动
     * @param id
     * @return
     */
    int deleteActivity(int id);

    /**
     * 删除多条市场活动
     * @param ids
     * @return
     */
    int deleteActivityList(@Param("ids") List<Integer> ids);

    /**
     * 获取一条市场活动的全部信息
     * @param id
     * @return
     */
    Activity getActivityInfo(int id);

    /**
     * 分页
     * @param map : String name, String owner, String startDate, String endDate, int skipCount, int pageSize
     * @return
     */
    List<ActivityVO> pageList(Map<String, Object> map);

    /**
     * 测试接口，批量插入数据
     * @param activityList
     * @return
     */
    int insertManyData(@Param("activityList") List<Activity> activityList);

    /**
     * 获取数据库中数据总数
     * @return
     */
    int getTotal();

    /**
     * 获取所有的市场活动
     * @return
     */
    List<ActivityVO> getAllActivity();

}
