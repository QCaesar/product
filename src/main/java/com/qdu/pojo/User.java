package com.qdu.pojo;

public class User {
    private int userId;
    private String userName;
    private String userPwd;
    private String userTel;
    private String userEmail;
    private String userStatus;
    private String userState;

    public User() {
    }

    public User(int userId, String userName, String userPwd, String userTel, String userEmail, String userStatus, String userState) {
        this.userId = userId;
        this.userName = userName;
        this.userPwd = userPwd;
        this.userTel = userTel;
        this.userEmail = userEmail;
        this.userStatus = userStatus;
        this.userState = userState;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserPwd() {
        return userPwd;
    }

    public void setUserPwd(String userPwd) {
        this.userPwd = userPwd;
    }

    public String getUserTel() {
        return userTel;
    }

    public void setUserTel(String userTel) {
        this.userTel = userTel;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public String getUserStatus() {
        return userStatus;
    }

    public void setUserStatus(String userStatus) {
        this.userStatus = userStatus;
    }

    public String getUserState() {
        return userState;
    }

    public void setUserState(String userState) {
        this.userState = userState;
    }

    @Override
    public String toString() {
        return "User{" +
                "userId=" + userId +
                ", userName='" + userName + '\'' +
                ", userPwd='" + userPwd + '\'' +
                ", userTel='" + userTel + '\'' +
                ", userEmail='" + userEmail + '\'' +
                ", userStatus='" + userStatus + '\'' +
                ", userState='" + userState + '\'' +
                '}';
    }
}
