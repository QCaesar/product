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


<div class="navbar navbar-default">
    <div class="container">
        <div class="navbar-header">
            <a href="index.html" class="navbar-brand"></a>
        </div>
        <!-- class="visible-xs-inline-block"：在超小屏幕上显示-->
        <label for="toggle-checkbox" id="toggle-label" class="visible-xs-inline-block">菜单</label>
        <input type="checkbox" class="hidden" id="toggle-checkbox">
        <div class="hidden-xs">
            <ul class="nav navbar-nav">
                <li class="active"><a href="/login/backToNewsIndexUser">首页</a></li>
                <li><a href="#">国内</a></li>
                <li><a href="#">国际</a></li>
                <li><a href="#">数读</a></li>
                <li><a href="#">社会</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a>欢迎你 普通用户 ${sessionScope.user.userName}</a></li>
                <li><a href="/login/toupdateUserInfo?userName=${sessionScope.user.userName}">个人中心</a></li>
                <li><a href="/login/toupdateUserPwd?userName=${sessionScope.user.userName}">修改密码</a></li>
                <li><a href="/login/logOut">注销</a></li>
            </ul>
        </div>
    </div>
</div>


<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small style="font-size: 35px">我的评论</small>
                </h1>
            </div>
        </div>

    </div>
    <div class="row clearfix" style="overflow: hidden;white-space:nowrap;text-overflow:ellipsis;">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped" style="table-layout:fixed">
                <thead>
                <tr>


                    <th>新闻名称</th>
                    <th>评论内容</th>
                    <th>评论时间</th>



                </tr>
                </thead>

                <tbody>
                <c:forEach var="comment" items="${commentList}">
                    <tr>


                        <td>${comment.commentReport}</td>
                        <td>${comment.commentContent}</td>
                        <td><fmt:formatDate value="${comment.commentAddTime}" pattern="yyyy-MM-dd  HH:mm:ss"/></td>


<%--                        <td>--%>

<%--                            <a href="${pageContext.request.contextPath}/comment/toshowComment?commentId=${comment.commentId}">详情</a>  |&nbsp;--%>
<%--                            <a href="${pageContext.request.contextPath}/comment/deleteComment?commentId=${comment.commentId}">删除</a>--%>
<%--                        </td>--%>
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
