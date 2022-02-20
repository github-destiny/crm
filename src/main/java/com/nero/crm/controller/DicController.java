package com.nero.crm.controller;

import com.nero.crm.domain.DicType;
import com.nero.crm.domain.DicValue;
import com.nero.crm.exception.DicException;
import com.nero.crm.service.DicService;
import com.nero.crm.util.MapUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.ServletContext;
import java.util.List;
import java.util.Map;

/**
 * @author Nero Claudius
 * @version 1.0.0
 * @Date 2022/2/20
 */
@RestController
@RequestMapping("/dic")
public class DicController {

    @Autowired
    private DicService dicService;

    @PostMapping("/insert/type")
    public Map<String, Object> insertType(DicType type){
        try {
            dicService.insertDicType(type);
            return MapUtil.getSuccessMap("insert type success");
        } catch (DicException e) {
            return MapUtil.getFailureMap(e.getMessage());
        }
    }

    @PostMapping("/insert/value")
    public Map<String, Object> insertValue(DicValue value){
        try {
            dicService.insertDicValue(value);
            return MapUtil.getSuccessMap("insert value success");
        } catch (DicException e) {
            System.out.println(e.getMessage());
            return MapUtil.getFailureMap(e.getMessage());
        }
    }

    @PostMapping("/edit/type")
    public Map<String, Object> editType(DicType type){
        try {
            System.out.println(type.toString());
            dicService.editDicType(type);
            return MapUtil.getSuccessMap("update type success!");
        } catch (DicException e) {
            return MapUtil.getFailureMap(e.getMessage());
        }
    }

    @PostMapping("/edit/value")
    public Map<String, Object> editValue(DicValue value){
        try {
            dicService.editDicValue(value);
            return MapUtil.getSuccessMap("update value success");
        } catch (DicException e) {
            return MapUtil.getFailureMap(e.getMessage());
        }
    }

    @PostMapping("/delete/type/{code}")
    public Map<String, Object> deleteType(@PathVariable("code") String code){
        dicService.deleteDicType(code);
        return MapUtil.getSuccessMap("delete type success");
    }

    @PostMapping("/delete/value/{id}")
    public Map<String, Object> deleteValue(@PathVariable("id") Integer id){
        dicService.deleteDicValue(id);
        return MapUtil.getSuccessMap("delete value success");
    }

    @PostMapping("/delete/type/many")
    public Map<String, Object> deleteAnyType(@RequestParam("codes") List<String> codes){
        dicService.deleteAnyDicType(codes);
        return MapUtil.getSuccessMap("delete types success");
    }

    @PostMapping("/delete/value/many")
    public Map<String, Object> deleteAnyValue(@RequestParam("ids")List<Integer> ids){
        dicService.deleteAnyDicValue(ids);
        return MapUtil.getSuccessMap("delete values success");
    }


    @GetMapping("/values/{typeCode}")
    public Map<String, Object> getDicValues(@PathVariable("typeCode") String typeCode){
        List<DicValue> dataList = dicService.getDicValueByTypeCode(typeCode);
        return MapUtil.getSuccessMap(dataList);
    }

    @GetMapping("/type/all")
    public Map<String, Object> getAllTypes(){
        return MapUtil.getSuccessMap(dicService.getAllDicType());
    }

    @GetMapping("/value/all")
    public Map<String, Object> getAllValues(){
        return MapUtil.getSuccessMap(dicService.getAllDicValue());
    }

}
