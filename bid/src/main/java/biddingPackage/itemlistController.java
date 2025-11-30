package biddingPackage;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class itemlistController {

	//connect DB
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
	//insert data function
	
	public static boolean insertdata(String name,String category,String base_price,String description) {
		
		
		boolean isSuccess =false;
		try {
			//DB connection call
			con=DBconnection.getConnection();
			stmt=con.createStatement();
		
			//sql query
			String sql = "insert into seller values (0,'"+name+"','"+category+"','"+base_price+"','"+description+"')";
			int rs = stmt.executeUpdate(sql);
			if (rs>0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
				
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
		
	}
	
	
	
	
	//get by id function
	
	public static List<itemlistmodel> getById (String Id){
		
		int convertedID = Integer.parseInt(Id);
		ArrayList <itemlistmodel> item = new ArrayList<>();
		
		try {
			//DB connection
			con=DBconnection.getConnection();
			stmt=con.createStatement();
			
			//query
			
			String sql = "select* from seller where id ='"+convertedID+"'";
			
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String category = rs.getString(3);
				String base_price = rs.getString(4);
				String description = rs.getString(5);
				
				
				itemlistmodel il = new itemlistmodel(id,name,category,base_price,description);
				item.add(il);
				
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return item;
		
	
	}
	
	//get all data and display
	
	public static List<itemlistmodel> getAllItem(){
		
		ArrayList <itemlistmodel> items = new ArrayList<>();
	
		try {
			//DB connection
			con=DBconnection.getConnection();
			stmt=con.createStatement();
			
			//query
			
			String sql = "select* from seller";
			
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String category = rs.getString(3);
				String base_price = rs.getString(4);
				String description = rs.getString(5);
				
				
				itemlistmodel il = new itemlistmodel(id,name,category,base_price,description);
				items.add(il);
				
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return items;
	
	}
	//Update Data
	
	public static boolean updatedata(int id, String name,String category, String base_price,String description) {
		
		try {
			//DB connection
			con=DBconnection.getConnection();
			stmt=con.createStatement();
			
			//SQL Query
			String sql ="update seller set name='"+name+"',category='"+category+"',base_price='"+base_price+"',description='"+description+"' "
			+"where id='"+id+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if (rs>0) {
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
	
	
	
	
	//Delete data
	
	public static boolean deletedata(String id) {
		int convID = Integer.parseInt(id);
		try {
			
			//DB connection
			con=DBconnection.getConnection();
			stmt=con.createStatement();
			String sql = "delete from seller where id='"+convID+"'";
			
			int rs = stmt.executeUpdate(sql);
			if (rs>0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
				
			}
			
			
			
		}		catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
		
	}
	
	
}
