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
 * Servlet implementation class FindNewAllServlet
 */
public class FindNewAllServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
	    AdminDAOImpl adminDAOImpl=new AdminDAOImpl();
	
          List<Administrator> list = adminDAOImpl.queryAll();
			
			request.setAttribute("list", list);
			request.getRequestDispatcher("delete_new.jsp").forward(request,response);      
			
	}

	

}
