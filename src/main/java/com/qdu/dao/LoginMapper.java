package com.qdu.dao;

import com.qdu.pojo.Report;
import com.qdu.pojo.User;

import java.util.List;

public interface LoginMapper {

    //用户注册
    int userRegister(User user);

    //用户注册查询有无重名

    User userRegisterQueryByName(String userName);


    int updateUserInfo(User user);

    int updateUserInfoPassword(User user);

    String queryUserPasswordByName(String userName);

    int addReportByEditor(Report report);

    List<Report> queryReportEditor(String userName);

    int updateUserStatusApply(User user);

    List<Report> queryReportByType(String reType);

    Report queryReportByName(String reName);
}
