<%--
  Created by IntelliJ IDEA.
  User: kimkwang-il
  Date: 11/6/23
  Time: 14:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  request.setCharacterEncoding("UTF-8");

  String email = request.getParameter("email");
  String password = request.getParameter("password");
  String address1 = request.getParameter("address1");
  String address2 = request.getParameter("address2");
  String city = request.getParameter("city");
  String state = request.getParameter("state");

  String zip = request.getParameter("zip");
  String isCheck = request.getParameter("isCheck");

%>
<html>
<head>
    <title>Title</title>
</head>
<body>
Email : <%=email%><br/>
Password : <%=password%><br/>
Address1 : <%=address1%><br/>
Address2 : <%=address2%><br/>
City : <%=city%><br/>
State : <%=state%><br/>
Zip : <%=zip%><br/>
IsCheck : <%=isCheck%><br/>

</body>
</html>
