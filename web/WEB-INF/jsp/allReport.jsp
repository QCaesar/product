<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Caesar
  Date: 2020/10/29
  Time: 14:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户列表</title>

    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .table tbody tr td{
            overflow: hidden;
            text-overflow:ellipsis;
            white-space: nowrap;
        }
    </style>
</head>


<body>
<%@include file="managementDaoHang.jsp"%>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small style="font-size: 35px">新闻列表</small>
                </h1>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4 column">
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/report/toaddReport">新增新闻</a>
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/report/allReport">显示所有新闻</a>
            </div>
            <div class="col-md-4 column"></div>
            <div class="col-md-4 column">
                <form action="${pageContext.request.contextPath}/report/queryReport" method="post" style="float:right">
                    <span style="color: red;font-weight: bold">${error}</span>
                    <input type="text" class="form-inline" name="reName" placeholder="请输入要查询的新闻标题" required>
                    <input type="submit" value="查询" class="btn btn-primary">
                </form>
            </div>
        </div>
    </div>
    <div class="row clearfix" style="overflow: hidden;white-space:nowrap;text-overflow:ellipsis;">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped" style="table-layout:fixed">
                <thead>
                <tr>

                    <th>新闻标题</th>
                    <th>新闻作者</th>
                    <th>新闻类型</th>
                    <th>新闻内容</th>
                    <th>完成时间</th>
                    <th>新闻状态</th>


                </tr>
                </thead>

                <tbody>
                <c:forEach var="report" items="${list}">
                    <tr>

                        <td>${report.reName}</td>
                        <td>${report.reAuthor}</td>
                        <td>${report.reType}</td>
                        <td>${report.reContext}</td>
                        <td>${report.reAddTime}</td>
                        <td>${report.reState}</td>

                        <td>

                            <a href="${pageContext.request.contextPath}/report/toupdateReport?reId=${report.reId}">修改</a>  |&nbsp;
                            <a href="${pageContext.request.contextPath}/report/deleteReport?reId=${report.reId}">删除</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>



</div>




</body>
</html>
