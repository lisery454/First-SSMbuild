<%--
  Created by IntelliJ IDEA.
  User: silly
  Date: 2022/1/26
  Time: 11:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <title>首页</title>
</head>
<style>
    a {
        text-decoration: none;
        color: white;
        font-size: 18px;
    }

    h3 {
        width: 180px;
        height: 38px;
        margin: 100px auto;
        text-align: center;
        line-height: 38px;
        background: deepskyblue;
        border-radius: 5px;
    }
</style>
<body>

<h3>
    <a href="${pageContext.request.contextPath}/request/allBooks">进入书籍展示页面</a>
</h3>
</body>
</html>
