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
public class Tran {

    private Integer id;
    private String owner;
    private String money;
    private String name;
    private String expectedDate;
    private Integer customerId;
    private String stage;
    private String type;
    private String source;
    private Integer activityId;
    private Integer contactsId;
    private String createBy;
    private String createTime;
    private String editBy;
    private String editTime;
    private String description;
    private String contactSummary;
    private String nextContactTime;
    private Integer possible;

    public Tran(String owner, String money, String name, String expectedDate, Integer customerId, String stage, String type, String source, Integer activityId, Integer contactsId, String createBy, String createTime, String description, String contactSummary, String nextContactTime, Integer possible) {
        this.owner = owner;
        this.money = money;
        this.name = name;
        this.expectedDate = expectedDate;
        this.customerId = customerId;
        this.stage = stage;
        this.type = type;
        this.source = source;
        this.activityId = activityId;
        this.contactsId = contactsId;
        this.createBy = createBy;
        this.createTime = createTime;
        this.description = description;
        this.contactSummary = contactSummary;
        this.nextContactTime = nextContactTime;
        this.possible = possible;
    }
}
