package controllers;
import java.sql.*;
public class ConnectionProvider {
	public static Connection connect()throws Exception {
	
		String uid="system";
	    String pwd="tiger";
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection c=DriverManager.getConnection(url,uid,pwd);
		return c;
	
	}
	

}
