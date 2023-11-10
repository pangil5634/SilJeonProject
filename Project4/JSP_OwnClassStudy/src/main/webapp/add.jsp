<%--
  Created by IntelliJ IDEA.
  User: kimkwang-il
  Date: 11/10/23
  Time: 04:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  request.setCharacterEncoding("UTF-8");

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
            action="./add_ok.jsp"
            name="form1"
            method="post"
            onsubmit="return Checkform()">
            <div class="mb-3" id="my-mb-3-1">
                <label for="data1" class="form-label">과목 이름</label>
                <input
                    type="text"
                    id="data1"
                    class="form-control"
                    placeholder="Ex : 성경의 이해"
                    name="subject">
            </div>
            <div class="mb-3" id="my-mb-3-2">
                <label for="data2" class="form-label">작성 날짜</label>
                <input type="date" class="form-control" name="date" id="data2">
            </div>
            <div class="mb-3" id="my-mb-3-1">
                <label for="data3" class="form-label">주차</label>
                <input
                    type="number"
                    class="form-control"
                    name="week"
                    placeholder="Ex : 1주차"
                    id="data3">
            </div>
            <div class="mb-3" id="my-mb-3-2">
                <label for="data4" class="form-label">차시</label>
                <input
                    type="number"
                    class="form-control"
                    name="count"
                    placeholder="Ex : 1차시"
                    id="data4">
            </div>
            <div class="mb-3">
                <label for="data5" class="form-label">제목</label>
                <input
                    type="text"
                    class="form-control"
                    name="title"
                    placeholder="Ex : 수업 정리"
                    id="data5">
            </div>
            <div class="mb-3">
                <label for="data6" class="form-label">내용</label>
                <textarea class="form-control" id="data6" rows="3" name="content"></textarea>
            </div>
            <input class="btn btn-primary" type="submit" value="Submit" id="button1">
            <input class="btn btn-primary" type="reset" value="Reset" id="button2">
        </form>

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

        <script>
            function Checkform() {

                if (form1.subject.value == "") {
                    form1
                        .subject
                        .focus();
                    alert("성명을 입력해 주십시오.");
                    return false;
                } else if (form1.date.value == "") {
                    form1
                        .date
                        .focus();
                    alert("날짜를 입력해 주십시오.");
                    return false;
                } else if (form1.week.value == "") {
                    form1
                        .week
                        .focus();
                    alert("주차를 입력해 주십시오.");
                    return false;
                } else if (form1.count.value == "") {
                    form1
                        .count
                        .focus();
                    alert("차시를 입력해 주십시오.");
                    return false;
                } else if (form1.title.value == "") {
                    form1
                        .title
                        .focus();
                    alert("제목을 입력해 주십시오.");
                    return false;
                } else if (form1.content.value == "") {
                    form1
                        .content
                        .focus();
                    alert("내용을 입력해 주십시오.");
                    return false;
                } else {
                    alert("게시물이 추가됩니다.");

                }

            }
        </script>

    </body>

</html>