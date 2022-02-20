package com.nero.crm.service;

import com.nero.crm.domain.DicType;
import com.nero.crm.domain.DicValue;
import com.nero.crm.exception.DicException;
import com.nero.crm.mapper.DicMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author Nero Claudius
 * @version 1.0.0
 * @Date 2022/2/20
 */
@Service
public class DicService {

    @Autowired
    private DicMapper dicMapper;

    public void insertDicType(DicType type){
        if (isExistType(type.getCode())){
            throw new DicException("已经存在该类型了");
        }
        int i = dicMapper.newDicType(type);
        if (i != 1)
            throw new DicException("新建字典类型失败!");
    }

    public boolean isExistType(String code){
        return dicMapper.isExistType(code) != 0;
    }

    public void insertDicValue(DicValue value){
        if (isExistValue(value))
            throw new DicException("已经存在该字典值了");
        if (!isExistType(value.getTypeCode()))
            throw new DicException("不存在该字典类型!");
        int i = dicMapper.insertDicValue(value);
        if (i != 1)
            throw new DicException("新建字典值失败!");
    }

    @Transactional
    public void editDicType(DicType type){
        // 拿到旧的type数据
        DicType oldType = dicMapper.getDicTypeById(type.getId());
        System.out.println(oldType);
        // 获取旧的code
        String oldCode = oldType.getCode();
        // 更新type
        int i = dicMapper.editDiCType(type);
        // 更新value
        dicMapper.updateDicValueByDicTypeCode(oldCode, type.getCode());
        if (i != 1)
            throw new DicException("修改字典类型失败!");
    }

    public void editDicValue(DicValue value){
        int i = dicMapper.editDicValue(value);
        if (i != 1)
            throw new DicException("修改字典数据失败!");
    }

    @Transactional
    public void deleteDicType(String code){
        // 删除字典类型
        dicMapper.deleteDicType(code);
        // 删除相关的字典值
        dicMapper.deleteDicValueByTypeCode(code);
    }

    public void deleteDicValue(Integer dicValueId){
        dicMapper.deleteDicValue(dicValueId);
    }

    @Transactional
    public void deleteAnyDicType(List<String> codes){
        dicMapper.deleteAnyDicType(codes);
        dicMapper.deleteDicValueByTypeCodeList(codes);
    }

    public void deleteAnyDicValue(List<Integer> dicValueIds){
        dicMapper.deleteAnyDicValue(dicValueIds);
    }

    public List<DicValue> getDicValueByTypeCode(String typeCode){
        return dicMapper.getDicValueByDicTypeCode(typeCode);
    }

    public List<DicType> getAllDicType(){
        return dicMapper.getAllType();
    }

    public List<DicValue> getAllDicValue(){
        return dicMapper.getAllDicValues();
    }

    public boolean isExistValue(DicValue value){
        int i = dicMapper.isExistValue(value);
        if (i != 0)
            return true;
        else
            return false;
    }

    public DicType getTypeById(Integer typeId){
        return dicMapper.getDicTypeById(typeId);
    }
}
