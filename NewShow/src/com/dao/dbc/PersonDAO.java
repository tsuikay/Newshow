package com.dao.dbc;

import java.util.List;


public interface PersonDAO {

	//���Ӳ���
	public int insert(Person person);
	public Person queryByName(String username);
}
