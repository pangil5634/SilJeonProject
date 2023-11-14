<%--
  Created by IntelliJ IDEA.
  User: kimkwang-il
  Date: 11/14/23
  Time: 20:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import ="com.example.jsp_ownclasssutdy_common.*, java.io.File" %>
<%@ page import ="com.oreilly.servlet.*" %>
<%@ page import ="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%
  String filename = "";
  int sizeLimit = 15 * 1024 * 1024;

  String realPath = request.getServletContext().getRealPath("upload");
  File dir = new File(realPath);
  if(!dir.exists()) dir.mkdirs();

  MultipartRequest multipartRequest = null;
  multipartRequest = new MultipartRequest(request, realPath, sizeLimit, "utf-8", new DefaultFileRenamePolicy());
  filename = multipartRequest.getFilesystemName("photo");
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
  파일명 <%=filename%>
  <br>
  업로드한 파일의 경로 : ${pageContext.request.contextPath}/upload/<%=filename%>
  <br>
  물리적인 저장 경로 : <%=realPath%>
  <br>

<%--  <img src = "${pageContext.request.contextPath}/upload/<%=filename%>" alt = "uploaded photo">--%>
  <img src = "${pageContext.request.contextPath}/upload/<%=filename%>" alt = "uploaded photo">
</body>
</html>
