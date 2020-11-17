
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
                    <small style="font-size: 35px">评论详细</small>
                    <div style="float: right">
                        <a class="btn btn-primary" href="${pageContext.request.contextPath}/comment/allComment">返回</a>
                    </div>
                </h1>

            </div>
        </div>
    </div>

    <form action="${pageContext.request.contextPath}" method="post">
        <%--  隐藏域很重要  ******--%>
        <input type="hidden" name="commentId" value="${comment.commentId}">
        <%-- ******       --%>

        <div class="form-group">
            <label>评论作者</label>
            <input type="text" name="commentUserName" value="${comment.commentUserName}" class="form-control" readonly required>
        </div>
        <div class="form-group">
            <label>评论文章</label>
            <input type="text" name="commentReport" value="${comment.commentReport}" class="form-control" readonly required>
        </div>

        <div class="form-group">
            <label for="exampleFormControlTextarea1">评论内容</label>
            <textarea class="form-control"  id="exampleFormControlTextarea1" rows="3" name="commentContent" readonly>${comment.commentContent}</textarea>
        </div>






    </form>



</div>

</body>
</html>
