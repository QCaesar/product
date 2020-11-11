package com.qdu.service;

import com.qdu.dao.UserMapper;
import com.qdu.pojo.User;

import java.util.List;

public class UserServiceImpl implements UserService {

    private UserMapper userMapper;

    public void setUserMapper(UserMapper userMapper) {
        this.userMapper = userMapper;
    }

    public int addUser(User user) {
        return userMapper.addUser(user);
    }

    public int deleteUserById(int userId) {
        return userMapper.deleteUserById(userId);
    }

    public int updateUser(User user) {
        return userMapper.updateUser(user);
    }

    public User queryUserById(int userId) {
        return userMapper.queryUserById(userId);
    }

    public List<User> queryAllUser() {
        return userMapper.queryAllUser();
    }

    public User queryUserByName(String userName) {
        return userMapper.queryUserByName(userName);
    }

    public List<User> queryUserWaitPass() {
        return userMapper.queryUserWaitPass();
    }

    public int updateUserStatus(User user) {
        return userMapper.updateUserStatus(user);
    }

    public int updateUserStatusNot(User user) {
        return userMapper.updateUserStatusNot(user);
    }
}
