<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Caesar
  Date: 2020/11/12
  Time: 14:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>新闻首页</title>
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
                <li><a href="/comment/myCommentEditor?commentUserName=${sessionScope.user.userName}">我的评论</a></li>
                <li><a href="/login/logOut">注销</a></li>
            </ul>
        </div>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col-sm-2">
            <div class="list-group side-bar hidden-xs">
                <a class="list-group-item active">编辑新闻区</a>
                <a href="${pageContext.request.contextPath}/login/queryReportByTypeEditor?reType=时政新闻" class="list-group-item">时政新闻</a>
                <a href="${pageContext.request.contextPath}/login/queryReportByTypeEditor?reType=国际新闻" class="list-group-item">国际新闻</a>
                <a href="${pageContext.request.contextPath}/login/queryReportByTypeEditor?reType=社会新闻" class="list-group-item">社会新闻</a>
                <a href="${pageContext.request.contextPath}/login/queryReportByTypeEditor?reType=金融新闻" class="list-group-item">金融新闻</a>
                <a href="${pageContext.request.contextPath}/login/queryReportByTypeEditor?reType=娱乐新闻" class="list-group-item">娱乐新闻</a>
                <a href="${pageContext.request.contextPath}/login/queryReportByTypeEditor?reType=体育新闻" class="list-group-item">体育新闻</a>

            </div>
        </div>

        <div class="col-sm-7">
            <c:forEach var="report"  items="${reportList}">
                <div class="news-list">
                    <div class="news-list-item clearfix">

                        <div class="col-xs-10">
                            <a href="/login/showReportEditor?reName=${report.reName}" class="title">${report.reName}</a>
                            <div class="info">
                                <span class="avatar"><img src="../static/img/logo.png"></span>
                                <span>作者：${report.reAuthor}</span>&nbsp;&nbsp;|&nbsp;&nbsp;
                                <span>时间：<fmt:formatDate value="${report.reAddTime}" pattern="yyyy-MM-dd  HH:mm:ss"/></span>

                            </div>
                        </div>
                    </div>



                </div>
            </c:forEach>
        </div>
        <div class="col-sm-3">
            <div class="search-bar">
                <form action="/login/reportQueryEditor" method="post">
                    <div class="col-xs-10"> <input type="search" class="form-control" name="reName" placeholder="搜一下" required></div>
                    <div class="col-xs-2"><input type="submit" value="查询" class="btn btn-primary"></div>
                </form>
                <br><br>
            </div>
            <div class="side-bar-card flag clearfix">
                <div class="col-xs-5">
                    <img src="../static/img/1-1.png">
                </div>
                <div class="col-xs-7">
                    <div class="text-lg">有害信息举报专区</div>
                    <div>举报电话：12377</div>
                </div>
            </div>
            <%--            <div class="side-bar-card">--%>
            <%--                <div class="card-title">24小时热闻</div>--%>
            <%--                <div class="card-body">--%>
            <%--                    <div class="list">--%>
            <%--                        <div class="item">--%>
            <%--                            <a class="title" href="#">人工智能时代的到来，把全世界的科技巨头和汽车厂商推向了研发自动驾驶技术的浪潮中。</a>--%>
            <%--                            <div class="desc">15k阅读　1k评论</div>--%>
            <%--                        </div>--%>
            <%--                        <div class="item">--%>
            <%--                            <a class="title" href="#">人工智能时代的到来，把全世界的科技巨头和汽车厂商推向了研发自动驾驶技术的浪潮中。</a>--%>
            <%--                            <div class="desc">15k阅读　1k评论</div>--%>
            <%--                        </div>--%>
            <%--                        <div class="item">--%>
            <%--                            <a class="title" href="#">人工智能时代的到来，把全世界的科技巨头和汽车厂商推向了研发自动驾驶技术的浪潮中。</a>--%>
            <%--                            <div class="desc">15k阅读　1k评论</div>--%>
            <%--                        </div>--%>
            <%--                        <div class="item">--%>
            <%--                            <a class="title" href="#">人工智能时代的到来，把全世界的科技巨头和汽车厂商推向了研发自动驾驶技术的浪潮中。</a>--%>
            <%--                            <div class="desc">15k阅读　1k评论</div>--%>
            <%--                        </div>--%>
            <%--                        <div class="item">--%>
            <%--                            <a class="title" href="#">人工智能时代的到来，把全世界的科技巨头和汽车厂商推向了研发自动驾驶技术的浪潮中。</a>--%>
            <%--                            <div class="desc">15k阅读　1k评论</div>--%>
            <%--                        </div>--%>
            <%--                        <div class="item">--%>
            <%--                            <a class="title" href="#">人工智能时代的到来，把全世界的科技巨头和汽车厂商推向了研发自动驾驶技术的浪潮中。</a>--%>
            <%--                            <div class="desc">15k阅读　1k评论</div>--%>
            <%--                        </div>--%>
            <%--                    </div>--%>
            <%--                </div>--%>
            <%--            </div>--%>
        </div>
    </div>
</div>
<div class="footer">
    Copyright © Caesar && PARTNERS
</div>
</body>
</html>
