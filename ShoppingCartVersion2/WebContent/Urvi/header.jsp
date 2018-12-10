<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}
.container{
background-color:black;

}
.type
{
float:right;
margin:35px;
font-family:"Palatino Linotype", "Book Antiqua", Palatino, serif;
font-color:"blue";
font-size:25px;

}


.topnav {
  overflow: hidden;
  background-color: #333;
}

.topnav a {
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
  width:15%;
}
.about
{
padding-right : 33px;
text-decoration: none;
background-color:black;
color : white;
width : 33px;
font-size:25px;
text-align:center;
}
#abouts
{


}


.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.active {
  background-color: #4CAF50;
  color: white;
}

.topnav .icon {
  display: none;
}

@media screen and (max-width: 600px) {
  .topnav a:not(:first-child) {display: none;}
  .topnav a.icon {
    float: right;
    display: block;
  }
}

@media screen and (max-width: 600px) {
  .topnav.responsive {position: relative;}
  .topnav.responsive .icon {
    position: absolute;
    right: 0;
    top: 0;
  }
  .topnav.responsive a {
    float: none;
    display: block;
    text-align: left;
  }
}
</style>
</head>
<body>


 <div class="container">
<!--<div class="name">
<img src="shopping.jpg" >
<span style="color: blue" class="type">The Best Shopping Experience</span>
</div>
<div class="topnav" id="myTopnav">
  
  <a href="#Login">Login</a>
  <a href="#Registration">Registration</a>
  <div class="about">
   <a href="#about" >About</a></div>
  <a href="#"><img src="cart.jpg" height="40" width="40"></a>
  <a href="javascript:void(0);" class="icon" onclick="myFunction()">
 
    <i class="fa fa-bars"></i>
  </a>-->


<nav >

<a href = "header1.jsp"><img src = "shopping.jpg" alt="My website logo" /></a>
<a href="#Login" class = "about" style="padding-left:600px">Login</a>
<a href="#Registration" class = "about">Registration</a>
<a href="#about" class ="about">About</a>
<span id="abouts"><a href="#addtocart"><img src="cart.jpg" height="35" width="35"></a></span>


</nav>

</div> 

<script>
function myFunction() {
    var x = document.getElementById("myTopnav");
    if (x.className === "topnav") {
        x.className += " responsive";
    } else {
        x.className = "topnav";
    }
}
</script>
</body>
</html>