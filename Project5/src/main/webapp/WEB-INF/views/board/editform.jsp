<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@page import="com.example.BoardDAO, com.example.BoardVO" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Form</title>
</head>
<body>

<%
    //	BoardDAO boardDAO = new BoardDAO();
//	String id= ${u.seq};
//	System.out.println("id : " + id);
//	BoardVO u = null;
//
//	// id가 null이 아닌 경우에만 데이터를 가져오도록 수정
//	if (id != null && !id.isEmpty()) {
//		u = boardDAO.getBoard(Integer.parseInt(id));
//	} else {
//		System.out.println("null입니다.");
//	}
%>

<h1>Edit Form</h1>
<form action="editok" method="post">
    <input type="hidden" name="seq" value="${u.seq}"/>
    <table>
        <tr>
            <td>Title:</td>
            <td><input type="text" name="title" value="${u.title}"/></td>
        </tr>
        <tr>
            <td>Writer:</td>
            <td><input type="text" name="writer" value="${u.writer}"/></td>
        </tr>
        <tr>
            <td>Content:</td>
            <td><textarea cols="50" rows="5" name="content">${u.content}</textarea></td>
        </tr>
        <tr>
            <td>Count:</td>
            <td><input type="text" name="cnt" value="${u.cnt}"/></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="Edit Post"/>
                <input type="button" value="Cancel" onclick="history.back()"/></td>
        </tr>
    </table>
</form>

</body>
</html>