<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: kimkwang-il
  Date: 11/6/23
  Time: 16:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");

    String subject = request.getParameter("subject");
//    String password = request.getParameter("password");
//    String address1 = request.getParameter("address1");
//    String address2 = request.getParameter("address2");
//    String city = request.getParameter("city");
//    String state = request.getParameter("state");
//    String zip = request.getParameter("zip");
//    String isCheck = request.getParameter("isCheck");
//    String isCheckMSG = "";
//    if(isCheck.equals("1"))
//        isCheckMSG = "Check me out 체크됨!";

%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>입력하신 항목은 다음과 같습니다.</h1>
subject : <%=subject%><br/>
<%--Password : <%=password%><br/>--%>
<%--Address1 : <%=address1%><br/>--%>
<%--Address2 : <%=address2%><br/>--%>
<%--City : <%=city%><br/>--%>
<%--State : <%=state%><br/>--%>
<%--Zip : <%=zip%><br/>--%>
<%--<%=isCheckMSG%><br/>--%>

</body>
</html>