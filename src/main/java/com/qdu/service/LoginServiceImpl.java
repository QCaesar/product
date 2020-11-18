package com.qdu.service;

import com.qdu.dao.LoginMapper;
import com.qdu.pojo.Report;
import com.qdu.pojo.User;

import java.util.List;

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

    public int addReportByEditor(Report report) {
        return loginMapper.addReportByEditor(report);
    }

    public List<Report> queryReportEditor(String userName) {
        return loginMapper.queryReportEditor(userName);
    }

    public int updateUserStatusApply(User user) {
        return loginMapper.updateUserStatusApply(user);
    }

    public List<Report> queryReportByType(String reType) {
        return loginMapper.queryReportByType(reType);
    }

    public Report queryReportByName(String reName) {
        return loginMapper.queryReportByName(reName);
    }

    public List<Report> queryReport(String reName) {
        return loginMapper.queryReport(reName);
    }
}
