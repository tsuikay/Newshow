package com.user.servive;

import com.dao.dbc.Person;
import com.dao.dbc.PersonDAO;
import com.dao.dbc.PersonDAOImpl;

public class LoginService {

	public boolean login(String username,String password){
		boolean flag = false;
		
		PersonDAO personDAOImpl = new PersonDAOImpl();
		Person person = personDAOImpl.queryByName(username);
		
		if(password.equals(person.getPassword())){
			flag = true;
			
		}
		return flag;
	}
}
