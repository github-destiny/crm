package com.nero.crm.domain;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

/**
 * @author Nero Claudius
 * @version 1.0.0
 * @Date 2022/2/17
 */
@NoArgsConstructor
@ToString
@Data
public class Clue {

    private int id;

    private String fullname;

    private String appellation;

    private String owner;

    private String company;

    private String job;

    private String email;

    private String phone;

    private String website;

    private String mphone;

    private String state;

    private String source;

    private String createBy;

    private String createTime;

    private String editBy;

    private String editTime;

    private String description;

    private String contactSummary;

    private String nextContactTime;

    private String address;

    public Clue(String fullname, String appellation, String owner, String company, String job, String email, String phone, String website, String mphone, String state, String source, String createBy, String createTime, String editBy, String editTime, String description, String contactSummary, String nextContactTime, String address) {
        this.fullname = fullname;
        this.appellation = appellation;
        this.owner = owner;
        this.company = company;
        this.job = job;
        this.email = email;
        this.phone = phone;
        this.website = website;
        this.mphone = mphone;
        this.state = state;
        this.source = source;
        this.createBy = createBy;
        this.createTime = createTime;
        this.editBy = editBy;
        this.editTime = editTime;
        this.description = description;
        this.contactSummary = contactSummary;
        this.nextContactTime = nextContactTime;
        this.address = address;
    }

    public Clue(String fullname, String appellation, String owner, String company, String job, String email, String phone, String website, String mphone, String state, String source, String createBy, String createTime, String description, String contactSummary, String nextContactTime, String address) {
        this.fullname = fullname;
        this.appellation = appellation;
        this.owner = owner;
        this.company = company;
        this.job = job;
        this.email = email;
        this.phone = phone;
        this.website = website;
        this.mphone = mphone;
        this.state = state;
        this.source = source;
        this.createBy = createBy;
        this.createTime = createTime;
        this.description = description;
        this.contactSummary = contactSummary;
        this.nextContactTime = nextContactTime;
        this.address = address;
    }
}
