package com.nero.crm.controller;

import com.nero.crm.domain.Activity;
import com.nero.crm.exception.ActivityException;
import com.nero.crm.service.ActivityService;
import com.nero.crm.util.DateTimeUtil;
import com.nero.crm.util.MapUtil;
import com.nero.crm.vo.ActivityVO;
import com.nero.crm.vo.PaginationVO;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.ServletContext;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author Nero Claudius
 * @version 1.0.0
 * @Date 2022/2/17
 */
@Slf4j
@RestController
@RequestMapping("/activity")
public class ActivityController {

    @Autowired
    private ActivityService activityService;

    @PostMapping("/insert")
    public Map<String, Object> insertActivity(Activity activity){
        String createTime = DateTimeUtil.getDate();
        activity.setCreateTime(createTime);
        try {
            activityService.insertActivity(activity);
            return MapUtil.getSuccessMap("success");
        } catch (ActivityException e) {
            return MapUtil.getFailureMap(e.getMessage());
        }
    }

    @PostMapping("/edit")
    public Map<String, Object> editActivity(Activity activity){
        String editTime = DateTimeUtil.getDate();
        activity.setEditTime(editTime);
        try {
            activityService.editActivity(activity);
            return MapUtil.getSuccessMap("success");
        } catch (ActivityException e) {
            return MapUtil.getFailureMap(e.getMessage());
        }
    }

    @PostMapping("/delete")
    public Map<String, Object> deleteActivity(@RequestParam("id") Integer id){
        try {
            activityService.deleteActivity(id);
            return MapUtil.getSuccessMap("delete success");
        } catch (ActivityException e) {
            return MapUtil.getFailureMap(e.getMessage());
        }
    }

    @PostMapping("/delete/many")
    public Map<String, Object> deleteActivities(@RequestParam("ids") List<Integer> ids){
        try {
            activityService.deleteActivities(ids);
            return MapUtil.getSuccessMap("all delete success");
        } catch (ActivityException e) {
            return MapUtil.getFailureMap(e.getMessage());
        }
    }

    @GetMapping("/{id}")
    public Map<String, Object> getActivityInfo(@PathVariable("id") Integer id){
        try {
            Activity info = activityService.getActivityInfo(id);
            return MapUtil.getSuccessMap(info);
        } catch (ActivityException e) {
            return MapUtil.getFailureMap(e.getMessage());
        }
    }

    @PostMapping("/pageList")
    public Map<String, Object> pageList(@RequestParam("pageNo") int pageNo,
                                        @RequestParam("pageSize") int pageSize,
                                        @RequestParam(value = "owner", required = false) String owner,
                                        @RequestParam(value = "name", required = false) String name,
                                        @RequestParam(value = "startDate", required = false) String startDate,
                                        @RequestParam(value = "endDate", required = false) String endDate){
        Map<String, Object> map = new HashMap<>();
        int skipCount = (pageNo - 1) * pageSize;
        map.put("skipCount", skipCount);
        map.put("pageSize", pageSize);
        map.put("owner", owner);
        map.put("name", name);
        map.put("startDate", startDate);
        map.put("endDate", endDate);
        PaginationVO<ActivityVO> vo = activityService.pageList(map);
        return MapUtil.getSuccessMap(vo);
    }

    @GetMapping("/all")
    public Map<String, Object> getAllActivity() {
        List<ActivityVO> activities = activityService.getAllActivity();
        return MapUtil.getSuccessMap(activities);
    }



}
