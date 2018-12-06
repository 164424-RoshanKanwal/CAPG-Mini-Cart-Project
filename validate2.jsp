<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "com.roshan.database.ConnectionFactory2" %>
    <%@ page import ="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
String userName = request.getParameter("userName");
String password = request.getParameter("password");
out.println(userName);
out.println(password);
boolean status = getUserStatus(userName, password);


RequestDispatcher reqD = null;
if(status == true){
	reqD = request.getRequestDispatcher("/main_page.jsp");
	reqD.forward(request, response);
}
else {
	out.println("Invalid UserId");
	response.sendRedirect("/html/login.html");
}
//out.print(status);
%>
<%!
public static boolean getUserStatus(String userName, String password){
	boolean status2 =false;
	//System.out.println("helloutfa");
	try {
		//System.out.println("hellouttry");
		Connection connection = ConnectionFactory2.getConnection();
		//System.out.println(connection);
		 PreparedStatement statement = connection.prepareStatement("select * from customer where name =? and password =?");
		statement.setString(1, userName);
		statement.setString(2, password);
		ResultSet set = statement.executeQuery();
		//System.out.println("hellout");
			if (set.next()) {System.out.println("hello");
				status2 = true;
				} 
			

	 } catch (SQLException e) {
		e.printStackTrace();
	} 

	return status2;
	
} %>



</body>
</html>