<%--
  Created by IntelliJ IDEA.
  User: Caesar
  Date: 2020/11/4
  Time: 14:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>test success</h1>
<p>欢迎${sessionScope.user.userStatus}${sessionScope.user.userName}</p>
<a href="/login/toupdateUserInfo?userName=${sessionScope.user.userName}">个人中心</a>
<a href="/login/toupdateUserPwd?userName=${sessionScope.user.userName}">修改密码</a>

<a href="/login/toaddReportByEditor">添加新闻</a>
<a href="/login/queryReportByEditor?userName=${sessionScope.user.userName}">我的文章</a>
</body>
</html>
