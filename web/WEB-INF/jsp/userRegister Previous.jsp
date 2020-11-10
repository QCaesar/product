
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

                </h1>

            </div>
        </div>
    </div>

    <form action="${pageContext.request.contextPath}/login/userQuery" method="post">
        <div class="form-group">
            <label>用户名称</label>
            <span style="color: red;font-weight: bold">${repeat}</span>
            <input type="text" name="userName" class="form-control" >
        </div>
        <div class="form-group">
            <label>用户密码</label>
            <input type="password" id="userPwd" name="userPwd" class="form-control" onkeyup="checkpassword()" placeholder="密码不少于6位">
        </div>
        <div class="form-group">
            <label>再次输入密码</label> <span id="tishi"></span>
            <input type="password" id="userPwd2" name="userPwd2" class="form-control"  onkeyup="checkpassword()">
        </div>
        <div class="form-group">
            <label>用户电话</label>
            <input type="text" name="userTel" class="form-control" >
        </div>
        <div class="form-group">
            <label>用户邮箱</label>
            <input type="text" name="userEmail" class="form-control">
        </div>
        <div class="form-group">
            <label>用户身份</label>
            <select name="userStatus">
                <option value="普通用户">普通用户</option>
                <option value="编辑者">编辑者</option>
            </select>
        </div>


        <div class="form-group">
            <input type="submit" class="form-control" value="注册">
        </div>


    </form>



</div>

</body>
</html>
