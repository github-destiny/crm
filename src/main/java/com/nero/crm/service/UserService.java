package com.nero.crm.service;

import com.nero.crm.domain.User;
import com.nero.crm.exception.EditException;
import com.nero.crm.exception.LoginException;
import com.nero.crm.exception.RoleException;
import com.nero.crm.mapper.UserMapper;
import com.nero.crm.util.DateTimeUtil;
import com.nero.crm.vo.PaginationVO;
import com.nero.crm.vo.UserVO;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * @author Nero Claudius
 * @version 1.0.0
 * @Date 2022/2/16
 */
@Service
@Slf4j
public class UserService {

    @Autowired
    private UserMapper userMapper;

    private static final String ALLOW_IP = "*.*.*.*";

    /**
     * 登录校验
     * @param request
     * @param user
     */
    private void loginChecker(HttpServletRequest request, User user){
        String remoteHost = request.getRemoteHost();
        String allowIps = user.getAllowIps();
        // 如果是管理员用户
        if (allowIps.equals(ALLOW_IP)) {
            // 直接放行
            return;
        }
        if (!allowIps.contains(remoteHost)){
            throw new LoginException("ip受限");
        }
        String lockState = user.getLockState();
        if ("0".equals(lockState)){
            throw new LoginException("账号被冻结");
        }
        String expireTime = user.getExpireTime();
        String sysDate = DateTimeUtil.getDate();
        if (expireTime.compareTo(sysDate) <= 0){
            throw new LoginException("账号已过期");
        }
    }

    public User login(String loginAct, String loginPwd, HttpServletRequest request){
        int count = userMapper.existUser(loginAct);
        if (count == 0){
            throw new LoginException("不存在此用户");
        }
        User user = userMapper.login(loginAct, loginPwd);
        if (null != user){
            loginChecker(request, user);
            return user;
        }
        throw new LoginException("账号或密码错误");
    }

    /**
     * 经过加密的密码
     * @param loginAct 账号
     * @param oldPwd 加密旧密码
     * @param newPwd 加密新密码
     * @return
     */
    public void editPwd(String loginAct, String oldPwd, String newPwd){
        // 判断旧密码是否输入正确
        int i = userMapper.checkOldLoginPwd(oldPwd);
        if (i != 1){
            throw new EditException("旧密码输入错误");
        }
        if (oldPwd.equals(newPwd)){
            throw new EditException("新旧密码一致!");
        }
        int editRes = userMapper.editLoginPwd(loginAct, newPwd);
        if (editRes != 1){
            throw new EditException("修改失败!请稍后再试!");
        }
    }

    public User getUserInfo(String loginAct){
        return userMapper.selectUserInfo(loginAct);
    }

    public List<UserVO> getAllUserBaseInfo(){
        return userMapper.selectAllUserBaseInfo();
    }

    private static final Integer ADMIN_NO = 1;
    private static final String ADMIN = "超级管理员";
    private static final Integer NORMAL_USER_NO = 2;
    private static final String NORMAL_USER = "普通业务员";

    private boolean isAdmin(String uuid){
        log.info("校验权限的账号uuid:[{}]", uuid);
        String userRole = userMapper.getUserRole(uuid);
        log.info("role:{}", userRole);
        return ADMIN.equals(userRole);
    }

    @Transactional
    public void addUser(User user, String uuid){
        // 如果不是管理员
        if (!isAdmin(uuid)){
            throw new RoleException("角色权限不足,请联系管理员提升权限!");
        }
        // 添加用户
        int i = userMapper.addUser(user);
        Integer userId = user.getId();
        // 设置基本权限
        userMapper.setPermission(2, userId);
        if (i != 1)
            throw new RoleException("创建账号失败!请稍后重试!");
    }

    public void editUser(User user){
        String currentUUID = user.getEditBy();
        if (!isAdmin(currentUUID))
            throw new RoleException("权限不足!");
        int i = userMapper.editUser(user);
        if (i != 1)
            throw new EditException("修改失败!");
    }

    @Transactional
    public void deleteUser(List<Integer> ids){
        if (ids.size() == 1) {
            userMapper.deleteUser(ids.get(0));
            userMapper.deletePermission(ids.get(0));
        }
        else{
            userMapper.deleteAnyUser(ids);
            userMapper.deleteAnyPermission(ids);
        }
    }

    public PaginationVO<User> pageList(Integer skipCount, Integer pageSize, String name, String email){
        List<User> dataList = userMapper.pageList(skipCount, pageSize, name, email);
        int total = userMapper.getTotal(skipCount, pageSize, name, email);
        PaginationVO<User> vo = new PaginationVO<>();
        vo.setDataList(dataList);
        vo.setTotal(total);
        return vo;
    }
}
