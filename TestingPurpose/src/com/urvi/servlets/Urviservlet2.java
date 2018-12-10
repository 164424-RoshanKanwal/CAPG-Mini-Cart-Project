package com.urvi.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Urviservlet2")
public class Urviservlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
   protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
   {
	   String username=request.getParameter("username");
	   String password=request.getParameter("password");
	   
	   System.out.println(" username is"+username);

	   
}
}
