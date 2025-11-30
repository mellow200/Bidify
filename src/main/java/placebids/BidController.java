package placebids;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class BidController {
	
	//Connect Database
	private static boolean isSuccess ;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static boolean insertData(String bidamount, String bidName)
	{
		
		 boolean isSuccess = false;
		try {
			//Database connection call
			con=DBConnectionBid.getConnection();
			stmt=con.createStatement();
			
			//SQL query
			String sql = "insert into placebid values(0,'"+bidamount+"','"+bidName+"')";
			int rs = stmt.executeUpdate(sql);
			if(rs>0) {
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
	
	//GetByID
	public static List<BidModel> getById (String Id){
		
		int convertedID = Integer.parseInt(Id);
		
		ArrayList <BidModel> bid = new ArrayList<>();
		
		try {
			//Database connection call
			con=DBConnectionBid.getConnection();
			stmt=con.createStatement();
			
			//SQL Query
			String sql = "select * from placebid where id '"+convertedID+"'";
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String bidamount = rs.getString(2);
				String bidName = rs.getString(3);
				
				BidModel bm = new BidModel(id,bidamount,bidName);
				bid.add(bm);
				
				}
			}
		catch(Exception e) {
			e.printStackTrace();
		}
		return bid;
	}
		
	//GetAll Data
	public static List<BidModel> getAllBid(){
		
		ArrayList <BidModel> bids = new ArrayList<>();
		
		try {
			//Database connection call
			con=DBConnectionBid.getConnection();
			stmt=con.createStatement();
			
			//SQL Query
			String sql = "select * from placebid ";
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String bidamount = rs.getString(2);
				String bidName = rs.getString(3);
				
				BidModel bm = new BidModel(id,bidamount,bidName);
				bids.add(bm);
				
				}
			}
		catch(Exception e) {
			e.printStackTrace();
		}
		return bids;
		
	}
	
	//Update Data
	public static boolean updatedata(String bid,String bidamount,String bidName)
	{
		int bidd = Integer.parseInt(bid);
		try {
			//Database connection
			con=DBConnectionBid.getConnection();
			stmt=con.createStatement();
			
			//SQL Queries
			String sql = "update placebid set bidamount='"+bidamount+"',bidName='"+bidName+"' where bid='"+bidd+"'";
					
			
			int rs = stmt.executeUpdate(sql);
			if(rs>0) {
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
	
	//Delete Data
	public static boolean deletedata(String id) 
	{
		int convID = Integer.parseInt(id);
		
		try {
			//Database Connection
			con=DBConnectionBid.getConnection();
			stmt=con.createStatement();
			
			String sql = "delete from placebid where bid='"+convID+"'";
			int rs = stmt.executeUpdate(sql);
			if(rs>0) {
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
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
		
	


