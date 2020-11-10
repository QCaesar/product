package com.qdu.pojo;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class Report {
    private int reId;
    private String reName;
    private String reAuthor;
    private String reType;
    private String reContext;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date reAddTime;
    private String reState;

    public Report() {
    }

    public Report(int reId, String reName, String reAuthor, String reType, String reContext, Date reAddTime, String reState) {
        this.reId = reId;
        this.reName = reName;
        this.reAuthor = reAuthor;
        this.reType = reType;
        this.reContext = reContext;
        this.reAddTime = reAddTime;
        this.reState = reState;
    }

    public int getReId() {
        return reId;
    }

    public void setReId(int reId) {
        this.reId = reId;
    }

    public String getReName() {
        return reName;
    }

    public void setReName(String reName) {
        this.reName = reName;
    }

    public String getReAuthor() {
        return reAuthor;
    }

    public void setReAuthor(String reAuthor) {
        this.reAuthor = reAuthor;
    }

    public String getReType() {
        return reType;
    }

    public void setReType(String reType) {
        this.reType = reType;
    }

    public String getReContext() {
        return reContext;
    }

    public void setReContext(String reContext) {
        this.reContext = reContext;
    }

    public Date getReAddTime() {
        return reAddTime;
    }

    public void setReAddTime(Date reAddTime) {
        this.reAddTime = reAddTime;
    }

    public String getReState() {
        return reState;
    }

    public void setReState(String reState) {
        this.reState = reState;
    }

    @Override
    public String toString() {
        return "Report{" +
                "reId=" + reId +
                ", reName='" + reName + '\'' +
                ", reAuthor='" + reAuthor + '\'' +
                ", reType='" + reType + '\'' +
                ", reContext='" + reContext + '\'' +
                ", reAddTime=" + reAddTime +
                ", reState='" + reState + '\'' +
                '}';
    }
}
