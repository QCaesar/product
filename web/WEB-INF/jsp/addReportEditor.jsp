
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
                    <small>新增新闻报道</small>
                    <div style="float: right">
                        <a class="btn btn-primary" href="${pageContext.request.contextPath}">返回</a>
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
