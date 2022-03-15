package com.nero.crm.domain;

import com.nero.crm.util.DateTimeUtil;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

/**
 * @author Nero Claudius
 * @version 1.0.0
 * @Date 2022/3/15
 */
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Data
public class Log {

    private Integer id;

    private String signature;

    private String args;

    private String type;

    private String createTime;

    public Log(String signature, String type) {
        this.signature = signature;
        this.type = type;
        this.createTime = DateTimeUtil.getDate();
    }

    public Log(String signature, String args, String type, String createTime) {
        this.signature = signature;
        this.args = args;
        this.type = type;
        this.createTime = createTime;
    }
}
