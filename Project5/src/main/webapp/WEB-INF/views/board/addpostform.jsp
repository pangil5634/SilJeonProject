<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>

<h1>Add New Post</h1>
<form action="addok" method="post">
    <table>
        <tr>
            <td>COUNTRY_NAME:</td>
            <td><input type="text" name="country_name" value="" /></td>
        </tr>
        <tr>
            <td>GOLD:</td>
            <td><input type="text" name="gold" value="" /></td>
        </tr>
        <tr>
            <td>SILVER:</td>
            <td><input type="text" name="silver" value="" /></td>
        </tr>
        <tr>
            <td>BRONZE:</td>
            <td><input type="text" name="bronze" value="" /></td>
        </tr>
        <tr>
            <td>Content:</td>
            <td><textarea cols="50" rows="5" name="content" ></textarea></td>
        </tr>
        <tr>
            <td><a href="list">View All Records</a></td>
            <td align="right"><input type="submit" value="Add Post"/></td>
        </tr>
    </table>
</form>

</body>
</html>