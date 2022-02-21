package com.nero.crm.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

/**
 * @author Nero Claudius
 * @version 1.0.0
 * @Date 2022/2/21
 */
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Data
public class UserVO {

    private Integer id;
    private String uuid;
    private String name;

}
