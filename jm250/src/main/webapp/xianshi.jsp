
<%@ page language="java"   contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="util.DBUtil"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="dao" class="dao.UserDao" scope="page" />
 <table border="1"style="text-align:center;">
 <tr>
                <td align="center" width=6%>日期</td>
                <td align="center" width=8%>关键字</td>
                <td align="center" width=10%>总结</td>
                <td align="center" width=10%>天数</td>
                <td align="center" width=6%>最长日期</td>
                <%
                
                Connection connection = DBUtil.getConnection();
                PreparedStatement preparedStatement=null; 
                ResultSet rs=null;
                try {
                    String sql = "select * from websites";
                    preparedStatement=connection.prepareStatement(sql);
                    rs=preparedStatement.executeQuery();
                    while(rs.next()){
                        %>
                        <tr>
                        <td align="center"><%=rs.getObject(1) %></td>
                        <td align="center"><%=rs.getObject(2) %></td>
                        <td align="center"><%=rs.getObject(3) %></td>
                        <td align="center"><%=rs.getObject(4) %></td>
                        <td align="center"><%=rs.getObject(5) %></td>
             
                        </tr>
                        <%
                    }
                } catch (SQLException  e) {
                    e.printStackTrace();
                }finally{
                    //util.close(rs);
                    //util.close(preparedStatement);
                   // util.close(connection);
                }
                
                
                
                
                
                
                
                
                %>
               
 </tr>
</body>
</html>