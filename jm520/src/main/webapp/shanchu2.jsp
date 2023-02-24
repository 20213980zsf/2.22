<%@ page language="java" import="java.sql.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="util.dbutil"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="Dao" class="Dao.dao" scope="page" />
<%
    String id=(String)request.getParameter("id");
    if(id==""){
        out.print("<script language='javaScript'> alert('输入为空'); window.history.back(-1); </script>");
    }
    else if(!Dao.isSame(id))
    {
        out.print("<script language='javaScript'> alert('不存在'); window.history.back(-1); </script>");
    }
    else{
    	   %>
        <table border="1"style="text-align:center;">
        <tr>
                <td align="center" width=8%>学号</td>
                <td align="center" width=8%>姓名</td>
                <td align="center" width=10%>年龄</td>
                <td align="center" width=10%>班级</td>
                <td align="center" width=6%>分数</td>
       
                <td align="center" width=3%>删除</td>
        </tr> 
        <%
        Connection connection = dbutil.getConnection();
        PreparedStatement preparedStatement=null; 
        ResultSet rs=null;
         try {
            String sql = "select * from xuesheng";
            preparedStatement=connection.prepareStatement(sql);
            rs=preparedStatement.executeQuery();
            while(rs.next()){
                if(id.equals(rs.getObject(2)))
                {
                %>
                <tr>
                <td align="center"><%=rs.getObject(1) %></td>
                <td align="center"><%=rs.getObject(2) %></td>
                <td align="center"><%=rs.getObject(3) %></td>
                <td align="center"><%=rs.getObject(4) %></td>
                <td align="center"><%=rs.getObject(5) %></td>
              
                <td align="center"><a style="color:blue" href='deletejudge2.jsp?id=<%=rs.getObject(2) %>' onclick="javascript:return del()">删除</a> </td>
                </tr>
                
                <%
            }
            }     
        } catch (SQLException  e) {
            e.printStackTrace();
        }finally{
           
        }
        %>
        </table>
        <%
    }
%>

<script>
    function del(){
        var r = confirm("确定要删除吗？")
        if (r == true) {
             return true; 
        } else {
            return false;
        }
    } 
</script>
</body>
</html>