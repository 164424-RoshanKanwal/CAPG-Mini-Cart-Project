<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="Footer.jsp"%>
<%-- <%@ include file="header.jsp"%> --%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Here.</title>
<link rel="stylesheet" type="text/css"
	href="/ShoppingCartVersion2/css/signIn.css">
</head>
<body>

	<form action="validate2.jsp">
		<div class=container>
			<br><br> <label for="usernameId">Email</label><br> <input
				type="text" placeholder="Enter Email" name="email" required><br>
			<br> <label for="passwordId">Password</label><br>
			<br> <input type="password" placeholder="Enter Password"
				name="password" required><br><br><br> 
				
				<input id="submit"
				type="submit" value="Login"><br /> <br /> 
				<a id="right"	href="register.jsp">New User?</a> 
				<a id="left"	href="forgotPassword.jsp">Forgot Password?</a>
		</div>

	</form>


</body>
</html>