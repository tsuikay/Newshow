package com.itcast.info.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itcast.chuli.AdminDAOImpl;



/**
 * Servlet implementation class UpdateNewServlet
 */
public class UpdateNewServlet extends HttpServlet {
	String author;
	String oldheadline;
	String newheadline;
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			author=request.getParameter("author");
			oldheadline=request.getParameter("oldheadline");
			newheadline=request.getParameter("newheadline");
			AdminDAOImpl adminDAOImpl=new AdminDAOImpl();
			int flag=adminDAOImpl.updateNew(newheadline, author, oldheadline);
			if(flag==1){
				request.getRequestDispatcher("updatesuccess.jsp").forward(request,response);
			}else{
				request.getRequestDispatcher("insert_new.jsp").forward(request, response);
			}
		
	}

}
