package com.nero.crm.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import java.io.Serializable;

/**
 * @author Nero Claudius
 * @version 1.0.0
 * @Date 2022/2/20
 */
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Data
public class DicType implements Serializable {

    private Integer id;
    private String code;
    private String name;
    private String description;

    public DicType(String code, String name, String description) {
        this.code = code;
        this.name = name;
        this.description = description;
    }
}
