<%--
  Created by IntelliJ IDEA.
  User: kimkwang-il
  Date: 11/6/23
  Time: 14:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <!-- 합쳐지고 최소화된 최신 CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

    <!-- 부가적인 테마 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

    <!-- 합쳐지고 최소화된 최신 자바스크립트 -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <title>Title</title>
</head>
<body>

<div class="container">
    <div style="margin-top: 20px;">
        <h1>사용자 추가</h1>
    </div>
    <form class="row g-3" action="form_ok.jsp" method="post">
        <div class="col-md-6">
            <label for="inputEmail4" class="form-label">Email</label>
            <input type="email" class="form-control" id="inputEmail4" name="email">
        </div>
        <div class="col-md-6">
            <label for="inputPassword4" class="form-label">Password</label>
            <input type="password" class="form-control" id="inputPassword4" name="password">
        </div>
        <div class="col-12">
            <label for="inputAddress" class="form-label">Address</label>
            <input type="text" class="form-control" id="inputAddress" placeholder="1234 Main St" name="address1">
        </div>
        <div class="col-12">
            <label for="inputAddress2" class="form-label">Address2</label>
            <input type="text" class="form-control" id="inputAddress2" placeholder="Apartment, studio, or floor"
                   name="address2">
        </div>
        <div class="col-md-6">
            <label for="inputCity" class="form-label">City</label>
            <input type="text" class="form-control" id="inputCity"
                   name="city">
        </div>
        <div class="col-md-4">
            <label for="inputState" class="form-label">State</label>
            <select id="inputState" class="form-select" name="state">
                <option selected> Choosee...</option>
                <option>...</option>
            </select>
        </div>
        <div class="col-md-2">
            <label for="inputZip" class="form-label">Zip</label>
            <input type="text" class="form-control" id="inputZip"
                   name="zip">
        </div>
        <div class="col-12">
            <div class="form-check">
                <input type="checkbox" class="form-check-input" id="gridCheck" name="isCheck" value = 1>
                <label class="form-check-label" for="gridCheck">Check me out</label>
            </div>
        </div>
        <div class = "col-12">
            <button type = "submit" class = "btn btn-primary">Sign in</button>
        </div>

    </form>
</div>
</body>
</html>
