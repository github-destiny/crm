package com.nero.crm.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

/**
 * @author Nero Claudius
 * @version 1.0.0
 * @Date 2022/2/17
 */
@Data
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class ClueVO {

    private int id;
    private String fullname;
    private String appellation;
    private String company;
    private String mphone;
    private String phone;
    private String source;
    private String owner;
    private String state;

}
