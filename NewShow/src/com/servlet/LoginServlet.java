package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.user.servive.LoginService;



/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//将jsp页面上所输入的值通过request传到后台
    	String loginuser = request.getParameter("loginname");
    	String loginpass = request.getParameter("loginpassword");
    	//检查登录
    	LoginService ls = new LoginService();
    	if(ls.login(loginuser,loginpass)){
    		request.setAttribute("loginuser", loginuser);
    		//request.setAttribute("loginpass", loginpass);
    		request.getRequestDispatcher("welcomelogin.jsp").forward(request,response);
    	}else{
    		request.getRequestDispatcher("login.jsp").forward(request,response);
    	}
	}
}
