package com.dao.dbc;

import java.util.List;


public interface PersonDAO {

	//Ôö¼Ó²Ù×÷
	public int insert(Person person);
	public Person queryByName(String username);
}
