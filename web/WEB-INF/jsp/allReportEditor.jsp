<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Caesar
  Date: 2020/10/29
  Time: 14:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
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

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small style="font-size: 35px">我的投稿</small>
                </h1>
            </div>
        </div>

    </div>
    <div class="row clearfix" style="overflow: hidden;white-space:nowrap;text-overflow:ellipsis;">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped" style="table-layout:fixed">
                <thead>
                <tr>

                    <th>新闻标题</th>

                    <th>新闻类型</th>
                    <th>新闻内容</th>
                    <th>完成时间</th>
                    <th>新闻状态</th>


                </tr>
                </thead>

                <tbody>
                <c:forEach var="report" items="${reportList}">
                    <tr>

                        <td>${report.reName}</td>

                        <td>${report.reType}</td>
                        <td>${report.reContext}</td>
                        <td><fmt:formatDate value="${report.reAddTime}" pattern="yyyy-MM-dd  HH:mm:ss"/></td>
                        <td>${report.reState}</td>


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
