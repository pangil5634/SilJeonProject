<%--
  Created by IntelliJ IDEA.
  User: kimkwang-il
  Date: 11/14/23
  Time: 20:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <form method="post" action = "fileUpload.jsp" enctype="multipart/form-data">
    <input type = "file" name = 'photo'>
    <input type = "submit" value = 'upload'>
  </form>
</body>
</html>
