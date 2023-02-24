package util;

import java.sql.Connection;
import java.sql.DriverManager;

public class dbutil {

	public static Connection getConnection() throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/j", "root", "1234");
		return con;
	
	}	
	
}
