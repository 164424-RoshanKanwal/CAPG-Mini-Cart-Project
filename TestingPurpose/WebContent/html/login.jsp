<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Login Page</title>
<%@ include file="formeed.html" %>
<% String requesting=(String)request.getAttribute("requesting"); 
if(requesting!= null)
{
	out.print(requesting);
}
String login=(String)request.getAttribute("login");
if(login!= null)
{
	out.print(login);
}


%>
<br/>
<form action="loginprocess.jsp" method="post">
Email:<input type="text" name="email" ><br>
Password:<input type="password" name="password"> <br>
<input type="submit" value="login">
</form>
</head>
<body>

</body>
</html>