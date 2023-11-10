<%@ page import="com.example.jsp_ownclasssutdy_dao.DAO" %>
<%@ page import="com.example.jsp_ownclassstudy_bean.VO" %><%--
  Created by IntelliJ IDEA.
  User: kimkwang-il
  Date: 11/10/23
  Time: 10:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%

    String dataIndex = request.getParameter("index");
    VO vo = new VO();
    vo.setIndex(Integer.parseInt(dataIndex));
    DAO dao = new DAO();
    int deleteResult = dao.deleteData(vo);

//    if (deleteResult == 1) {
//        out.println("<script>alert('데이터 삭제에 성공했습니다.');</script>");
//        response.sendRedirect("posts.jsp"); // 삭제 성공 시, 원하는 페이지로 리다이렉트
//    } else {
//        out.println("<script>alert('데이터 삭제에 실패했습니다..');</script>");
//        response.sendRedirect("posts.jsp"); // 삭제 성공 시, 원하는 페이지로 리다이렉트

    boolean isDeleteSuccessful = (deleteResult == 1);
    request.setAttribute("isDeleteSuccessful", isDeleteSuccessful);
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<script>
    // Retrieve the flag from the JSP
    var isDeleteSuccessful = <%= request.getAttribute("isDeleteSuccessful") %>;

    // Display alert based on the flag
    if (isDeleteSuccessful) {
        alert('데이터 삭제에 성공했습니다.');
        window.location.href = 'posts.jsp'; // Redirect on success
    } else {
        alert('데이터 삭제에 실패했습니다.');
    }
</script>
</body>
</html>
