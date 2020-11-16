package com.qdu.pojo;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class Comment {
    private Integer commentId;
    private String commentUserName;
    private String commentReport;
    private String commentContent;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date commentAddTime;

    public Comment() {
    }

    public Comment(int commentId, String commentUserName, String commentReport, String commentContent, Date commentAddTime) {
        this.commentId = commentId;
        this.commentUserName = commentUserName;
        this.commentReport = commentReport;
        this.commentContent = commentContent;
        this.commentAddTime = commentAddTime;
    }

    public int getCommentId() {
        return commentId;
    }

    public void setCommentId(int commentId) {
        this.commentId = commentId;
    }

    public String getCommentUserName() {
        return commentUserName;
    }

    public void setCommentUserName(String commentUserName) {
        this.commentUserName = commentUserName;
    }

    public String getCommentReport() {
        return commentReport;
    }

    public void setCommentReport(String commentReport) {
        this.commentReport = commentReport;
    }

    public String getCommentContent() {
        return commentContent;
    }

    public void setCommentContent(String commentContent) {
        this.commentContent = commentContent;
    }

    public Date getCommentAddTime() {
        return commentAddTime;
    }

    public void setCommentAddTime(Date commentAddTime) {
        this.commentAddTime = commentAddTime;
    }

    @Override
    public String toString() {
        return "Comment{" +
                "commentId=" + commentId +
                ", commentUserName='" + commentUserName + '\'' +
                ", commentReport='" + commentReport + '\'' +
                ", commentContent='" + commentContent + '\'' +
                ", commentAddTime=" + commentAddTime +
                '}';
    }
}
