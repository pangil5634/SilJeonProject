<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@page import="com.example.BoardDAO, com.example.BoardVO,java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>free board</title>
    <style>
        #list {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        #list td, #list th {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: center;
        }

        #list tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        #list tr:hover {
            background-color: #ddd;
        }

        #list th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: center;
            background-color: #006bb3;
            color: white;
        }

        a {
            text-decoration: none;
            color: black;
        }

        a:hover {
            color: yellow;
        }

        #button1 {
            width: 130px;
            height: 40px;
            border-radius: 15px;
            border: none;
            font-size: 1rem;
        }

        #button1:hover {
            background-color: #006bb3;
            color: white;
        }

        #myDiv{
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
    </style>
    <script>
        function delete_ok(id) {
            var a = confirm("정말로 삭제하겠습니까?");
            if (a) location.href = 'deleteok/' + id;
        }
    </script>
</head>
<body>
<%--<img src = "img/banner.png" alt = "배너 사진" width = "90%"/>--%>
<div id="myDiv">
    <h1>2023 전세계 스포츠대회</h1>
    <button onclick="location.href='add'" id="button1">Add New Post</button>
</div>
<table id="list" width="90%">
    <tr>
        <th>Id</th>
        <th>Country_name</th>
        <th>GOLD</th>
        <th>SILVER</th>
        <th>BRONZE</th>
        <th>TOTAL</th>
        <th>DETAIL</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    <c:forEach items="${list}" var="u">
        <tr>
            <td>${u.getSeq()}</td>
            <td>${u.getCountry_name()}</td>
            <td>${u.getGold()}</td>
            <td>${u.getSilver()}</td>
            <td>${u.getBronze()}</td>
            <td>${u.getTotal()}</td>
            <td><a href="view/${u.seq}">⭐️</a></td>
            <td><a href="editform/${u.seq}">Edit</a></td>
            <td><a href="javascript:delete_ok('${u.seq}')">Delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>