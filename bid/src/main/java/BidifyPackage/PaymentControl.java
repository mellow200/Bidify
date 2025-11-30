package BidifyPackage;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class PaymentControl {
	
	//connect DB
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	//Insert Data Function 
	public static boolean insertdata (String name,String card_number,String expiry_date,String cvv) {
		boolean isSuccess = false ;
		try {
			//DB Connection call
			con = PaymentDBConnection.getConnection();
			stmt= con.createStatement();
			
			//sql query
			String sql= "insert into payment values (0,'"+name+"','"+card_number+"','"+expiry_date+"','"+cvv+"')";
			int rs =  stmt.executeUpdate(sql);
			if (rs>0){
				isSuccess = true;
			}
			else{
				isSuccess = false;
			}
			
				
			}catch(Exception e) {
				e.printStackTrace();
		
		}
		return isSuccess;
		
	}
	public static List<PaymentModel> getById(String Id){
		int convertedID = Integer.parseInt(Id);
		ArrayList<PaymentModel> payment = new ArrayList<>();
		try {
			//DBConnection
			con = PaymentDBConnection.getConnection();
			stmt= con.createStatement();
			
			//Query
			String sql = "select * from payment where id '"+convertedID+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String card_number = rs.getString(3);
				String expiry_date = rs.getString(4);
				String cvv = rs.getString(5);
				
				
				PaymentModel pay = new PaymentModel(id,name,card_number,expiry_date,cvv);
				payment.add(pay); 
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return payment;
	}
	
	//Getall
	public static List<PaymentModel> getAllPayment(){
		ArrayList<PaymentModel> payments = new ArrayList<>();
		try {
			//DBConnection
			con = PaymentDBConnection.getConnection();
			stmt= con.createStatement();
			
			//Query
			String sql = "select * from payment";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String card_number = rs.getString(3);
				String expiry_date = rs.getString(4);
				String cvv = rs.getString(5);
				
				
				PaymentModel pay = new PaymentModel(id,name,card_number,expiry_date,cvv);
				payments.add(pay); 
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return payments;
	}
	
	//update data
	public static boolean updatedata(String id,String name,String card_number,String expiry_date,String cvv) {
		try {
			//dbconnection
			con = PaymentDBConnection.getConnection();
			stmt= con.createStatement();
			
			//SQL Query
			String sql ="update payment set  name='"+name+"',card_number='"+card_number+"',expiry_date = '"+expiry_date+"',cvv='"+cvv+"'"
					+"where id ='"+id+"'";
			
			int rs = stmt.executeUpdate(sql);
			if (rs>0){
				isSuccess = true;
			}
			else{
				isSuccess = false;
			}
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return isSuccess;
	}
	//delete data
	public static boolean deletedata(String id) {
		int convID = Integer.parseInt(id);
		try {
			//dbconnection
			con = PaymentDBConnection.getConnection();
			stmt= con.createStatement();
			
			String sql = "delete from payment where id ='"+convID+"'";
			
			int rs = stmt.executeUpdate(sql);
			if (rs>0){
				isSuccess = true;
			}
			else{
				isSuccess = false;
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return isSuccess;
	}
}

