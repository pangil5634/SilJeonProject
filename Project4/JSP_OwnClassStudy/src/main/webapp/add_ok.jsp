<%@ page import="com.example.jsp_ownclassstudy_bean.VO" %>
<%@ page import="java.util.Date" %>

<%@ page import="com.example.jsp_ownclasssutdy_dao.DAO" %>

<%@ page import="com.example.jsp_ownclasssutdy_common.FileUpload"%>
<%--
  Created by IntelliJ IDEA.
  User: kimkwang-il
  Date: 11/10/23
  Time: 04:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%
    request.setCharacterEncoding("UTF-8");

    FileUpload upload = new FileUpload();

    VO vo = new VO();
    vo = upload.uploadPhoto(request);



    DAO dao = new DAO();
    int result = dao.insertData(vo);
    if(result == 1){
        System.out.println("데이터 추가 완료");
    } else {
        System.out.println("데이터 추가 실패");
    }
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        response.sendRedirect("./posts.jsp");
    %>

</body>
</html>
