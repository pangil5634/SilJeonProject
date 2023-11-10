<%@ page import="com.example.jsp_ownclassstudy_bean.VO" %>
<%@ page import="com.example.jsp_ownclasssutdy_dao.DAO" %><%--
  Created by IntelliJ IDEA.
  User: kimkwang-il
  Date: 11/10/23
  Time: 11:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  request.setCharacterEncoding("UTF-8");
  String dataIndex = request.getParameter("index");
  System.out.println("수정 index : " + dataIndex);
  DAO dao = new DAO();
  VO vo = dao.getData(Integer.parseInt(dataIndex));
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
  <link rel="stylesheet" href="./add.css">
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
            aria-expanded="false"
            aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="./posts.jsp">Home</a>
        </li>
        <li class="nav-item">
          <label class="nav-link active" onclick="alert('현재 페이지입니다.')">Add</label>
        </li>

      </ul>
    </div>
  </div>
</nav>
<form
        id="form1"
        action="./edit_ok.jsp?index=<%=vo.getIndex()%>"
        name="form1"
        method="post"
        onsubmit="return Checkform()">
  <div class="mb-3" id="my-mb-3-1">
    <label for="data1" class="form-label">과목 이름</label>
    <input
            type="text"
            id = "data1"
            class="form-control"
            placeholder="Ex : 성경의 이해"
            value = "<%=vo.getSubject()%>"
            name="subject">
  </div>
  <div class="mb-3" id="my-mb-3-2">
    <label for="data2" class="form-label">작성 날짜</label>
    <input type="date" class="form-control" name="date" id = "data2" value = "<%=vo.getDate()%>">
  </div>
  <div class="mb-3" id="my-mb-3-1">
    <label for="data3" class="form-label">주차</label>
    <input type="number" class="form-control" name="week" placeholder="Ex : 1주차" id = "data3" value = "<%=vo.getWeek()%>">
  </div>
  <div class="mb-3" id="my-mb-3-2">
    <label for="data4" class="form-label">차시</label>
    <input type="number" class="form-control" name="count" placeholder="Ex : 1차시" id = "data4" value = "<%=vo.getCount()%>">
  </div>
  <div class="mb-3">
    <label for="data5" class="form-label">제목</label>
    <input type="text" class="form-control" name="title" placeholder="Ex : 수업 정리" id = "data5" value = "<%=vo.getTitle()%>">
  </div>
  <div class="mb-3">
    <label for="data6" class="form-label">내용</label>
    <textarea class="form-control" id="data6" rows="3" name="content" id = "data6"><%=vo.getContent()%></textarea>
  </div>
  <input class="btn btn-primary" type="submit" value="수정하기" id="button1">
  <input class="btn btn-primary" type="reset" value="Reset" id="button2">
</form>

<div class="container">
  <footer
          class="d-flex flex-wrap justify-content-between align-items-center py-3 my-4 border-top">
    <div class="col-md-4 d-flex align-items-center">
      <span class="mb-3 mb-md-0 text-body-secondary">© 2023 Fall Semester SilJeonProject</span>
    </div>
  </footer>
</div>

<script src = "myJS.js">
</script>

</body>

</html>