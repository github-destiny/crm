package com.nero.crm.domain;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

/**
 * @author Nero Claudius
 * @version 1.0.0
 * @Date 2022/2/16
 */
@NoArgsConstructor
@ToString
@Data
public class User {

    private Integer id;

    private String uuid;

    private String loginAct;

    private String name;

    private String loginPwd;

    private String email;

    private String expireTime;

    private String lockState;

    private String allowIps;

    private String createTime;

    private String createBy;

    private String editTime;

    private String editBy;

    public User(String uuid, String loginAct, String name, String loginPwd, String email, String expireTime, String lockState, String allowIps, String createTime, String createBy, String editTime, String editBy) {
        this.uuid = uuid;
        this.loginAct = loginAct;
        this.name = name;
        this.loginPwd = loginPwd;
        this.email = email;
        this.expireTime = expireTime;
        this.lockState = lockState;
        this.allowIps = allowIps;
        this.createTime = createTime;
        this.createBy = createBy;
        this.editTime = editTime;
        this.editBy = editBy;
    }

    public User(Integer id, String uuid, String loginAct, String name, String expireTime, String lockState, String allowIps) {
        this.id = id;
        this.uuid = uuid;
        this.loginAct = loginAct;
        this.name = name;
        this.expireTime = expireTime;
        this.lockState = lockState;
        this.allowIps = allowIps;
    }

    public User(String uuid, String loginAct, String name, String loginPwd, String email, String expireTime, String lockState, String allowIps, String createTime, String createBy) {
        this.uuid = uuid;
        this.loginAct = loginAct;
        this.name = name;
        this.loginPwd = loginPwd;
        this.email = email;
        this.expireTime = expireTime;
        this.lockState = lockState;
        this.allowIps = allowIps;
        this.createTime = createTime;
        this.createBy = createBy;
    }
}
