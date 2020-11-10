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

</head>
<body>
<%@include file="managementDaoHang.jsp"%>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small style="font-size: 35px">用户列表</small>
                </h1>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4 column">
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/user/toaddUser">新增用户</a>
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/user/allUser">显示所有用户</a>
            </div>
            <div class="col-md-4 column"></div>
            <div class="col-md-4 column">
                <form action="${pageContext.request.contextPath}/user/queryUser" method="post" style="float:right">
                    <span style="color: red;font-weight: bold">${error}</span>
                    <input type="text" class="form-inline" name="userName" placeholder="请输入要查询的用户名称" required>
                    <input type="submit" value="查询" class="btn btn-primary">
                </form>
            </div>
        </div>
        </div>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>用户ID</th>
                    <th>用户名称</th>
                    <th>用户密码</th>
                    <th>用户电话</th>
                    <th>用户邮箱</th>
                    <th>用户身份</th>
                    <th>用户状态</th>


                </tr>
                </thead>

                <tbody>
                <c:forEach var="user" items="${list}">
                    <tr>
                        <td>${user.userId}</td>
                        <td>${user.userName}</td>
                        <td>${user.userPwd}</td>
                        <td>${user.userTel}</td>
                        <td>${user.userEmail}</td>
                        <td>${user.userStatus}</td>
                        <td>${user.userState}</td>

                        <td>

                            <a href="${pageContext.request.contextPath}/user/toupdateUser?userId=${user.userId}">修改</a>  |&nbsp;
                            <a href="${pageContext.request.contextPath}/user/deleteUser?userId=${user.userId}">删除</a>
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
