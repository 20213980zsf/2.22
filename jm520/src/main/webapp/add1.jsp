<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="Dao" class="Dao.dao" scope="page" />
<%

String name=(String)request.getParameter("name");
String id=(String)request.getParameter("id");
String age=(String)request.getParameter("age");
String banji=(String)request.getParameter("banji");
String xuehao=(String)request.getParameter("xuehao");
Dao.tianjia(name,id,age,banji,xuehao);
out.print("<script language='javaScript'> alert('添加成功');</script>");
response.setHeader("refresh", "3;url=show.jsp");%>





%>

</body>
</html>