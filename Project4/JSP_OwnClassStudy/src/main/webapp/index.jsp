<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Hello World!" %>
</h1>
<br/>
<a href="hello-servlet">Hello Servlet</a>
<%--<jsp:forward page="posts.jsp"></jsp:forward>--%>
<%
    response.sendRedirect("./posts.jsp");
%>
</body>
</html>