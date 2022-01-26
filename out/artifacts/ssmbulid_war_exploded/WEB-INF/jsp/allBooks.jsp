<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查询所有书籍</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>书籍列表 ------------ 显示所有书籍</small>
                </h1>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4 column">
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/request/toAddBook">新增书籍</a>
            </div>
            <div class="col-md-4 column">

            </div>
            <div class="col-md-4 column">
                <form action="${pageContext.request.contextPath}/request/queryBookByName" method="post" style="float: right">
                    <label>
                        <input type="text" name="queryBookName" class="form-inline" placeholder="请输入要查询的书籍">
                    </label>
                    <input type="submit" value="查询" class="btn btn-primary">
                </form>
            </div>
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>书籍编号</th>
                    <th>书籍名称</th>
                    <th>书籍数量</th>
                    <th>书籍详情</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="books" items="${booksList}">
                    <tr>
                        <td>${books.bookID}</td>
                        <td>${books.bookName}</td>
                        <td>${books.bookCounts}</td>
                        <td>${books.detail}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/request/toUpdateBook?id=${books.bookID}">修改</a>
                            &nbsp; | &nbsp;
                            <a href="${pageContext.request.contextPath}/request/deleteBook?id=${books.bookID}">删除</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>

        </div>
    </div>

</div>


</body>
</html>
