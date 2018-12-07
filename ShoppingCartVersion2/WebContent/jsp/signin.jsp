<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Here.</title>
<link rel="stylesheet" type="text/css" href = "/ShoppingCartVersion2/css/signIn.css">
</head>
<body>

<form action="/ShoppingCart/jsp/validate2.jsp">
<div class=container ><br/>
 <label for="usernameId"><b>Email/Phone Number</b></label><br/>

  <p style ="align : center"> <input type="text" placeholder="Enter Email/Phone Number" name="userName" id = "usernameId" required><br/><br/>
     <label for="passwordId"><b>Password</b></label><br/><br/>
      <input type="password" placeholder="Enter Password" name="password" id = "passwordId" required><br/>
   </p>      
      <input id="one" type="submit" value = "Login" style= "background-color :MediumSeaGreen; height : 30px"><br/>
      <br/>
     <a href="signup.html" >New User?</a>
  </div>

</form>


</body>
</html>