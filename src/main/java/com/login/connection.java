package com.login;

import java.sql.Connection;
import java.sql.DriverManager;
public class connection {
	
	String url = "jdbc:mysql://localhost:3306/students";
	String username = "root";
	String password = "Nish@sql";
	
	public Connection connectDB(){
		
		Connection con = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			 con = DriverManager.getConnection(url,username,password);
			
			
			
		} 
		
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return con;
	}

}
