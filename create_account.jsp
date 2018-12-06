<%@page import="com.roshan.database.ConnectionFactory2"%>
<%@ page import ="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
String name =request.getParameter("name");
String email =request.getParameter("email");
String mobileNo =request.getParameter("mobile");//number in html and varchar in sql
String address =request.getParameter("address");
String password =request.getParameter("password");
out.println(name);
out.println(email);
out.println(mobileNo);
out.println(password);
out.println(address);

boolean status = addToDatabase(name, email, mobileNo, address, password);
%>


<%!
public static boolean addToDatabase(String name, String email, String mobileNo, String address, String password){
	try{
	Connection conn = ConnectionFactory2.getConnection();
	PreparedStatement statement = conn.prepareStatement("insert into customer values (cid_sequence.nextval, ?,?,?,?,?)");
	statement.setString(1, name);
	statement.setString(2, email);
	statement.setString(3, mobileNo);
	statement.setString(4, address);
	statement.setString(5, password);
	
	statement.executeUpdate();
	
	}catch(SQLException e){
		e.printStackTrace();
	}
	
	
	
	
	return true;
}



%>


</body>
</html>