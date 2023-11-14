<%@ page import="com.example.jsp_ownclasssutdy_dao.DAO" %>
<%@ page import="com.example.jsp_ownclassstudy_bean.VO" %><%--
  Created by IntelliJ IDEA.
  User: kimkwang-il
  Date: 11/10/23
  Time: 04:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
<div id="div1">
  <%
    DAO dao = new DAO();
    VO vo = new VO();

    String myIndex = request.getParameter("index");
    vo = dao.getData(Integer.parseInt(myIndex));
  %>
  <div class="mb-3" id="my-mb-3-1">
    <label for="data1" class="form-label">과목 이름</label>
    <input
            type="text"
            class="form-control"
            id="data1"
            value="<%=vo.getSubject()%>"
            name="subject"
            disabled="disabled">
  </div>
  <div class="mb-3" id="my-mb-3-2">
    <label for="data2" class="form-label">작성 날짜</label>
    <input
            type="date"
            class="form-control"
            id="data2"
            value=<%=vo.getDate()%>
                    name="date"
            disabled="disabled">
  </div>
  <div class="mb-3" id="my-mb-3-1">
    <label for="data3" class="form-label">주차</label>
    <input
            type="text"
            class="form-control"
            id="data3"
            value=<%=vo.getWeek() + "주차"%>
                    name="week"
            disabled="disabled">
  </div>
  <div class="mb-3" id="my-mb-3-2">
    <label for="data4" class="form-label">차시</label>
    <input
            type="text"
            class="form-control"
            id="data4"
            value=<%=vo.getCount()+ "차"%>
                    name="count"
            disabled="disabled">

  </div>
  <div class="mb-3">
    <label for="data5" class="form-label">제목</label>
    <input
            type="text"
            class="form-control"
            id="data5"
            value="<%=vo.getTitle()%>"
            name="title"
            disabled="disabled">
  </div>
  <div class="mb-3">
    <label for="data6" class="form-label">내용</label>
    <textarea
            class="form-control"
            id="data6"
            rows="3"
            name="content"
            disabled="disabled"><%=vo.getContent()%></textarea>
  </div>
  <div class="mb-3">
    <label for="data6" class="form-label">사진</label>
    <br>
    <img src="${pageContext.request.contextPath}/upload/<%=vo.getPhoto()%>" alt="파일이 없습니다." height="500vh" id="myPhoto">




  </div>
  <input class="btn btn-primary" type="button" value="수정하기" id="button1" onclick="editMoving()">
  <input class="btn btn-primary" type="button" value="삭제하기" id="button2" onclick="deleteRecord()">
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

</body>
<script>
  function deleteRecord() {
    // 삭제를 수행하는 코드
    window.location.href = "delete_ok.jsp?index=<%=vo.getIndex()%>";

  }
  function editMoving(){
    window.location.href = "edit.jsp?index=<%=vo.getIndex()%>";
  }
</script>


</html>