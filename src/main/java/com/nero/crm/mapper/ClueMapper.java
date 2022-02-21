package com.nero.crm.mapper;

import com.nero.crm.domain.Clue;
import com.nero.crm.vo.ActivityVO;
import com.nero.crm.vo.ClueVO;
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
public interface ClueMapper {

    /**
     * 创建一条线索
     * @param clue
     * @return
     */
    int createOnnClue(Clue clue);

    /**
     * 删除一条线索
     * @param id
     * @return
     */
    int deleteClue(int id);

    /**
     * 配合删除线索使用，删除当前线索有关的市场活动联系
     * @param clueId
     * @return
     */
    int deleteActivitiesRelationThisClue(int clueId);

    /**
     * 获得与该线索有关的市场活动个数
     * @param clueId
     * @return
     */
    int getCountAboutActivityRelation(int clueId);

    /**
     * 删除多条线索
     * @param ids
     * @return
     */
    int deleteManyClue(@Param("ids") List<Integer> ids);

    /**
     * 删除多条线索的市场活动关联
     * @param clueIds
     * @return
     */
    int deleteActivitiesByClueIdList(@Param("clueIds") List<Integer> clueIds);

    /**
     * 修改一条线索
     * @param clue
     * @return
     */
    int editClue(Clue clue);

    /**
     * 分页
     * @param map
     * @return
     */
    List<ClueVO> pageList(Map<String, Object> map);

    /**
     * 获取一条线索的详细信息
     * @param id
     * @return
     */
    Clue getClueInfo(int id);

    /**
     * 获取所有与该线索有关的市场活动
     * @param clueId
     * @return
     */
    List<ActivityVO> getActivityRelation(int clueId);

    /**
     * 创造关联关于多条市场活动与当前线索
     * @param activitiesIds
     * @param clueId
     * @return
     */
    int connectClueAndActivity(@Param("clueId") int clueId,@Param("activitiesIds") List<Integer> activitiesIds);

    /**
     * 测试接口，插入十条数据
     * @return
     */
    int insertClue10(@Param("clueList") List<Clue> clueList);

    /**
     * 测试接口，插入数据到clue_activity关联表中
     * @param clueId
     * @param activityId
     * @return
     */
    int insertClueActivityRelation(@Param("clueId") int clueId, @Param("activityId") int activityId);

    /**
     * 检查clueId是否存在与某个市场活动的关联
     * @param clueId
     * @param activityId
     * @return
     */
    int checkExistsRelation(@Param("clueId") int clueId, @Param("activityId") int activityId);

    /**
     * 获取线索的总个数
     * @return
     */
    int getTotal();

    /**
     * 根据activityId删除对应的关联，删除市场活动时联合使用
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
