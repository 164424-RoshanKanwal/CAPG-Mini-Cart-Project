<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "com.cg.shopcart.dao.*" %>
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
boolean status = Database.canloginUser(userName, password);


RequestDispatcher reqD = null;
if(status == true){
	reqD = request.getRequestDispatcher("/main_page.jsp");
	reqD.forward(request, response);
}
else {%>
Invalid User
<% 
	response.sendRedirect("/ShoppingCartVersion2/jsp/signin.jsp");
}
out.print(status);
%>




</body>
</html>