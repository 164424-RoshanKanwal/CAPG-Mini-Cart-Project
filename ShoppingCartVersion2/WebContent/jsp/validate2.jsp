<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.cg.shopcart.dao.*"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
	
		String userName = request.getParameter("email");
		String password = request.getParameter("password");
		
		boolean status = Database.canloginUser(userName, password);

		RequestDispatcher reqD = null;
		if (status == true) {
			reqD = request.getRequestDispatcher("/jsp/main_page.jsp");
			reqD.forward(request, response);
		} else {
	%>
	Invalid User
	<%
		response.sendRedirect("/ShoppingCartVersion2/jsp/signin.jsp");
		}
		out.print(status);
	%>
</body>
</html>