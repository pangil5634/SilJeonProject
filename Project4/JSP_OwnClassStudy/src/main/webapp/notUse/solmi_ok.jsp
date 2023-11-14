<%--
  Created by IntelliJ IDEA.
  User: kimkwang-il
  Date: 11/11/23
  Time: 02:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String username = request.getParameter("username");
  String gender = request.getParameter("gender");
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <h2>결과</h2>
  <lable>이름 : <%=username%></lable>
  <lable>성별 : <%=gender%></lable>
</body>
</html>
