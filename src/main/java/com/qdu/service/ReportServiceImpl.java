package com.qdu.service;

import com.qdu.dao.ReportMapper;
import com.qdu.pojo.Report;

import java.util.List;

public class ReportServiceImpl implements ReportService {

    private ReportMapper reportMapper;

    public void setReportMapper(ReportMapper reportMapper) {
        this.reportMapper = reportMapper;
    }

    public List<Report> queryAllReport() {
        return reportMapper.queryAllReport();
    }

    public Report queryReportById(int reId) {
        return reportMapper.queryReportById(reId);
    }

    public Report queryReportByName(String reName) {
        return reportMapper.queryReportByName(reName);
    }

    public int addReport(Report report) {
        return reportMapper.addReport(report);
    }

    public int deleteReport(int reId) {
        return reportMapper.deleteReport(reId);
    }

    public int updateReport(Report report) {
        return reportMapper.updateReport(report);
    }

    public List<Report> queryAllReportNotPass() {
        return reportMapper.queryAllReportNotPass();
    }

    public int updateReportState(Report report) {
        return reportMapper.updateReportState(report);
    }
}
