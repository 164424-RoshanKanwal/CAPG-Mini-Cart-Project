package com.roshan.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory2 {
	
	
	private static Connection connection;

	public static Connection getConnection(){
		try{
		Class.forName("oracle.jdbc.OracleDriver");
		connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system", "orcl11g");
		}
		catch(SQLException e){
			e.printStackTrace();
		}
		catch(ClassNotFoundException e){
			e.printStackTrace();
		}
		return connection;
	}
	
	public static void closeConnection(){
		try{
			connection.close();}
		catch(SQLException e){
			e.printStackTrace();
		}
	}
	
	public static void main(String[] args) throws ClassNotFoundException {
		System.out.println(ConnectionFactory2.getConnection());
	}
}
