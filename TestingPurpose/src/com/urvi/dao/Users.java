package com.urvi.dao;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Users")
public class Users extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username,password;
		username=request.getParameter("Username");
		password=request.getParameter("Password");
		PrintWriter out=response.getWriter();
		out.println("Welcome "+username+"!!!  "+"have a good day");
		HttpSession session=request.getSession();
		ServletContext servercontext=request.getServletContext();
	if(username!="" && username!=null){
		session.setAttribute("setvalues",username);
		servercontext.setAttribute("context",username);
		}
	
		out.println("session value"+(String)session.getAttribute("setvalues"));
		out.println("context value"+(String)session.getAttribute("context"));
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username,password;
		username=request.getParameter("Username");
		password=request.getParameter("Password");
		PrintWriter out=response.getWriter();
		out.println("Welcome "+username+"!!!  "+"have a good day");
		HttpSession session=request.getSession();
		
		session.setAttribute("setvalues",username);
		out.println("session value"+(String)session.getAttribute("setvalues"));
	}

}