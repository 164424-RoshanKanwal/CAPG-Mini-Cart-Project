<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>

<style> 
#button
{
align:center;
}


table, th, td {
  border: 1px solid black;
}
body {
      animation: colorchange 30s;
      -webkit-animation: colorchange 30s; 
      animation-iteration-count: infinite;
     
    }

    @keyframes colorchange
    {
      0%   {background: turquoise;}
      25%  {background:  emerald;}
      50%  {background: light-blue;}
      75%  {background: pink;}
      100% {background: sea green;}
    }

/*@keyframes mymove
{
      0%   {background: turquoise;}
      25%  {background: emerald;}
      50%  {background: silver;}
      75%  {background: pink;}
      100% {background: sea green;}



}*/


 
</style>
</head>
<body>
<%@ include file = "header1.jsp" %>

<table ALIGN=CENTER width=500px height=300px>

  <tr>
    <th>Select</th>
    <th>Product name</th>
    <th>Price</th>
  
  </tr>
  <tr>
    <td width=50px HEIGHT=30PX ALIGN=CENTER><input type="checkbox"></td>
    <td WIDTH=50px ALIGN=CENTER >Mobile Phone</td>
    <td  WIDTH=50px ALIGN=CENTER>15000</td>
   
  </tr>
  <tr>
    <td width 50px height=30px ALIGN=CENTER><input type="checkbox"></td>
    <td WIDTH=50px ALIGN=CENTER>Bottle</td>
    <td WIDTH=50px ALIGN=CENTER>50</td>
    
  </tr>
  <tr>
    <td width 50px height=30px ALIGN=CENTER><input type="checkbox"></td>
    <td  WIDTH=50px ALIGN=CENTER> Pen</td>
    <td WIDTH=50px ALIGN=CENTER>15</td>
 
  </tr>
  
</table>
<input type="button" id="button" color="red" value="Add to cart" align="center">
<%@ include file = "Footer.jsp" %>
</body>
</html>
