<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<style> 
body {
      animation: colorchange 50s;
      -webkit-animation: colorchange 50s; 
    }

    @keyframes colorchange
    {
      0%   {background: red;}
      25%  {background: yellow;}
      50%  {background: blue;}
      75%  {background: green;}
      100% {background: red;}
    }

    @-webkit-keyframes colorchange 
    {
      0%   {background: red;}
      25%  {background: yellow;}
      50%  {background: blue;}
      75%  {background: green;}
      100% {background: red;}
    }
</style>
</head>
<body>
</body>
</html>
