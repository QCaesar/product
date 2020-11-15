
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
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

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>新增新闻报道</small>
                    <div style="float: right">
                        <a class="btn btn-primary" onclick="window.history.back()">返回</a>
                    </div>
                </h1>

            </div>
        </div>
    </div>

    <form action="${pageContext.request.contextPath}/login/addReportByEditor" method="post">
        <div class="form-group">
            <label>新闻标题</label>
            <input type="text" name="reName" class="form-control" required>
        </div>

            <input type="hidden" name="reAuthor"  value="${sessionScope.user.userName}">

        <div class="form-group">
            <label>新闻类型</label>
            <input type="text" name="reType" class="form-control" required>
        </div>
        <div class="form-group">
            <label for="exampleFormControlTextarea1">新闻内容</label>
            <textarea class="form-control"  id="exampleFormControlTextarea1" rows="3" name="reContext"></textarea>
        </div>

        <div class="form-group">
            <button type="submit" class="btn btn-primary">Submit</button>
        </div>


    </form>



</div>

</body>
</html>
