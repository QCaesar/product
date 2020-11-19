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

        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>

                    <th>用户名称</th>
                    <th>用户密码</th>
                    <th>用户电话</th>
                    <th>用户邮箱</th>
                    <th>用户身份</th>
                    <th>用户状态</th>


                </tr>
                </thead>

                <tbody>
                <c:forEach var="user" items="${userList}">
                    <tr>

                        <td>${user.userName}</td>
                        <td>${user.userPwd}</td>
                        <td>${user.userTel}</td>
                        <td>${user.userEmail}</td>
                        <td>${user.userStatus}</td>
                        <td>${user.userState}</td>

                        <td>

                            <a href="${pageContext.request.contextPath}/user/updateUserStatus?userId=${user.userId}">审查通过</a>  |&nbsp;
                            <a href="${pageContext.request.contextPath}/user/updateUserStatusNot?userId=${user.userId}">拒绝</a>
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
