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
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Data
public class ActivityVO {

    private int id;

    private String name;

    private String owner;

    private String startDate;

    private String endDate;

}
