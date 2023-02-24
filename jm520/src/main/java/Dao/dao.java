package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;


import util.dbutil;
public class dao {

	
	
	 public void tianjia(String name,String id,String age,String banji,String xuehao ) throws Exception
     {
         Connection connection = dbutil.getConnection();
         PreparedStatement preparedStatement=null;       
         try {
             //hubie,housetype,houseS,home,name,id,sex,minzu,edu;
             String sql = "insert into xuesheng () values (?,?,?,?,?)";
             preparedStatement=connection.prepareStatement(sql);
             preparedStatement.setString(1,name);
             preparedStatement.setString(2,id);
             preparedStatement.setString(3,age);
             preparedStatement.setString(4,banji);
             preparedStatement.setString(5,xuehao);
            
         
             preparedStatement.executeUpdate();
             //System.out.println("添加成功");
             
         } catch (SQLException  e) {
             e.printStackTrace();
         }finally{
            
         }
         
     }
	
	 public void delete(String a1) throws Exception{
	        Connection connection = dbutil.getConnection();
	        PreparedStatement preparedStatement = null;
	        String sql = "delete from doc_list where title = ?";
	        preparedStatement = connection.prepareStatement(sql);
	        preparedStatement.setString(1, a1);
	        preparedStatement.executeUpdate();
	    }

	
	
	
	
	
	
}
