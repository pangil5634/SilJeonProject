<%--
  Created by IntelliJ IDEA.
  User: kimkwang-il
  Date: 12/1/23
  Time: 04:47
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<c:set var = "path" value = "${pageContext.request.contextPath}"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>게시판</title>
    <link rel = "stylesheet" href = "${path}/resource/css/style.css"/>
</head>
<body>
<h1>Hello world</h1>
<p><a href = "board/list">게시판으로 이동</a></p>
</body>
</html>
