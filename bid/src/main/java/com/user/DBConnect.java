package com.user;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	//create DB connection
	
	private static String url = "jdbc:mysql://localhost:3306/bidding";
	private static String username ="root";
	private static String password ="1234";
	private static Connection con;
	
	public static Connection getConnection() {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url,username,password);
		}
		catch(Exception e) {
			System.err.println("DB connection failed");
		}
		return con;
		
	}

}
