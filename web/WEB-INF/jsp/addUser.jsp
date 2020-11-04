
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
                    <a class="btn btn-primary" href="${pageContext.request.contextPath}/user/allUser">返回</a>
                    </div>
                </h1>

            </div>
        </div>
    </div>

    <form action="${pageContext.request.contextPath}/user/addUser" method="post">
        <div class="form-group">
            <label>用户名称</label>
            <input type="text" name="userName" class="form-control" required>
        </div>
        <div class="form-group">
            <label>用户密码</label>
            <input type="text" name="userPwd" class="form-control" required>
        </div>
        <div class="form-group">
            <label>用户电话</label>
            <input type="text" name="userTel" class="form-control" required>
        </div>
        <div class="form-group">
            <label>用户邮箱</label>
            <input type="text" name="userEmail" class="form-control" required>
        </div>
        <div class="form-group">
            <label>用户身份</label>
            <select name="userStatus">
                <option value="普通用户">普通用户</option>
                <option value="编辑者">编辑者</option>
            </select>
        </div>
        <div class="form-group">
            <label>用户状态</label>
            <select name="userState">
                <option value="正常">正常</option>
                <option value="禁言">禁言</option>
                <option value="黑名单">黑名单</option>
            </select>
        </div>

        <div class="form-group">
            <input type="submit" class="form-control" value="添加">
        </div>


    </form>



</div>

</body>
</html>
