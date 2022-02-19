package com.nero.crm.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

/**
 * @author Nero Claudius
 * @version 1.0.0
 * @Date 2022/2/18
 */
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Data
public class TranVO {

    private Integer id;
    private String name;
    private String customerName;
    private String stage;
    private String type;
    private String owner;
    private String source;
    private String contactsName;

}
