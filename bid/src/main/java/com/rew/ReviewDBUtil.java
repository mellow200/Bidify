package com.rew;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.user.DBConnect;

public class ReviewDBUtil {
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs =null;
	
	//insert review
	public static boolean insertReview(int id, int rating, String text) {
		
		isSuccess = false;
		try {
			
			//create connection
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "Insert into review values (0,'"+id+"','"+rating+"','"+text+"')";	
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
	public static List<Review>Display(int uid){
		
		ArrayList<Review>rew = new ArrayList<>();
		
		try {
			
			//connection
			con =DBConnect.getConnection();
		    stmt= con.createStatement();
			String sql="select * from review_with_user where UID ='"+uid+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int rid = rs.getInt(1);
				int rating = rs.getInt(2);
				String text = rs.getString(3);
				String uname = rs.getString(4);
				
				
				
				Review r = new Review(rid,uid,uname,rating,text);
				rew.add(r);
			}
			
			
		}catch(Exception e){
			e.printStackTrace();
			
		}	
		
		return rew;
	}
	// In ReviewDBUtil.java
	public static List<Review> getReviews() {
	    List<Review> reviews = new ArrayList<>();
	    
	    try {
	        con = DBConnect.getConnection();
	        stmt = con.createStatement();
	        String sql = "select * from review_with_user";
	        rs = stmt.executeQuery(sql);
	        
	        while(rs.next()) {
	            int reviewID = rs.getInt(1);
	            int UID = rs.getInt(5);
	            String name = rs.getString(4);
	            int rating = rs.getInt(2);
	            String reviewText = rs.getString(3);
	            
	            Review r = new Review(reviewID, UID, name, rating, reviewText);
	            reviews.add(r);
	        }
	        
	    } catch(Exception e) {
	        e.printStackTrace();
	  
	    }
	    
	    return reviews;
	}
	
	public static boolean updateReview(int id,int rating,String rev){
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "update review set StarRating ='"+rating+"',review ='"+rev+"'where ReviewID = '"+id+"'";
			int rs = stmt.executeUpdate(sql);
		
			if(rs > 0) {
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
	public static boolean deleteReview(int rid){
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete from review where ReviewID = '"+rid+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}catch(Exception e){
			
		}
		return isSuccess;
		
	} 

}
