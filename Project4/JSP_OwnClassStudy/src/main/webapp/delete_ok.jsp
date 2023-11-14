<%@ page import="com.example.jsp_ownclasssutdy_dao.DAO" %>
<%@ page import="com.example.jsp_ownclassstudy_bean.VO" %>
<%@ page import="java.io.File" %>
<%@ page import="com.example.jsp_ownclasssutdy_common.FileUpload" %><%--
  Created by IntelliJ IDEA.
  User: kimkwang-il
  Date: 11/10/23
  Time: 10:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%

    String dataIndex = request.getParameter("index");
    VO vo = new VO();
    vo.setIndex(Integer.parseInt(dataIndex));
    DAO dao = new DAO();

    String filename = dao.getPhotoFilename(Integer.parseInt(dataIndex));
    if(filename != null)
        FileUpload.deleteFile(request, filename);
    int deleteResult = dao.deleteData(vo);

    boolean isDeleteSuccessful = (deleteResult == 1);
    request.setAttribute("isDeleteSuccessful", isDeleteSuccessful);
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<script>

    var isDeleteSuccessful = <%= request.getAttribute("isDeleteSuccessful") %>;

    if (isDeleteSuccessful) {
        alert('데이터 삭제에 성공했습니다.');
        window.location.href = 'posts.jsp';
    } else {
        alert('데이터 삭제에 실패했습니다.');
    }
</script>
</body>
</html>
