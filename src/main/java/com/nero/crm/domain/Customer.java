package com.nero.crm.domain;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

/**
 * @author Nero Claudius
 * @version 1.0.0
 * @Date 2022/2/18
 */
@NoArgsConstructor
@ToString
@Data
public class Customer {

    private int id;
    private String owner;
    private String name;
    private String website;
    private String mphone;
    private String createBy;
    private String createTime;
    private String editBy;
    private String editTime;
    private String contactSummary;
    private String nextContactTime;
    private String description;
    private String address;

    public Customer(String owner, String name, String website, String mphone, String createBy, String createTime, String contactSummary, String nextContactTime, String description, String address) {
        this.owner = owner;
        this.name = name;
        this.website = website;
        this.mphone = mphone;
        this.createBy = createBy;
        this.createTime = createTime;
        this.contactSummary = contactSummary;
        this.nextContactTime = nextContactTime;
        this.description = description;
        this.address = address;
    }
}
