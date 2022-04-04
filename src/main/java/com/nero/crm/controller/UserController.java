package com.nero.crm.controller;

import com.nero.crm.constant.StatusCode;
import com.nero.crm.domain.Log;
import com.nero.crm.domain.User;
import com.nero.crm.exception.EditException;
import com.nero.crm.exception.LoginException;
import com.nero.crm.exception.RoleException;
import com.nero.crm.mapper.LogMapper;
import com.nero.crm.service.UserService;
import com.nero.crm.util.DateTimeUtil;
import com.nero.crm.util.MD5Util;
import com.nero.crm.util.MapUtil;
import com.nero.crm.util.UUIDUtil;
import com.nero.crm.vo.PaginationVO;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;
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
            log.info("user [{}] login success! user uuid : [{}]", user.getName(), user.getUuid());
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

    @GetMapping("/user/owner/all")
    public Map<String, Object> getAllOwner(){
        return MapUtil.getSuccessMap(userService.getAllUserBaseInfo());
    }

    @GetMapping("/exit")
    public Map<String, Object> exit(@RequestParam("uuid") String uuid, HttpSession session){
        User user = (User) session.getAttribute(uuid);
        if (null != user){
            session.removeAttribute(uuid);
            log.info("user [{}] exit! uuid:[{}]", user.getName(), uuid);
        }
        return MapUtil.getSuccessMap("exit success!");
    }

    @PostMapping("/user/insert")
    public Map<String, Object> addUser(User user){
        String currentUuid = user.getUuid();
        String uuid = UUIDUtil.getUUID();
        user.setUuid(uuid);
        user.setCreateTime(DateTimeUtil.getDate());
        user.setCreateBy(currentUuid);
        user.setLoginPwd(MD5Util.getMD5(user.getLoginPwd()));
        String lockState = user.getLockState();
        if (null == lockState || "".equals(lockState)){
            user.setLockState("1");
        }
        try {
            userService.addUser(user, currentUuid);
            return MapUtil.getSuccessMap("账号创建成功!");
        } catch (RoleException e) {
            return MapUtil.getFailureMap(e.getMessage());
        }
    }

    @PostMapping("/user/edit")
    public Map<String, Object> editUser(User user){
        user.setEditTime(DateTimeUtil.getDate());
        try {
            userService.editUser(user);
            return MapUtil.getSuccessMap("修改成功");
        } catch (RoleException | EditException e) {
            return MapUtil.getFailureMap(e.getMessage());
        }
    }

    @PostMapping("/user/delete")
    public Map<String, Object> deleteUser(@RequestParam("ids") List<Integer> ids){
        userService.deleteUser(ids);
        return MapUtil.getSuccessMap("delete success!");
    }

    @PostMapping("/user/pageList")
    public Map<String, Object> pageList(@RequestParam("pageNo") Integer pageNo,
                                        @RequestParam("pageSize") Integer pageSize,
                                        @RequestParam(value = "name", required = false) String name,
                                        @RequestParam(value = "email", required = false) String email){
        int skipCount = (pageNo - 1) * pageSize;
        PaginationVO<User> vo = userService.pageList(skipCount, pageSize, name, email);
        return MapUtil.getSuccessMap(vo);
    }

    @Autowired
    private LogMapper logMapper;

    @GetMapping("/log")
    public Map<String, Object> getLog(@RequestParam("pageNo") Integer pageNo,
                                      @RequestParam("pageSize") Integer pageSize,
                                      @RequestParam(value = "createTime", required = false) String createTime){
        log.info("进入日志查看方法");
        log.info("method args:[pageNo:{}, type:{}], [pageSize:{}, type:{}], [createTime:{}]", pageNo, pageNo.getClass().toString(), pageSize, pageSize.getClass().toString(), createTime);
        Integer skipCount = (pageNo - 1) * pageSize;
        List<Log> logs = logMapper.pageList(skipCount, pageSize, createTime);
        Integer total = logMapper.getTotal(skipCount, pageSize, createTime);
        PaginationVO<Log> vo = new PaginationVO<>();
        vo.setDataList(logs);
        vo.setTotal(total);
        return MapUtil.getSuccessMap(vo);
    }

}
