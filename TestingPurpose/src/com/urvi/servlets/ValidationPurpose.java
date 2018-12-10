package com.urvi.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.urvi.dao.UserDAO;


@WebServlet("/validate")
public class ValidationPurpose extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
   

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username,password;
		PrintWriter out=response.getWriter();
		username=request.getParameter("username");
		password=request.getParameter("password");
		RequestDispatcher requestdispatcher=null;
		String usertype;
		
		usertype=getUsertype(username,password);
		if(usertype.equals("Admin"))
		{
			requestdispatcher=request.getRequestDispatcher("/Admin");
			out.println("hello"+username);
		}
		else if(usertype.equals("User"))
		{
			requestdispatcher=request.getRequestDispatcher("/User");
		}
		else
		{
			requestdispatcher=request.getRequestDispatcher("/Invalid");
		}
	
		requestdispatcher.forward(request,response);
	}
	

	private String getUsertype(String username, String password) {
	 UserDAO userdao=new UserDAO();
		return userdao.getUsertyp(username,password);
	}

}
