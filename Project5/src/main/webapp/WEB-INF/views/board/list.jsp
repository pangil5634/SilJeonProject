<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@page import="com.example.BoardDAO, com.example.BoardVO,java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <link href="<c:url value="../css/font.css" />" rel="stylesheet">
    <link href="<c:url value="../css/list.css" />" rel="stylesheet">
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>아시안 게임 순위 집계표</title>
    <script>
        function delete_ok(id) {
            var a = confirm("정말로 삭제하겠습니까?");
            if (a) location.href = 'deleteok/' + id;
        }
    </script>
</head>
<body>
<img src = "../img/banner.png" alt = "배너 사진" width = "100%" id = "img1"/>
<div id="myDiv">
    <h1>아시안 게임 순위 집계표</h1>
    <button onclick="location.href='add'" id="button1">Add New Post</button>
</div>
<table id="list" width="100%">
    <tr>
        <th>Id</th>
        <th>Country_name</th>
        <th>🥇GOLD🥇</th>
        <th>🥈SILVER🥈</th>
        <th>🥉BRONZE🥉</th>
        <th>TOTAL</th>
        <th>DETAIL</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    <c:forEach items="${list}" var="u" varStatus="status">
        <tr>
            <td>${status.index + 1}</td>
            <td>${u.getCountry_name()}</td>
            <td>${u.getGold()}개</td>
            <td>${u.getSilver()}개</td>
            <td>${u.getBronze()}개</td>
            <td>${u.getTotal()}개</td>
            <td><a href="view/${u.seq}">보러가기️</a></td>
            <td><a href="editform/${u.seq}">Edit</a></td>
            <td><a href="javascript:delete_ok('${u.seq}')">Delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>