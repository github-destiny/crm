package com.nero.crm.service;

import com.nero.crm.domain.User;
import com.nero.crm.exception.EditException;
import com.nero.crm.exception.LoginException;
import com.nero.crm.mapper.UserMapper;
import com.nero.crm.util.DateTimeUtil;
import com.nero.crm.vo.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * @author Nero Claudius
 * @version 1.0.0
 * @Date 2022/2/16
 */
@Service
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


}
