<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: kimkwang-il
  Date: 11/6/23
  Time: 16:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%--%>
<%--    String url = "jdbc:mysql://walab.handong.edu:3306";--%>
<%--    String userName = "p232_22000051";--%>
<%--    String password = "Tahxa9";--%>

<%--    try {--%>
<%--        Connection connection = DriverManager.getConnection(url, userName, password);--%>
<%--        Statement statement = connection.createStatement();--%>
<%--        ResultSet resultSet = statement.executeQuery("select * from ㅋOwnClassStudy");--%>

<%--        resultSet.next();--%>
<%--        String subject = resultSet.getString("subject");--%>
<%--        System.out.println(subject);--%>

<%--        resultSet.close();--%>
<%--        statement.close();--%>
<%--        connection.close();--%>

<%--    } catch (SQLException e) {--%>
<%--        throw new RuntimeException(e);--%>
<%--    }--%>
<%--%>--%>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>수업 정리 사이트</title>
    <link rel="stylesheet" href="./my.css">
    <link rel="stylesheet" href="./index.css">
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
            crossorigin="anonymous">
</head>
<body>
<nav class="navbar navbar-expand-lg bg-body-tertiary">
    <div class="container-fluid">
        <a class="navbar-brand" href="myform.jsp">OwnClassStudy</a>
        <button
                class="navbar-toggler"
                type="button"
                data-bs-toggle="collapse"
                data-bs-target="#navbarNavDropdown"
                aria-controls="navbarNavDropdown"
                aria-expanded="false"
                aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavDropdown">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="myform.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="./add.jsp">Add</a>
                </li>

            </ul>
        </div>
    </div>
</nav>

<table class="table table-hover">
    <thead>
    <tr>
        <th>#</th>
        <th>제목</th>
        <th>주차</th>
        <th>차시</th>
        <th>과목이름</th>
        <th>작성날짜</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>1</td>
        <td>
            <a href="./view.jsp?data=1" id="my_a1">OT 내용 정리</a>
        </td>
        <td>1주차</td>
        <td>1차시</td>
        <td>실전프로젝트</td>
        <td>2023.09.01</td>
    </tr>
    <tr>
        <td>2</td>
        <td>
            <a href="./view.jsp?data=2" id="my_a1">2주차 1차시 수업 정리</a>
        </td>
        <td>2주차</td>
        <td>1차시</td>
        <td>컴퓨터구조</td>
        <td>2023.09.09</td>
    </tr>
    <tr>
        <td>3</td>
        <td>
            <a href="./view.jsp?data=3" id="my_a1">1차 퀴즈 준비</a>
        </td>
        <td>4주차</td>
        <td>2차시</td>
        <td>이산 수학</td>
        <td>2023.09.21</td>
    </tr>
    <tr>
        <td>4</td>
        <td>
            <a href="./view.jsp?data=4" id="my_a1">프로젝트 1</a>
        </td>
        <td>4주차</td>
        <td>2차시</td>
        <td>실전 프로젝트
        </td>
        <td>2023.09.20</td>
    </tr>
    </tbody>
</table>

<div class="container">
    <footer
            class="d-flex flex-wrap justify-content-between align-items-center py-3 my-4 border-top">
        <div class="col-md-4 d-flex align-items-center">
            <a
                    href="/"
                    class="mb-3 me-2 mb-md-0 text-body-secondary text-decoration-none lh-1">
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