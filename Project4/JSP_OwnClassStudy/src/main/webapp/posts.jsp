<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.example.jsp_ownclassstudy_bean.VO" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.jsp_ownclasssutdy_dao.DAO" %><%--
  Created by IntelliJ IDEA.
  User: kimkwang-il
  Date: 11/10/23
  Time: 03:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>수업 정리 사이트</title>
    <link rel="stylesheet" href="./my.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
          crossorigin="anonymous">
</head>
<body>
<nav class="navbar navbar-expand-lg">
    <div class="container-fluid">
        <a class="navbar-brand" href="./posts.jsp">OwnClassStudy</a>
        <button
                class="navbar-toggler"
                type="button"
                data-bs-toggle="collapse"
                data-bs-target="#navbarNavDropdown"
                aria-controls="navbarNavDropdown"
                aria-expanded="falsheaderDive"
                aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavDropdown">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="./posts.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="./add.jsp">Add</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="./timeTable.html">TimeTable</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="./etc/UserSurveyForm.html">Survey</a>
                </li>

            </ul>
        </div>
    </div>
</nav>
<div class="div_header">
    <p>각 행의 "제목"을 누르면 세부 내용을 확인할 수 있습니다.</p>
</div>

<table id="list" width="90%">
    <c:forEach items="${list}" var="u">
        <tr>
            <td>${u.getIndex()}</td>
            <td>${u.subject}</td>
            <td>${u.week}</td>
            <td>${u.count}</td>
            <td>${u.date}</td>


        </tr>
    </c:forEach>
</table>
<table class="table table-hover">
    <thead>
    <tr>
        <th>#</th>
        <th>과목이름</th>
        <th>주차</th>
        <th>차시</th>
        <th>제목</th>
        <th>작성날짜</th>
    </tr>
    </thead>
    <%
        DAO dao = new DAO();
        List<VO> list = dao.getDataList();
        request.setAttribute("list", list);
    %>
    <tbody>

    <c:forEach items="${list}" var="u" varStatus="status">
    <tr>
        <td>${status.index + 1}</td>
        <td>${u.subject}</td>
        <td>${u.week}</td>
        <td>${u.count}</td>
        <td><a href="./view.jsp?index=${u.getIndex()}" id="my_a1">${u.title}</a></td>
        <td>${u.date}</td>
            <%--    <td>--%>
            <%--      OT 내용 정리--%>
            <%--    </td>--%>
    </tr>
    <tr>
        </c:forEach>
    </tbody>
</table>

<div class="container">
    <footer
            class="d-flex flex-wrap justify-content-between align-items-center py-3 my-4 border-top">
        <div class="col-md-4 d-flex align-items-center">
            <svg class="bi" width="30" height="24">
                <use xlink:href="#bootstrap"></use>
            </svg>
            </a>
            <span class="mb-3 mb-md-0 text-body-secondary">© 2023 Fall Semester SilJeonProject</span>
        </div>

    </footer>
</div>
<script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
        crossorigin="anonymous"></script>
</body>
</html>
