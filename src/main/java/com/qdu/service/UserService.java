package com.qdu.service;

import com.qdu.pojo.User;

import java.util.List;

public interface UserService {
    //增加一个用户
    int addUser(User user);

    //删除一个用户
    int deleteUserById(int userId);

    //修改一个用户
    int updateUser(User user);

    //查询用户byid
    User queryUserById(int userId);

    //查询所有用户
    List<User> queryAllUser();

    //查询用户byname
    User queryUserByName(String userName);

    List<User> queryUserWaitPass();

    int updateUserStatus(User user);

    int updateUserStatusNot(User user);
    
}
