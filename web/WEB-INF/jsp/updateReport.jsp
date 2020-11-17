
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
                    <small style="font-size: 35px">修改新闻</small>
                    <div style="float: right">
                        <a class="btn btn-primary" href="${pageContext.request.contextPath}/report/allReport">返回</a>
                    </div>
                </h1>

            </div>
        </div>
    </div>

    <form action="${pageContext.request.contextPath}/report/updateReport" method="post">
        <%--  隐藏域很重要  ******--%>
        <input type="hidden" name="reId" value="${QReport.reId}">
        <%-- ******       --%>

        <div class="form-group">
            <label>新闻标题</label>
            <input type="text" name="reName" value="${QReport.reName}" class="form-control" required>
        </div>
        <div class="form-group">
            <label>新闻作者</label>
            <input type="text" name="reAuthor" value="${QReport.reAuthor}" class="form-control" required>
        </div>
        <div class="form-group">
            <label>新闻类型</label>
            <input type="text" name="reType" class="form-control" value="${QReport.reType}" required>
        </div>
            <div class="form-group">
                <label for="exampleFormControlTextarea1">新闻内容</label>
                <textarea class="form-control"  id="exampleFormControlTextarea1" rows="3" name="reContext">${QReport.reContext}</textarea>
            </div>
        <div class="form-group">
            <label>新闻状态</label>
            <input type="text" name="reState" value="${QReport.reState}" class="form-control" required>
        </div>


        <div class="form-group">
            <input type="submit" class="form-control" value="修改">
        </div>


    </form>



</div>

</body>
</html>
