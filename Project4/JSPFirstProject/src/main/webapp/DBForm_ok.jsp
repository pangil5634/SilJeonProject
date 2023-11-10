<%--
  Created by IntelliJ IDEA.
  User: kimkwang-il
  Date: 11/7/23
  Time: 10:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<%
  // 한글로 바꿔줌
  request.setCharacterEncoding("UTF-8");

  // 변수 선언
  String username = request.getParameter("username");
%>
<html>
<head>
    <title>DBForm_ok</title>
</head>
<body>
<%--username 변수 사용--%>
사용자 이름 : <%=username%>
</body>
</html>
