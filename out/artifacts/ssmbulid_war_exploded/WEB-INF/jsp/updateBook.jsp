<%--
  Created by IntelliJ IDEA.
  User: silly
  Date: 2022/1/26
  Time: 21:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改书籍</title>

    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>修改书籍</small>
                </h1>
            </div>
        </div>
    </div>
    <form action="${pageContext.request.contextPath}/request/updateBook" method="post">
        <%--隐藏域--%>
        <input type="hidden" name="bookID" value="${Qbooks.bookID}"/>
        <div class="form-group">
            <label for="bookName">书籍名称:</label>
            <input type="text" class="form-control" id="bookName" name="bookName" value="${Qbooks.bookName}" required>
        </div>
        <div class="form-group">
            <label for="bookNum">书籍数量:</label>
            <input type="text" class="form-control" id="bookNum" name="bookCounts" value="${Qbooks.bookCounts}"
                   required>
        </div>
        <div class="form-group">
            <label for="bookDes">书籍描述:</label>
            <input type="text" class="form-control" id="bookDes" name="detail" value="${Qbooks.detail}" required>
        </div>
        <div class="form-group">
            <input type="submit" class="form-control" value="修改">
        </div>
    </form>
</div>

</body>
</html>
