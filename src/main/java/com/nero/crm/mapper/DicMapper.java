package com.nero.crm.mapper;

import com.nero.crm.domain.DicType;
import com.nero.crm.domain.DicValue;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author Nero Claudius
 * @version 1.0.0
 * @Date 2022/2/20
 */
@Mapper
@Repository
public interface DicMapper {

    /**
     * 新创建一个字典类型
     * @param type dicType
     * @return
     */
    int newDicType(DicType type);

    /**
     * 插入字典值，如果没有对应字典类型会报错
     * @param value
     * @return
     */
    int insertDicValue(DicValue value);

    /**
     * 修改字典类型的内容
     * @param type
     * @return
     */
    int editDiCType(DicType type);

    /**
     * 删除字典类型
     * @param code
     * @return
     */
    int deleteDicType(String code);

    /**
     * 批量删除字典类型
     * @param codes
     * @return
     */
    int deleteAnyDicType(@Param("codes") List<String> codes);

    /**
     * 批量删除数据字典类型时搭配使用，可以删除数据字典值
     * @param typeCodeList
     * @return
     */
    int deleteDicValueByTypeCodeList(@Param("typeCodeList") List<String> typeCodeList);

    /**
     * 通过字典内容的id删除对应的字典值
     * @param dicValueId
     * @return
     */
    int deleteDicValue(Integer dicValueId);

    /**
     * 批量删除字典值
     * @param dicValueIds
     * @return
     */
    int deleteAnyDicValue(@Param("dicValueIds") List<Integer> dicValueIds);

    /**
     * 通过字典类型删除字典值，会删除所有
     * @param typeCode
     * @return
     */
    int deleteDicValueByTypeCode(String typeCode);

    /**
     * 修改字典值的内容
     * @param value
     * @return
     */
    int editDicValue(DicValue value);

    /**
     * 检查是否已经存在该种类型
     * @param code
     * @return
     */
    int isExistType(String code);

    /**
     * 通过字典类型的code值取得对应的字典内容
     * @param typeCode
     * @return
     */
    List<DicValue> getDicValueByDicTypeCode(String typeCode);

    /**
     * 获取所有字典类型
     * @return
     */
    List<DicType> getAllType();

    /**
     * 获取所有的DicValue
     * @return
     */
    List<DicValue> getAllDicValues();

    /**
     * 检查是否存在相同的value
     * @param value
     * @return
     */
    int isExistValue(DicValue value);

    /**
     * 通过id查询dic type
     * @param dicTypeId
     * @return
     */
    DicType getDicTypeById(Integer dicTypeId);

    /**
     * 当更新了dicType的code属性时，触发的更新所有相关的数据
     * @return
     */
    int updateDicValueByDicTypeCode(@Param("oldCode") String oldCode, @Param("newCode") String newCode);



}
