
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="../static/css/bootstrap.min.css">
    <link rel="stylesheet" href="../static/css/main.css">
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
                <li class="active"><a href="/login/backToNewsIndexEditor">首页</a></li>
                <li><a href="#">国内</a></li>
                <li><a href="#">国际</a></li>
                <li><a href="#">数读</a></li>
                <li><a href="#">社会</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a>欢迎你 ${sessionScope.user.userStatus} ${sessionScope.user.userName}</a></li>
                <li><a href="/login/toupdateEditorInfo?userName=${sessionScope.user.userName}">个人中心</a></li>
                <li><a href="/login/toupdateEditorPwd?userName=${sessionScope.user.userName}">修改密码</a></li>
                <li><a href="/login/toaddReportByEditor">添加新闻</a></li>
                <li><a href="/login/queryReportByEditor?userName=${sessionScope.user.userName}">我的文章</a></li>
                <li><a href="/login/logOut">注销</a></li>
            </ul>
        </div>
    </div>
</div>
<%--<div class="container">--%>
<%--    <div class="row clearfix">--%>
<%--        <div class="col-md-12 column">--%>
<%--            <div class="page-header">--%>
<%--                <h1>--%>
<%--                    <small>新增用户</small>--%>
<%--                    <div style="float: right">--%>
<%--                        <a class="btn btn-primary" href="${pageContext.request.contextPath}">返回</a>--%>
<%--                    </div>--%>
<%--                </h1>--%>

<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>

<%--    <form action="${pageContext.request.contextPath}/login/updateUserInfo" method="post">--%>
<%--        &lt;%&ndash;  隐藏域很重要  ******&ndash;%&gt;--%>
<%--        <input type="hidden" name="userId" value="${QUser.userId}">--%>
<%--         ******       --%>
<%--        <input type="hidden" name="userName" value="${sessionScope.user.userName}">--%>

<%--        <input type="hidden" name="userStatus" value="${QUser.userStatus}">--%>

<%--        <div class="form-group">--%>
<%--            <label>用户名称${QUser.userName}</label>--%>

<%--        </div>--%>

<%--        <div class="form-group">--%>
<%--            <label>用户电话</label>--%>
<%--            <input type="text" name="userTel" class="form-control" value="${QUser.userTel}" required>--%>
<%--        </div>--%>
<%--        <div class="form-group">--%>
<%--            <label>用户邮箱</label>--%>
<%--            <input type="text" name="userEmail" class="form-control" value="${QUser.userEmail}" required>--%>
<%--        </div>--%>

<%--            <div class="form-group">--%>
<%--                <label>用户身份：${QUser.userStatus}</label>--%>

<%--            </div>--%>

<%--            <div class="form-group">--%>
<%--                <label>用户状态：${QUser.userState}</label>--%>

<%--            </div>--%>



<%--        <div class="form-group">--%>
<%--            <input type="submit" class="form-control" value="修改">--%>
<%--        </div>--%>


<%--    </form>--%>



<%--</div>--%>


<div class="container container-small">
    <h1>个人中心
        <br>
        <hr/>


    </h1>
    <form action="${pageContext.request.contextPath}/login/updateUserInfo" method="post">
        <input type="hidden" name="userId" value="${QUser.userId}">
        <input type="hidden" name="userName" value="${sessionScope.user.userName}">
        <input type="hidden" name="userStatus" value="${QUser.userStatus}">

        <div class="form-group">
            <label>用户名称:${QUser.userName}</label>

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
            <button type="submit" class="btn btn-primary btn-block">修改</button>
        </div>


    </form>



</div>


</body>
</html>
