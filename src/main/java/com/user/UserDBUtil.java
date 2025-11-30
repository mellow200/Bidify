package com.user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class UserDBUtil {
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs =null;
	
	public static List<User> validate(String email,String password){
		
		ArrayList<User>user = new ArrayList<>();
		
		//create database connection
		
		//validate
		
		try {
			
			//create connection
		    con =DBConnect.getConnection();
		    stmt= con.createStatement();
			String sql="select * from user where email='"+email+"' and password= '"+password+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				int id = rs.getInt(1);
				String name =rs.getString(2);
				String address =rs.getString(3);
				String city =rs.getString(4);
				String province =rs.getString(5);
				String country =rs.getString(6);
				String mail =rs.getString(8);
				String passW =rs.getString(7);
				int fax = rs.getInt(9);
				int tel = rs.getInt(10);
				
				User u = new User(id,name,address,city,province,country,mail,passW,fax,tel);
            	user.add(u);
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return user;
	}
	//insert
	public static boolean insertUser(String name, String address,String city,String province, String country,String password,String email, int fax,int tel){
		
		 isSuccess = false;
	
		try {
		
			//create connection
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "Insert into user values (0,'"+name+"','"+address+"','"+city+"','"+ province+"','"+ country +"','"+password+"','"+email+"','"+fax+"','"+tel+"')";	
			int rs = stmt.executeUpdate(sql);
			//check
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return isSuccess;
	}
	public static boolean updateUser(int id,String name, String address,String city,String province, String country,String password,String email, int fax,int tel) {
		
		try {
			//connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "update user set name = '"+name+"',address ='"+address+"',city ='"+city+"',province ='"+province+"',country ='"+country+"',password ='"+password+"',email ='"+email+"',fax ='"+fax+"',tel ='"+tel+"' where UID ='"+id+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	public static List<User> getUserDetails(int id){
		
		ArrayList<User>user = new ArrayList<>();
		
		try {
			//create connection
		    con =DBConnect.getConnection();
		    stmt= con.createStatement();
			String sql="select * from user where UID='"+id+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int ID = rs.getInt(1);
				String name =rs.getString(2);
				String address =rs.getString(3);
				String city =rs.getString(4);
				String province =rs.getString(5);
				String country =rs.getString(6);
				String mail =rs.getString(8);
				String passW =rs.getString(7);
				int fax = rs.getInt(9);
				int tel = rs.getInt(10);
				
				User u = new User(ID,name,address,city,province,country,mail,passW,fax,tel);
				
				user.add(u);
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();}
		
		return user;
	}
	public static boolean deleteUser(int id) {
		
		try {
			//connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete from user where UID = '"+id+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess =  true;
				
			}
			else {
				isSuccess = false;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
		
	}


}
