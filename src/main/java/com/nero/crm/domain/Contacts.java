package com.nero.crm.domain;

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
public class Contacts {

    private Integer id;
    private String owner;
    private String source;
    private Integer customerId;
    private String fullname;
    private String appellation;
    private String email;
    private String mphone;
    private String job;
    private String birth;
    private String createBy;
    private String createTime;
    private String editBy;
    private String editTime;
    private String description;
    private String contactSummary;
    private String nextContactTime;
    private String address;

    public Contacts(String owner, String source, Integer customerId, String fullname, String appellation, String email, String mphone, String job, String birth, String createBy, String createTime, String description, String contactSummary, String nextContactTime, String address) {
        this.owner = owner;
        this.source = source;
        this.customerId = customerId;
        this.fullname = fullname;
        this.appellation = appellation;
        this.email = email;
        this.mphone = mphone;
        this.job = job;
        this.birth = birth;
        this.createBy = createBy;
        this.createTime = createTime;
        this.description = description;
        this.contactSummary = contactSummary;
        this.nextContactTime = nextContactTime;
        this.address = address;
    }


}
