package com.itcast.info.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itcast.chuli.AdminDAOImpl;
import com.itcast.chuli.Administrator;


/**
 * Servlet implementation class FindNewServlet
 */
public class FindNewServlet extends HttpServlet {
String author;

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		author=request.getParameter("author");
	    AdminDAOImpl adminDAOImpl=new AdminDAOImpl();

         List<Administrator> list;
	
			list = adminDAOImpl.queryByName(author);
			
			request.setAttribute("list", list);
			
			request.getRequestDispatcher("select_new.jsp").forward(request,response);      
		
		
	}

	

}
