package com.qdu.service;

import com.qdu.dao.LoginMapper;
import com.qdu.pojo.User;

public class LoginServiceImpl implements LoginService{

    private LoginMapper loginMapper;

    public void setLoginMapper(LoginMapper loginMapper) {
        this.loginMapper = loginMapper;
    }

    public int userRegister(User user) {
        return loginMapper.userRegister(user);
    }

    public User userRegisterQueryByName(String userName) {
        return loginMapper.userRegisterQueryByName(userName);
    }

    public int updateUserInfo(User user) {
        return loginMapper.updateUserInfo(user);
    }

    public int updateUserInfoPassword(User user) {
       return loginMapper.updateUserInfoPassword(user);
    }

    public String queryUserPasswordByName(String userName) {
        return loginMapper.queryUserPasswordByName(userName);
    }
}
