package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.dao.dbc.Person;
import com.dao.dbc.PersonDAOImpl;
/**
 * Servlet implementation class InsertServlet
 */
public class InsertServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//getParameter获得参数
		//String personId = request.getParameter("personid");
    	String personName = request.getParameter("personname");
    	String personPass = request.getParameter("personpass");
    	String personAge =request.getParameter("personage");
    	String personMail = request.getParameter("personmail");
    	Person person = new Person();
    	//person.setId(personId);
    	person.setName(personName);
    	person.setPassword(personPass);
    	person.setAge(personAge);
    	person.setEmail(personMail);
    	PersonDAOImpl pdi = new PersonDAOImpl();
    	int flag = pdi.insert(person);
    	System.out.println(flag);
    	if(flag == 1){
    		request.getRequestDispatcher("login.jsp").forward(request,response);
    	}else{
    		request.getRequestDispatcher("insert.jsp").forward(request,response);
    	}
	}
}
