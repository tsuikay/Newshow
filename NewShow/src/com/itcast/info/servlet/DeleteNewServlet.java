package com.itcast.info.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itcast.chuli.AdminDAOImpl;


/**
 * Servlet implementation class DeleteNewServlet
 */
public class DeleteNewServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			doPost(request, response);
		
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			String headline=request.getParameter("headline");
			AdminDAOImpl adminDAOImpl=new AdminDAOImpl();
			int flag=adminDAOImpl.deleteNew(headline);
			
			if(flag == 1){

	    		request.getRequestDispatcher("deletesuccess.jsp").forward(request,response);
	    	}else{
	    		request.getRequestDispatcher("insert_new.jsp").forward(request,response);
	    	}
		
	}

}
