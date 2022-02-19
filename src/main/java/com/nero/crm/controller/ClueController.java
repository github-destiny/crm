package com.nero.crm.controller;

import com.nero.crm.domain.Clue;
import com.nero.crm.exception.ClueException;
import com.nero.crm.service.ClueService;
import com.nero.crm.util.DateTimeUtil;
import com.nero.crm.util.MapUtil;
import com.nero.crm.vo.ActivityVO;
import com.nero.crm.vo.ClueVO;
import com.nero.crm.vo.PaginationVO;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

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
@RequestMapping("/clue")
public class ClueController {

    @Autowired
    private ClueService clueService;

    @PostMapping("/insert")
    public Map<String, Object> createClue(Clue clue){
        try {
            clue.setCreateTime(DateTimeUtil.getDate());
            clueService.createOneClue(clue);
            return MapUtil.getSuccessMap("insert success");
        } catch (ClueException e) {
            return MapUtil.getFailureMap(e.getMessage());
        }
    }

    @PostMapping("/delete")
    public Map<String, Object> deleteClue(@RequestParam("id") int id){
        try {
            clueService.deleteOneClue(id);
            return MapUtil.getSuccessMap("delete success");
        } catch (ClueException e) {
            return MapUtil.getFailureMap(e.getMessage());
        }
    }

    @PostMapping("/delete/many")
    public Map<String, Object> deleteManyClue(@RequestParam("ids") List<Integer> ids){
        try {
            clueService.deleteManyClue(ids);
            return MapUtil.getSuccessMap("delete all success");
        } catch (ClueException e) {
            return MapUtil.getFailureMap(e.getMessage());
        }
    }

    @PostMapping("/edit")
    public Map<String, Object> editClue(Clue clue){
        try {
            clue.setEditTime(DateTimeUtil.getDate());
            clueService.editClue(clue);
            return MapUtil.getSuccessMap("edit success");
        } catch (ClueException e) {
            return MapUtil.getFailureMap(e.getMessage());
        }
    }

    @PostMapping("/pageList")
    public Map<String, Object> pageList(@RequestParam("pageNo") int pageNo,
                                        @RequestParam("pageSize") int pageSize,
                                        @RequestParam(value = "owner", required = false) String owner,
                                        @RequestParam(value = "fullname", required = false) String fullname,
                                        @RequestParam(value = "company", required = false) String company,
                                        @RequestParam(value = "mphone", required = false) String mphone,
                                        @RequestParam(value = "phone", required = false) String phone,
                                        @RequestParam(value = "state", required = false) String state,
                                        @RequestParam(value = "source", required = false) String source){
        Map<String, Object> map = new HashMap<>();
        int skipCount = (pageNo - 1) * pageSize;
        map.put("skipCount", skipCount);
        map.put("pageSize", pageSize);
        map.put("owner", owner);
        map.put("fullname", fullname);
        map.put("company", company);
        map.put("mphone", mphone);
        map.put("phone", phone);
        map.put("state", state);
        map.put("source", source);
        PaginationVO<ClueVO> vo = clueService.pageList(map);
        return MapUtil.getSuccessMap(vo);
    }

    @GetMapping("/{id}")
    public Map<String, Object> getInfo(@PathVariable("id") Integer id){
        try {
            Clue info = clueService.getInfo(id);
            return MapUtil.getSuccessMap(info);
        } catch (Exception e) {
            return MapUtil.getFailureMap(e.getMessage());
        }
    }

    @GetMapping("/activity/{id}")
    public Map<String, Object> getActivityByClueId(@PathVariable("id") int clueId){
        try {
            List<ActivityVO> vo = clueService.getActivityByClueId(clueId);
            return MapUtil.getSuccessMap(vo);
        } catch (ClueException e) {
            return MapUtil.getFailureMap(e.getMessage());
        }
    }

    @PostMapping("/connect")
    public Map<String, Object> connectClueAndActivity(@RequestParam("aids") List<Integer> activitiesIds,@RequestParam("clueId") int clueId){
        try {
            clueService.connectClueAndActivity(activitiesIds, clueId);
            return MapUtil.getSuccessMap("connect success");
        } catch (ClueException e) {
            return MapUtil.getFailureMap(e.getMessage());
        }
    }

    @GetMapping("/total")
    public Map<String, Object> getTotal(){
        Map<String, Object> map = new HashMap<>();
        map.put("total", clueService.getTotal());
        return MapUtil.getSuccessMap(map);
    }

    @PostMapping("/convert/{id}")
    public Map<String, Object> convert(@PathVariable("id") Integer id,
                                       @RequestParam("createTran") boolean flag,
                                       @RequestParam(value = "money", required = false) String money,
                                       @RequestParam(value = "name", required = false) String tranName,
                                       @RequestParam(value = "expectedDate", required = false) String expectedDate,
                                       @RequestParam(value = "stage", required = false) String stage,
                                       @RequestParam(value = "activityId", required = false) Integer activityId){
        if (flag){
            if (money == null || "".equals(money))
                throw new ClueException("money参数异常");
            if (tranName == null || "".equals(tranName))
                throw new ClueException("tranName参数异常");
            if (expectedDate == null || "".equals(expectedDate))
                throw new ClueException("expectedDate参数异常");
            if (stage == null || "".equals(stage))
                throw new ClueException("stage参数异常");
            if (activityId == null)
                throw new ClueException("activityId参数异常");
        }
        Map<String, Object> map = new HashMap<>();
        map.put("money", money);
        map.put("name", tranName);
        map.put("expectedDate", expectedDate);
        map.put("stage", stage);
        map.put("activityId", activityId);
        try {
            clueService.convert(id, flag, map);
            return MapUtil.getSuccessMap("convert success!");
        } catch (ClueException e) {
            return MapUtil.getFailureMap(e.getMessage());
        }
    }






}
