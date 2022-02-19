package com.nero.crm.domain;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

/**
 * @author Nero Claudius
 * @version 1.0.0
 * @Date 2022/2/19
 */
@NoArgsConstructor
@ToString
@Data
public class Test {

    private int id;
    private String name;
    private int age;

    public Test(String name, int age) {
        this.name = name;
        this.age = age;
    }
}
