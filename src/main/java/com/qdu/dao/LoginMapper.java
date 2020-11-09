package com.qdu.dao;

import com.qdu.pojo.User;

public interface LoginMapper {

    //用户注册
    int userRegister(User user);

    //用户注册查询有无重名

    User userRegisterQueryByName(String userName);


    int updateUserInfo(User user);

    int updateUserInfoPassword(User user);

    String queryUserPasswordByName(String userName);
}
