package com.qdu.dao;

import com.qdu.pojo.Report;
import com.sun.org.apache.regexp.internal.RE;

import java.util.List;

public interface ReportMapper {

    //查询所有新闻
    List<Report> queryAllReport();

    //根据id查询新闻
    Report queryReportById(int reId);

    //根据名字查询新闻
    Report  queryReportByName(String reName);

    //添加
    int addReport(Report report);

    //删除
    int deleteReport(int reId);

    //修改
    int updateReport(Report report);

    //查询所有未审核的新闻报道
    List<Report> queryAllReportNotPass();

    int updateReportState(Report report);


}
