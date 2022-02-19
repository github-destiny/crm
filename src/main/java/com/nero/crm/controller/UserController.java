package com.nero.crm.controller;

import com.nero.crm.constant.StatusCode;
import com.nero.crm.domain.User;
import com.nero.crm.exception.EditException;
import com.nero.crm.exception.LoginException;
import com.nero.crm.service.UserService;
import com.nero.crm.util.MD5Util;
import com.nero.crm.util.MapUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.Map;

/**
 * @author Nero Claudius
 * @version 1.0.0
 * @Date 2022/2/16
 */
@RestController()
@Slf4j
public class UserController {

    @Autowired
    private UserService userService;

    @PostMapping("/login")
    public Map<String, Object> login(@RequestParam("loginAct") String loginAct,
                                     @RequestParam("loginPwd") String loginPwd,
                                     HttpSession session,
                                     HttpServletRequest request,
                                     HttpServletResponse response) {
        // 对密码进行加密
        String md5Pwd = MD5Util.getMD5(loginPwd);
        try {
            User user = userService.login(loginAct, md5Pwd, request);
            // 在session中存储对象
            session.setAttribute(loginAct, user);
            session.setAttribute(user.getUuid(), user);
            // 使用cookie进行本地保存
            Cookie cookie = new Cookie("uuid", user.getUuid());
            cookie.setMaxAge(7 * 24 * 60 * 60);
            response.addCookie(cookie);
            log.info("session与cookie设置完成...");
            return MapUtil.returnMapDefine(StatusCode.RESPONSE_OK, user, "");
        } catch (LoginException ex) {
            return MapUtil.returnMapDefine(StatusCode.RESPONSE_ERROR, null, ex.getMessage());
        }
    }

    @PostMapping("/user/editPwd")
    public Map<String, Object> editPassword(@RequestParam("oldPwd") String oldPwd,
                                            @RequestParam("newPwd") String newPwd,
                                            @RequestParam("loginAct") String loginAct) {
        oldPwd = MD5Util.getMD5(oldPwd);
        newPwd = MD5Util.getMD5(newPwd);
        try {
            userService.editPwd(loginAct, oldPwd, newPwd);
            return MapUtil.returnMapDefine(StatusCode.RESPONSE_OK, "修改成功", "");
        } catch (EditException ex) {
            return MapUtil.returnMapDefine(StatusCode.RESPONSE_ERROR, null, ex.getMessage());
        }
    }

    @GetMapping("/user/{loginAct}")
    public Map<String, Object> getUserInfo(@PathVariable("loginAct") String loginAct){
        User user = userService.getUserInfo(loginAct);
        return MapUtil.getSuccessMap(user);
    }

}
