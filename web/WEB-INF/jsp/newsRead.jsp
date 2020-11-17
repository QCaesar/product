<%--
  Created by IntelliJ IDEA.
  User: Caesar
  Date: 2020/11/12
  Time: 20:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>新闻详情</title>
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
                <li class="active"><a href="/login/toadminIndex">首页</a></li>
                <li><a href="#">国内</a></li>
                <li><a href="#">国际</a></li>
                <li><a href="#">数读</a></li>
                <li><a href="#">社会</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a>欢迎您 管理员 admin</a></li>
                <li><a href="/login/tomanagementIndex">后台页面</a></li>
                <li><a href="/login/logOut">注销</a></li>
            </ul>
        </div>
    </div>
</div>
<div class="container">
    <div class="col-xs-8">
        <h1 class="news-title">${report.reName}</h1>
        <div class="news-status">${report.reAuthor}&nbsp;|&nbsp;<fmt:formatDate value="${report.reAddTime}" pattern="yyyy-MM-dd  HH:mm:ss"/>&nbsp;
            <div class="label label-default">${report.reType}</div>

        </div>
        <div class="news-content">
            <blockquote>
                <p>${report.reName}</p>
            </blockquote>
            <div>&nbsp;&nbsp;${report.reContext}
            </div>





        </div>
    </div>
    <div class="col-xs-4">
<%--        <div class="side-bar-card">--%>
<%--            <div class="card-title">相关推荐</div>--%>
<%--            <div class="card-body">--%>
<%--                <div class="list">--%>
<%--                    <div class="item clearfix">--%>
<%--                        <div class="col-xs-5 no-padding-h"><img src="https://dummyimage.com/1000x700/666/ccc"></div>--%>
<%--                        <div class="col-xs-7">--%>
<%--                            <div class="title">记结婚高圆圆与赵又廷北京登</div>--%>
<%--                            <div class="desc">25k阅读•35分钟前发布</div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="item clearfix">--%>
<%--                        <div class="col-xs-5 no-padding-h"><img src="https://dummyimage.com/1000x700/666/ccc"></div>--%>
<%--                        <div class="col-xs-7">--%>
<%--                            <div class="title">记结婚高圆圆与赵又廷北京登</div>--%>
<%--                            <div class="desc">25k阅读•35分钟前发布</div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="item clearfix">--%>
<%--                        <div class="col-xs-5 no-padding-h"><img src="https://dummyimage.com/1000x700/666/ccc"></div>--%>
<%--                        <div class="col-xs-7">--%>
<%--                            <div class="title">记结婚高圆圆与赵又廷北京登</div>--%>
<%--                            <div class="desc">25k阅读•35分钟前发布</div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="item clearfix">--%>
<%--                        <div class="col-xs-5 no-padding-h"><img src="https://dummyimage.com/1000x700/666/ccc"></div>--%>
<%--                        <div class="col-xs-7">--%>
<%--                            <div class="title">记结婚高圆圆与赵又廷北京登</div>--%>
<%--                            <div class="desc">25k阅读•35分钟前发布</div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="item clearfix">--%>
<%--                        <div class="col-xs-5 no-padding-h"><img src="https://dummyimage.com/1000x700/666/ccc"></div>--%>
<%--                        <div class="col-xs-7">--%>
<%--                            <div class="title">记结婚高圆圆与赵又廷北京登</div>--%>
<%--                            <div class="desc">25k阅读•35分钟前发布</div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
        <div class="side-bar-card">
            <div class="card-title">24小时热闻</div>
            <div class="card-body">
                <div class="list">
                    <div class="item">
                        <a class="title" href="#">人工智能时代的到来，把全世界的科技巨头和汽车厂商推向了研发自动驾驶技术的浪潮中。</a>
                        <div class="desc">15k阅读　1k评论</div>
                    </div>
                    <div class="item">
                        <a class="title" href="#">人工智能时代的到来，把全世界的科技巨头和汽车厂商推向了研发自动驾驶技术的浪潮中。</a>
                        <div class="desc">15k阅读　1k评论</div>
                    </div>
                    <div class="item">
                        <a class="title" href="#">人工智能时代的到来，把全世界的科技巨头和汽车厂商推向了研发自动驾驶技术的浪潮中。</a>
                        <div class="desc">15k阅读　1k评论</div>
                    </div>
                    <div class="item">
                        <a class="title" href="#">人工智能时代的到来，把全世界的科技巨头和汽车厂商推向了研发自动驾驶技术的浪潮中。</a>
                        <div class="desc">15k阅读　1k评论</div>
                    </div>
                    <div class="item">
                        <a class="title" href="#">人工智能时代的到来，把全世界的科技巨头和汽车厂商推向了研发自动驾驶技术的浪潮中。</a>
                        <div class="desc">15k阅读　1k评论</div>
                    </div>
                    <div class="item">
                        <a class="title" href="#">人工智能时代的到来，把全世界的科技巨头和汽车厂商推向了研发自动驾驶技术的浪潮中。</a>
                        <div class="desc">15k阅读　1k评论</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="footer">
    <div class="col-sm-1"></div>

    <div class="col-sm-7"><h2 style="color: black">评论区</h2>
        <hr/>
        <c:forEach var="comment"  items="${commentList}">

            <h3>${comment.commentContent}</h3>
            <div class="news-list">

                <div class="news-list-item clearfix">

                    <div class="col-xs-12">

                        <div class="info">


                            <span class="avatar"><img src="../static/img/logo.png"></span>
                            <span>${comment.commentUserName}(${sessionScope.user.userStatus})</span>&nbsp;&nbsp;|&nbsp;&nbsp;
                            <span><fmt:formatDate value="${comment.commentAddTime}" pattern="yyyy-MM-dd  HH:mm:ss"/></span>

                        </div>
                    </div>
                </div>



            </div>
            <hr/>
        </c:forEach>



        <br>
        <br>
        <br>
    </div>
</div>
</body>
</html>
