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
<%@include file="managementDaoHang.jsp"%>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small style="font-size: 35px">所有评论</small>
                </h1>
            </div>
        </div>

    </div>
    <div class="row clearfix" style="overflow: hidden;white-space:nowrap;text-overflow:ellipsis;">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped" style="table-layout:fixed">
                <thead>
                <tr>

                    <th>用户名称</th>
                    <th>新闻名称</th>
                    <th>评论内容</th>
                    <th>评论时间</th>



                </tr>
                </thead>

                <tbody>
                <c:forEach var="comment" items="${commentList}">
                    <tr>

                        <td>${comment.commentUserName}</td>
                        <td>${comment.commentReport}</td>
                        <td>${comment.commentContent}</td>
                        <td><fmt:formatDate value="${comment.commentAddTime}" pattern="yyyy-MM-dd  HH:mm:ss"/></td>


                        <td>

                            <a href="${pageContext.request.contextPath}/comment/toshowComment?commentId=${comment.commentId}">详情</a>  |&nbsp;
                            <a href="${pageContext.request.contextPath}/comment/deleteComment?commentId=${comment.commentId}">删除</a>
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
