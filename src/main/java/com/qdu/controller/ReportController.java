package com.qdu.controller;

import com.qdu.pojo.Report;
import com.qdu.pojo.User;
import com.qdu.service.ReportService;
import com.qdu.service.ReportServiceImpl;
import com.sun.org.apache.regexp.internal.RE;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/report")
public class ReportController {

    private ReportService reportService=new ReportServiceImpl();
    @Autowired
    @Qualifier("ReportServiceImpl")
    public void setReportService(ReportService reportService) {
        this.reportService = reportService;
    }

    @RequestMapping("/toaddReport")
    public String toaddReport(){
        return "addReport";
    }

    @RequestMapping("/addReport")
    public String addReport(Report report){

        reportService.addReport(report);

        return "redirect:/report/allReport";
    }

    @RequestMapping("/allReport")
    public String list(Model model){
        List<Report> report=reportService.queryAllReport();
        model.addAttribute("list",report);
        return "allReport";
    }

    @RequestMapping("/allReportNotPass")
    public String allReportNotPass(Model model){
        List<Report> reportNotPass=reportService.queryAllReportNotPass();
        model.addAttribute("listNotPass",reportNotPass);
        return "allReportNotPass";
    }

    @RequestMapping("/deleteReport")
    public String delelteReport(int reId){
        reportService.deleteReport(reId);
        return "redirect:/report/allReport";
    }


    @RequestMapping("/toupdateReport")
    public String updateUser(int reId,Model model){
        Report report = reportService.queryReportById(reId);
        model.addAttribute("QReport",report);
        return "updateReport";
    }

    @RequestMapping("/updateReport")
    public String updateReport(Report report){
        reportService.updateReport(report);
        return "redirect:/report/allReport";
    }

    @RequestMapping("/queryReport")
    public String queryReport(String reName,Model model){
        Report report = reportService.queryReportByName(reName);
        List<Report> list=new ArrayList<Report>();
        list.add(report);
        if (report==null) {
            list=reportService.queryAllReport();
            model.addAttribute("error","未查找到");
        }
        model.addAttribute("list",list);
        return "allReport";
    }

    @RequestMapping("/updateReportState")
    public String updateReportState(Report report){
        reportService.updateReportState(report);
        return "redirect:/report/allReportNotPass";
    }

}
