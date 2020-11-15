
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="../static/css/bootstrap.min.css">
    <link rel="stylesheet" href="../static/css/main.css">
</head>


<script type="text/javascript">
    function checkpassword() {
        var password = document.getElementById("userPwd").value;
        var repassword = document.getElementById("userPwd2").value;

        if(password == repassword) {
            document.getElementById("tishi").innerHTML="<br><font color='green'>两次密码输入一致</font>"
            document.getElementById("submit").disabled = false;

        }else {

            document.getElementById("tishi").innerHTML="<br><font color='red'>两次输入密码不一致!</font>";
            document.getElementById("submit").disabled = true;
        }
    }
</script>


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


<div class="container container-small">
    <h1>修改密码
        <br>
        <hr/>


    </h1>

    <form action="${pageContext.request.contextPath}/login/updateEditorPwd" method="post">
        <%--  隐藏域很重要  ******--%>
        <input type="hidden" name="userId" value="${QUser.userId}">
        <%-- ******       --%>
        <input type="hidden" name="userName" value="${sessionScope.user.userName}">

        <input type="hidden" name="userStatus" value="${sessionScope.user.userStatus}">
        <input type="hidden" name="userState" value="${sessionScope.user.userState}">


        <div class="form-group">
            <label>用户名称:${sessionScope.user.userName}</label>

        </div>
        <div class="form-group">
            <label>用户原密码</label><span style="color: red;font-weight: bold">${error}</span>
            <input type="text" name="userPwdPrevious" class="form-control" required>
        </div>
        <div class="form-group">
            <label>用户新密码</label>
            <input type="text" name="userPwd" class="form-control" onkeyup="checkpassword()" placeholder="密码不少于6位" required>
        </div>

        <div class="form-group">
            <label>重复输入新密码</label>
            <input type="text" name="userPwd2" class="form-control" onkeyup="checkpassword()" required>
        </div>







        <div class="form-group">
            <button type="submit" class="btn btn-primary btn-block">修改</button>
        </div>


    </form>



</div>

</body>
</html>
