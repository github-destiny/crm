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
@Data
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class ContactsVO {

    private Integer id;
    private String fullname;
    private String customerName;
    private String owner;
    private String source;
    private String birth;

}
