package com.nero.crm.mapper;

import com.nero.crm.domain.User;
import com.nero.crm.vo.UserVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author Nero Claudius
 * @version 1.0.0
 * @Date 2022/2/16
 */
@Mapper
@Repository
public interface UserMapper {

    int addUser(User user);

    User login(@Param("loginAct") String loginAct,@Param("loginPwd") String loginPwd);

    int existUser(String loginAct);

    /**
     * 验证旧密码是否填写正确
     * @param loginPwd
     * @return
     */
    int checkOldLoginPwd(String loginPwd);

    /**
     * 修改密码
     * @param loginAct 登录账号
     * @param loginPwd 登陆密码
     * @return
     */
    int editLoginPwd(@Param("loginAct") String loginAct,@Param("loginPwd") String loginPwd);

    /**
     * 查看个人信息
     * @param loginAct
     * @return
     */
    User selectUserInfo(String loginAct);

    /**
     * 填充用户列表
     *
     * @return
     */
    List<UserVO> selectAllUserBaseInfo();

}
