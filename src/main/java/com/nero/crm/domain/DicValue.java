package com.nero.crm.domain;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import java.io.Serializable;

/**
 * @author Nero Claudius
 * @version 1.0.0
 * @Date 2022/2/20
 */
@NoArgsConstructor
@ToString
@Data
public class DicValue implements Serializable {

    private Integer id;
    private String value;
    private String text;
    private Integer orderNo;
    private String typeCode;

    public DicValue(String value, String text, Integer orderNo, String typeCode) {
        this.value = value;
        this.text = text;
        if (null == orderNo || 0 == orderNo){
            orderNo = 5;
        }
        this.orderNo = orderNo;
        this.typeCode = typeCode;
    }
}
