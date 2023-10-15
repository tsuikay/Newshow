package com.itcast.contacus;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class WeContacusServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			String advice=request.getParameter("advice");
			String contacus=request.getParameter("lianxi");
			
			We we=new We();
			we.setAdvice(advice);
			we.setLianxi(contacus);
			
			Wefangfa wefangfa=new Wefangfa();
			int flag=wefangfa.contacUs(we);
			if(flag==1){
				request.getRequestDispatcher("cantacusseccess.jsp").forward(request, response);
			}else{
				request.getRequestDispatcher("contacus.jsp").forward(request, response);
			}
		
	}

}
