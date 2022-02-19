package com.nero.crm.controller;

import com.nero.crm.domain.Tran;
import com.nero.crm.exception.TranException;
import com.nero.crm.service.TranService;
import com.nero.crm.util.MapUtil;
import com.nero.crm.vo.PaginationVO;
import com.nero.crm.vo.TranVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author Nero Claudius
 * @version 1.0.0
 * @Date 2022/2/18
 */
@RestController
@RequestMapping("/tran")
public class TranController {

    @Autowired
    private TranService tranService;

    @PostMapping("/insert")
    public Map<String, Object> insert(Tran tran){
        try {
            tranService.insertTran(tran);
            return MapUtil.getSuccessMap("insert success");
        } catch (TranException e) {
            return MapUtil.getFailureMap(e.getMessage());
        }
    }

    @PostMapping("/edit")
    public Map<String, Object> edit(Tran tran){
        try {
            tranService.editTran(tran);
            return MapUtil.getSuccessMap("edit success");
        } catch (TranException e) {
            return MapUtil.getFailureMap(e.getMessage());
        }
    }

    @PostMapping("/delete/{id}")
    public Map<String, Object> deleteOne(@PathVariable("id") Integer id){
        tranService.deleteTran(id);
        return MapUtil.getSuccessMap("delete success");
    }

    @PostMapping("/delete/many")
    public Map<String, Object> deleteAnyTran(@RequestParam("ids") List<Integer> ids){
        tranService.deleteAnyTran(ids);
        return MapUtil.getSuccessMap("delete all success");
    }

    @PostMapping("/pageList")
    public Map<String, Object> pageList(@RequestParam("pageNo") Integer pageNo,
                                        @RequestParam("pageSize") Integer pageSize,
                                        @RequestParam(value = "name", required = false) String name,
                                        @RequestParam(value = "owner", required = false) String owner,
                                        @RequestParam(value = "customerName", required = false) String customerName,
                                        @RequestParam(value = "stage", required = false) String stage,
                                        @RequestParam(value = "type", required = false) String type,
                                        @RequestParam(value = "source", required = false) String source,
                                        @RequestParam(value = "contactsName", required = false) String contactsName){
        Map<String, Object> map = new HashMap<>();
        int skipCount = (pageNo - 1) * pageSize;
        map.put("skipCount", skipCount);
        map.put("pageSize", pageSize);
        map.put("name", name);
        map.put("owner", owner);
        map.put("customerName", customerName);
        map.put("stage", stage);
        map.put("type", type);
        map.put("source", source);
        map.put("contactsName", contactsName);
        PaginationVO<TranVO> vo = tranService.pageList(map);
        return MapUtil.getSuccessMap(vo);
    }

    @GetMapping("/{id}")
    public Map<String, Object> getInfo(@PathVariable("id") Integer id){
        Tran info = tranService.getInfo(id);
        return MapUtil.getSuccessMap(info);
    }

}
