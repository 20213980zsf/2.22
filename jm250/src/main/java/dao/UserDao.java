package dao; 
import util.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.*;
import java.util.*;

public class UserDao {

	 public void tianjia(String day,String guanjianzi,String sum,String days,String zuichang) throws Exception
     {
         Connection connection = DBUtil.getConnection();
         PreparedStatement preparedStatement=null;       
         try {
             //hubie,housetype,houseS,home,name,id,sex,minzu,edu;
             String sql = "insert into websites () values (?,?,?,?,?)";
             preparedStatement=connection.prepareStatement(sql);
             preparedStatement.setString(1,day);
             preparedStatement.setString(2,guanjianzi);
             preparedStatement.setString(3,sum);
             preparedStatement.setString(4,days);
             preparedStatement.setString(5,zuichang);
            
         
             preparedStatement.executeUpdate();
             //System.out.println("添加成功");
             
         } catch (SQLException  e) {
             e.printStackTrace();
         }finally{
            
         }
         
     }
	
	
	
	
	
}
