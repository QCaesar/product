
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<%@include file="managementDaoHang.jsp"%>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small style="font-size: 35px">修改用户信息</small>
                    <div style="float: right">
                        <a class="btn btn-primary" href="${pageContext.request.contextPath}/user/allUser">返回</a>
                    </div>
                </h1>

            </div>
        </div>
    </div>

    <form action="${pageContext.request.contextPath}/user/updateUser" method="post">
<%--  隐藏域很重要  ******--%>
        <input type="hidden" name="userId" value="${QUser.userId}">
<%-- ******       --%>

        <div class="form-group">
            <label>用户名称</label>
            <input type="text" name="userName" value="${QUser.userName}" class="form-control" readonly required>
        </div>
        <div class="form-group">
            <label>用户密码</label>
            <input type="text" name="userPwd" value="${QUser.userPwd}" class="form-control" required>
        </div>
        <div class="form-group">
            <label>用户电话</label>
            <input type="text" name="userTel" class="form-control" value="${QUser.userTel}" required>
        </div>
        <div class="form-group">
            <label>用户邮箱</label>
            <input type="text" name="userEmail" class="form-control" value="${QUser.userEmail}" required>
        </div>
        <div class="form-group">
            <label>用户身份</label>
            <input type="text" name="userStatus" value="${QUser.userStatus}" class="form-control" required>
        </div>
        <div class="form-group">
            <label>用户状态</label>
            <input type="text" name="userState" class="form-control" value="${QUser.userState}" required>
        </div>

        <div class="form-group">
            <input type="submit" class="form-control" value="修改">
        </div>


    </form>



</div>

</body>
</html>
