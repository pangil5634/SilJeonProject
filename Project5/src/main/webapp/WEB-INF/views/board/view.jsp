<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@page import="com.example.BoardDAO, com.example.BoardVO" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Form</title>
    <link href="${path}/resources/css/style.css" rel="stylesheet" >
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

<h1>VIEW PAGE</h1>
<form>
    <input type="hidden" name="seq" value="${u.seq}"/>
    <table>
        <tr>
            <td>COUNTRY_NAME:</td>
            <td><input type="text" name="country_name" value="${u.country_name}" disabled/></td>
        </tr>
        <tr>
            <td>GOLD:</td>
            <td><input type="text" name="gold" value="${u.gold}" disabled/></td>
        </tr>
        <tr>
            <td>SILVER:</td>
            <td><input type="text" name="silver" value="${u.silver}" disabled/></td>
        </tr>
        <tr>
            <td>BRONZE:</td>
            <td><input type="text" name="bronze" value="${u.bronze}" disabled/></td>
        </tr>

        <tr>
            <td>TOTAL:</td>
            <td><input type="text" name="total" value="${u.total}" disabled/></td>
        </tr>
        <tr>
            <td>Content:</td>
            <td><textarea cols="50" rows="5" name="content" disabled>${u.content}</textarea></td>
        </tr>
        <tr>
            <td>TOTAL:</td>
            <td><input type="date" name="regdate" value="${u.regdate}" disabled/></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="수정하기"/>
                <input type="button" value="홈으로" onclick="history.back()"/></td>
        </tr>
    </table>
</form>

</body>
</html>