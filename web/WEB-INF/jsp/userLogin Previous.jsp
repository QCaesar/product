<%--
  Created by IntelliJ IDEA.
  User: Caesar
  Date: 2020/11/8
  Time: 9:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="/login/userLogin" method="post">
        用户名：<input type="text" id="userName" name="userName">
        <span style="color: red;font-weight: bold">${error}</span>
        密码：<input type="password" id="userPwd" name="userPwd">
        <input type="submit" value="登陆">
    </form>
</body>
</html>
