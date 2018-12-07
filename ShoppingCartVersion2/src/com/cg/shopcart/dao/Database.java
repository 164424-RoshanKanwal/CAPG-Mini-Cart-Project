package com.cg.shopcart.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Database {

	static Connection connection = ConnectionFactory.getConnection();
	
	public static boolean insertNewUser(String name, String email, String mobileNo, String address, String password ){
		
		boolean status2=false;
		try{
		PreparedStatement statement = connection.prepareStatement("insert into customer values (cid_sequence.nextval, ?,?,?,?,?)");
		statement.setString(1, name);
		statement.setString(2, email);
		statement.setString(3, mobileNo);
		statement.setString(4, address);
		statement.setString(5, password);
		
		statement.executeUpdate();
		System.out.println("done");
		status2=true;
		
		}catch(SQLException e){
			e.printStackTrace();
		}
		return status2;
	}
	
	public static boolean canloginUser(String userName, String password){
		boolean status2 = false;
		try {
	
		 PreparedStatement statement = connection.prepareStatement("select * from customer where name =? and password =?");
			statement.setString(1, userName);
			statement.setString(2, password);
			ResultSet set = statement.executeQuery();
			
				if (set.next()) {
						
					status2 = true;
					} 
				

		 } catch (SQLException e) {
			e.printStackTrace();
		} 

		return status2;
		
	}
	
	public static boolean forgotPassword(String email, String mobileNo, String password){
		boolean status = false;
		try {
			 PreparedStatement statement = connection.prepareStatement("Update customer set password = ? where email =? and phoneNumber =?");
				statement.setString(1, password);
				statement.setString(2, email);
				statement.setString(3, mobileNo);
				statement.executeUpdate();
				status = true;
				System.out.println(status);
				
			 } catch (SQLException e) {
				e.printStackTrace();
			} 
		
		return status;
	}
}
