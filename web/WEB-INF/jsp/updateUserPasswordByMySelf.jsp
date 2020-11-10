
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
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

    <form action="${pageContext.request.contextPath}/login/updateUserPwd" method="post">
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
            <input type="submit" class="form-control" value="修改">
        </div>


    </form>



</div>

</body>
</html>
