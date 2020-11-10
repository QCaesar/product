
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
    <link rel="stylesheet" href="../static/css/bootstrap.css" />
    <link rel="stylesheet" href="../static/css/register.css" />
    <link rel="stylesheet" href="../static/css/footer&cbl.css" />
    <link rel="stylesheet" href="../static/css/daohang.css" />
    <script type="text/javascript" src="../static/js/jquery-1.11.3.js" ></script>
    <script type="text/javascript" src="../static/js/bootstrap.js" ></script>
    <script type="text/javascript" src="../static/js/templet.js" ></script>
    <title></title>
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
<div id="main">

    <div class="main">
        <div class="container  ">
            <div class="c2">
                <p style="font-size: 35px">注册页面</p>

            </div>
            <div class="c3">
                <form action="/login/userQuery">
                    <div class="form-group">
                        <label for="userName">用户名 *</label><span style="color: red;font-weight: bold">${repeat}</span>
                        <input type="text" class="form-control" name="userName" id="userName" required>
                        <span class="pp hide">此项必须填写</span>
                    </div>

                    <div class="form-group">
                        <label for="userPwd">密码 <img class="help" src="../static/img/help.png" title="最少8位"/>*</label>
                        <input type="password" class="form-control" name="userPwd" id="userPwd" onkeyup="checkpassword()" placeholder="密码不少于6位" required>
                        <span class="pp hide">此项必须填写</span>
                    </div>
                    <div class="form-group">
                        <label for="userPwd2">再次输入密码 </label> <span id="tishi"></span>
                        <input type="password" class="form-control" id="userPwd2" name="userPwd2 onkeyup="checkpassword() required>
                        <span class="pp hide">此项必须填写</span>
                    </div>
                    <div class="form-group">
                        <label for="userTel">手机号码 *</label>
                        <input type="text" class="form-control" name="userTel" id="userTel" required>
                        <span class="pp hide">此项必须填写</span>
                    </div>
                    <div class="form-group">
                        <label for="userEmail">电子邮箱 *</label>
                        <input type="text" class="form-control" name="userEmail" id="userEmail" required>
                        <span class="pp hide">此项必须填写</span>
                    </div>
                    <div class="checkbox">
                        <label>
                            <input type="checkbox"> 我已经阅读并同意<a>服务条款</a>以及<a>法律声明</a>。
                        </label>
                    </div>
                    <div class="c3-1">
                        <button type="submit" class="btn btn-default btn1">注册</button>
                        <a href="/login/touserLogin" type="button" class="btn btn-default btn2">已经有账号了?请登录</a>
                    </div>

                </form>
                <br>

            </div>
        </div>
    </div>
    <ul class="cbl" >
        <li><a href="#">
            <div class="icon d1"><i class="i1"></i><span class="title">在线客服</span></div>
        </a></li>
        <i class="clearfix"></i>
        <li><a href="#">
            <div class="icon d2"><i class="i2"></i><span class="title">4006285729</span></div>
        </a></li>
        <i class="clearfix"></i>
        <li><a  href="#">
            <div class="icon"><i class="i3"></i><span class="title">教程中心</span></div>
        </a></li>
        <i class="clearfix"></i>
    </ul>
</div>
</body>


</html>