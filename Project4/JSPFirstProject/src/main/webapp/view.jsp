<%@ page import="java.util.Date" %>
<%@ page import="java.net.URLDecoder" %><%--
  Created by IntelliJ IDEA.
  User: kimkwang-il
  Date: 11/6/23
  Time: 16:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");

    String subject = request.getParameter("subject");
    String date = request.getParameter("date");
    String week = request.getParameter("week");
    String count = request.getParameter("count");
    String title = request.getParameter("title");
    String content = request.getParameter("content");
%>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>수업 정리 사이트</title>
  <link rel="stylesheet" href="./my.css">
  <link
          href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
          crossorigin="anonymous">
  <link rel="stylesheet" href="./view.css">
</head>

<body>
<nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
    <a class="navbar-brand" href="./myform.jsp">OwnClassStudy</a>
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
          <a class="nav-link active" aria-current="page" href="./myform.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="add.jsp">Add</a>
        </li>

      </ul>
    </div>
  </div>
</nav>
<div id="div1">
  <div class="mb-3" id="my-mb-3-1">
    <label for="inputSubject" class="form-label">과목 이름</label>
    <input
            type="text"
            class="form-control"
            id="inputSubject"
            value=<%=subject%>
            name="subject"
            disabled="disabled">
  </div>
  <div class="mb-3" id="my-mb-3-2">
    <label for="inputDate" class="form-label">작성 날짜</label>
    <input
            type="date"
            class="form-control"
            id="inputDate"
            value=<%=date%>
            name="date"
            disabled="disabled">
  </div>
  <div class="mb-3" id="my-mb-3-1">
    <label for="inputWeek" class="form-label">주차</label>
    <input
            type="text"
            class="form-control"
            id="inputWeek"
            value=<%=week%>
            name="week"
            disabled="disabled">
  </div>
  <div class="mb-3" id="my-mb-3-2">
    <label for="inputCount" class="form-label">차시</label>
    <input
            type="text"
            class="form-control"
            id="inputCount"
            value=<%=count%>
            name="count"
            disabled="disabled">

  </div>
  <div class="mb-3">
    <label for="inputTitle" class="form-label">제목</label>
    <input
            type="text"
            class="form-control"
            id="inputTitle"
            value=<%=title%>
            name="title"
            disabled="disabled">
  </div>
  <div class="mb-3">
    <label for="inputContent" class="form-label">내용</label>
    <textarea
            class="form-control"
            id="inputContent"
            rows="3"
            name="content"
            disabled="disabled"><%=content%></textarea>
  </div>
  <input class="btn btn-primary" type="button" value="Edit" id="button1" onclick="editMoving()">
  <input class="btn btn-primary" type="button" value="Delete" id="button2" onclick="deleteData()">
</div>

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
<script src="./view.js"></script>
</body>

</html>