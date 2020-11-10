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
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
    <link rel="stylesheet" href="../static/css/bootstrap.css" />
    <link rel="stylesheet" href="../static/css/login.css" />
    <link rel="stylesheet" href="../static/css/footer&cbl.css" />
    <link rel="stylesheet" href="../static/css/daohang.css" />
    <script type="text/javascript" src="../static/js/jquery-1.11.3.js" ></script>
    <script type="text/javascript" src="../static/js/bootstrap.js" ></script>
    <script type="text/javascript" src="../static/js/templet.js" ></script>
    <script type="text/javascript" src="../static/js/hp.js" ></script>
    <title></title>
</head>

<script type="text/javascript">
    function correct()
    {
        alert("注册成功，请登录！")
    }
</script>
<body onload="correct()">
<div id="main">
    <div>
        <br/><br/>
        <br/>
    </div>
    <div class="main">
        <div class="container">
            <div class="c2">
                <p style="font-size: 50px">登陆页面</p>

            </div>
            <div class="c3">
                <form action="/login/userLogin" method="post">
                    <div class="form-group">
                        <label for="userName">用户名</label><span style="color: red;font-weight: bold">${error}</span>
                        <input type="text" class="form-control" name="userName" id="userName" required>
                    </div>
                    <div class="form-group">
                        <label for="userPwd">密码</label>
                        <input type="password" class="form-control" name="userPwd" id="userPwd" required>
                    </div>
                    <div class="checkbox">
                        <label>
                            <input type="checkbox"> 记住我（请在私人计算机上使用此功能）
                        </label>
                    </div>
                    <div class="c3-1">
                        <button id="denglu" type="submit" class="btn btn-default btn1">登录</button>
                        <a href="/login/toRegister" type="button" class="btn btn-default btn2">注册</a>
                    </div>

                    <div class="c3-3 clearfix">
                        <a href="" class="pull-right">忘记密码？点这里找回</a>
                    </div>
                </form>
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
