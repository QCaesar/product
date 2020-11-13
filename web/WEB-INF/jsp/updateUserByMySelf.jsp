
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>新增用户</small>
                    <div style="float: right">
                        <a class="btn btn-primary" href="${pageContext.request.contextPath}">返回</a>
                    </div>
                </h1>

            </div>
        </div>
    </div>

    <form action="${pageContext.request.contextPath}/login/updateUserInfo" method="post">
        <%--  隐藏域很重要  ******--%>
        <input type="hidden" name="userId" value="${QUser.userId}">
        <%-- ******       --%>
        <input type="hidden" name="userName" value="${sessionScope.user.userName}">

        <input type="hidden" name="userStatus" value="${QUser.userStatus}">

        <div class="form-group">
            <label>用户名称${QUser.userName}</label>

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
                <label>用户身份：${QUser.userStatus}</label>

            </div>

            <div class="form-group">
                <label>用户状态：${QUser.userState}</label>

            </div>



        <div class="form-group">
            <input type="submit" class="form-control" value="修改">
        </div>


    </form>



</div>

</body>
</html>
