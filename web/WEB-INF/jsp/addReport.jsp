
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>
<%@include file="managementDaoHang.jsp"%>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small style="font-size: 35px">新增新闻报道</small>
                    <div style="float: right">
                        <a class="btn btn-primary" onclick="window.history.back()" >返回</a>
                    </div>
                </h1>

            </div>
        </div>
    </div>

    <form action="${pageContext.request.contextPath}/report/addReport" method="post">
        <div class="form-group">
            <label>新闻名称</label>
            <input type="text" name="reName" class="form-control" required>
        </div>
        <div class="form-group">
            <label>新闻作者</label>
            <input type="text" name="reAuthor" class="form-control" required>
        </div>
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
