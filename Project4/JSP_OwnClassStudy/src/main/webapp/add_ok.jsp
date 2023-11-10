<%@ page import="com.example.jsp_ownclassstudy_bean.VO" %>
<%@ page import="java.util.Date" %>

<%@ page import="com.example.jsp_ownclasssutdy_dao.DAO" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.text.ParseException" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<%@ page import="java.time.LocalDate" %><%--
  Created by IntelliJ IDEA.
  User: kimkwang-il
  Date: 11/10/23
  Time: 04:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%
    request.setCharacterEncoding("UTF-8");
    String subject = request.getParameter("subject");
    String date = request.getParameter("date");
    String week = request.getParameter("week");
    String title = request.getParameter("title");
    String content = request.getParameter("content");
    String count = request.getParameter("count");

    VO vo = new VO();
    vo.setSubject(subject);
    vo.setWeek(Integer.parseInt(week));
    vo.setCount(Integer.parseInt(count));
    vo.setTitle(title);
    vo.setContent(content);

    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
    LocalDate myDate = LocalDate.parse(date, formatter);
    vo.setDate(java.sql.Date.valueOf(myDate));


    System.out.println(vo.getIndex() + "-" + vo.getSubject() + "-" + vo.getWeek() + "-" + vo.getCount() + "-" + vo.getDate() + "-" + vo.getTitle() + "-" + vo.getContent());

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
