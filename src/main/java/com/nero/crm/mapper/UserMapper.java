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

    /**
     * 添加一个用户,只有管理员能操作
     * @param user
     * @return
     */
    int addUser(User user);

    /**
     * 设置一个用户是否是管理员
     * @param roleId
     * @param userId
     * @return
     */
    int setPermission(@Param("roleId") Integer roleId, @Param("userId") Integer userId);

    /**
     * 修改用户的权限
     * @param roleId
     * @param userId
     * @return
     */
    int updatePermission(@Param("roleId") Integer roleId, @Param("userId") Integer userId);

    /**
     * 登录接口
     * @param loginAct
     * @param loginPwd
     * @return
     */
    User login(@Param("loginAct") String loginAct,@Param("loginPwd") String loginPwd);

    /**
     * 判断一个用户是否存在
     * @param loginAct
     * @return
     */
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

    /**
     * 通过uuid获取用户角色信息
     * @param uuid
     * @return
     */
    String getUserRole(String uuid);

    /**
     * 修改账号信息
     * @param user
     * @return
     */
    int editUser(User user);

    /**
     * 删除单个用户
     * @param id
     * @return
     */
    int deleteUser(int id);

    /**
     * 批量删除用户
     * @param ids
     * @return
     */
    int deleteAnyUser(List<Integer> ids);

    /**
     * 删除用户权限
     * @param id
     * @return
     */
    int deletePermission(int id);

    /**
     * 批量删除权限
     * @param ids
     * @return
     */
    int deleteAnyPermission(List<Integer> ids);

    /**
     * 分页查询
     * @param skipCount
     * @param pageSize
     * @param name
     * @param email
     * @return
     */
    List<User> pageList(@Param("skipCount") Integer skipCount, @Param("pageSize") Integer pageSize, @Param("name") String name, @Param("email") String email);

    /**
     * 获取用户总数
     * @return
     */
    int getTotal(@Param("skipCount") Integer skipCount, @Param("pageSize") Integer pageSize, @Param("name") String name, @Param("email") String email);


}
