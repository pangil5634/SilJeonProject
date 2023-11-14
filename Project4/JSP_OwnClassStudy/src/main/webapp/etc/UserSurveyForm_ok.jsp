<%--
  Created by IntelliJ IDEA.
  User: kimkwang-il
  Date: 11/11/23
  Time: 03:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    request.setCharacterEncoding("UTF-8");

    String username = request.getParameter("userName");
    String studentId = request.getParameter("studentId");
    String email = request.getParameter("email");
    String major = request.getParameter("major");
    System.out.println(major);
    String question1 = request.getParameter("question1");
    String question2 = request.getParameter("question2");
    String question3 = request.getParameter("question3");
    String question4 = request.getParameter("question4");
    String question5 = request.getParameter("question5");
    String Satisfaction = request.getParameter("Satisfaction");


%>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="../my.css">
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
            crossorigin="anonymous">
    <style>
        #myForm{
            min-width: 350px;
            border-radius: 15px;
            width : 50%;
            margin: 0 auto;
            padding : 5px 0;
            background-color: lightsteelblue;
            margin-top: 20px;
        }
        #myForm > div {
            margin : 20px 0;
        }
        #myForm > h4{
            text-align: center;
        }
    </style>
</head>
<body>
<nav class="navbar navbar-expand-lg">
    <div class="container-fluid">
        <a class="navbar-brand" href="../posts.jsp">OwnClassStudy</a>
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
                    <a class="nav-link active" aria-current="page" href="../posts.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="../add.jsp">Add</a>

                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="../timeTable.html">TimeTable</a>
                </li>
                <li class="nav-item">
                    <label class="nav-link active" onclick="alert('현재 페이지입니다.')">Survey</label>
                </li>

            </ul>
        </div>
    </div>
</nav>
<form action = "UserSurveyForm_submit.jsp" method="post" id = "myForm" onsubmit="return Checkform(3)" >
    <h4>입력하신 결과를 확인해주세요!</h4>
    <div class="mb-3-1 px-5" >
        <label for="userName" class="form-label">성함</label>
        <input type="text" class="form-control" id="userName" placeholder="ex. 홍길동" name = "userName" disabled value="<%=username%>">
    </div>

    <div class="mb-3-1 px-5" >
        <label for="userName" class="form-label">학번</label>
        <input type="number" class="form-control" id="studentId" placeholder="ex. 01020304" name = "studentId" disabled value="<%=studentId%>">
    </div>

    <div class="mb-3-1 px-5" >
        <label for="email" class="form-label">이메일</label>
        <input type="eami" class="form-control" id="email" placeholder="ex. gildong@handong.ac.kr" name = "email" disabled value="<%=email%>">
    </div>

    <div class="mb-3-1 px-5" >
        <label for="major" class="form-label">학부</label>
        <input type="text" class="form-control" id="major" name = "major" disabled value="<%=major%>">

    </div>

    <div class="mb-3-1 px-5" >
        <label for="userName" class="form-label">Q. 어떤 계기로 서비스를 이용하게 되셨나요?</label>
        <div class="form-floating">
            <textarea class="form-control" placeholder="temp" id="question1" name = "question1" disabled><%=question1%></textarea>
            <label for="question1">내용을 작성해주세요!</label>
        </div>
    </div>
    <div class="mb-3-1 px-5" >
        <label for="userName" class="form-label">Q. 서비스의 장점이라고 생각되는 점은?</label>
        <div class="form-floating">
            <textarea class="form-control" placeholder="temp" id="question2" name = "question2" disabled><%=question2%></textarea>
            <label for="question1">내용을 작성해주세요!</label>
        </div>
    </div>
    <div class="mb-3-1 px-5" >
        <label for="userName" class="form-label">Q. 서비스의 단점이라고 생각되는 점은?</label>
        <div class="form-floating">
            <textarea class="form-control" placeholder="temp" id="question3" name = "question3" disabled><%=question3%></textarea>
            <label for="question1">내용을 작성해주세요!</label>
        </div>
    </div>
    <div class="mb-3-1 px-5" >
        <label for="userName" class="form-label">Q. 개선되었으면 하는 점은?</label>
        <div class="form-floating">
            <textarea class="form-control" placeholder="temp" id="question4" name = "question4" disabled><%=question4%></textarea>
            <label for="question1">내용을 작성해주세요!</label>
        </div>
    </div>
    <div class="mb-3-1 px-5" >
        <label for="userName" class="form-label">Q. 앞으로도 이용하실 생각이신가요?</label>
        <div class="form-floating">
            <textarea class="form-control" placeholder="temp" id="question5" name = "question5" disabled><%=question5%></textarea>
            <label for="question1">내용을 작성해주세요!</label>
        </div>
    </div>

    <div class="mb-3-1 px-5" >
        <label for="Satisfaction" class="form-label">만족도</label>
        <input type="number" class="form-control" id="Satisfaction" placeholder="ex. 1~10" name = "studentId" disabled value="<%=Satisfaction%>">
    </div>
    <div class="mb-3-1 px-5" >
        <button type="submit" class="btn btn-primary">Submit</button>
    </div>

</form>

<div class="container">
    <footer
            class="d-flex flex-wrap justify-content-between align-items-center py-3 my-4 border-top">
        <div class="col-md-4 d-flex align-items-center">
            <span class="mb-3 mb-md-0 text-body-secondary">© 2023 Fall Semester SilJeonProject</span>
        </div>
    </footer>
</div>
<script src = "../myJS.js">

</script>
</body>
</html>
