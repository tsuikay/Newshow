package com.itcast.info.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itcast.chuli.AdminDAOImpl;
import com.itcast.chuli.Administrator;



/**
 * Servlet implementation class InsertNewServlet
 */
public class InsertNewServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//getParameter获得参数
				//String personId = request.getParameter("personid");
		    	String headline = request.getParameter("biaoti");
		    	String author = request.getParameter("zuozhe");
		    	String time =request.getParameter("time");
		    	String content = request.getParameter("content");
		    	
		    	Administrator admin=new Administrator();
		    	//person.setId(personId);
		    	admin.setHeadline(headline);
				admin.setAuthor(author);
		    	admin.setTime(time);
		    	admin.setData(content);
		    	
		    	AdminDAOImpl adi=new AdminDAOImpl();
		    	int flag = adi.insertNew(admin);
		    	
		    	System.out.println(flag);
		    	
		    	if(flag == 1){
		    		request.setAttribute("content", admin.getData());
		    		request.getRequestDispatcher("insertsuccess.jsp").forward(request,response);
		    	}else{
		    		request.getRequestDispatcher("insert_new.jsp").forward(request,response);
		    	}
			}
	
}
