<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="dao" class="dao.UserDao" scope="page" />
 <% 
String day=(String)request.getParameter("day");
String guanjianzi=(String)request.getParameter("guanjianzi");
String sum=(String)request.getParameter("sum");
String days=(String)request.getParameter("days");
String zuichang=(String)request.getParameter("zuichang");

dao.tianjia(day,guanjianzi,sum,days,zuichang);
out.print("<script language='javaScript'> alert('添加成功');</script>");
response.setHeader("refresh", "0;url=xianshi.jsp");%>
</body>
</html>