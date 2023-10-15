package com.dao.dbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class PersonDAOImpl implements PersonDAO {
	
	public int insert(Person person) {
		// TODO Auto-generated method stub
		String sql = "insert into person(name,password,age,email) values(?,?,?,?)";
		TestSQLserver dbc = null;
		PreparedStatement pstmt = null;
		int flag = 0;
		try {
			dbc = new TestSQLserver();			
			pstmt = dbc.getConnection().prepareStatement(sql);
			//pstmt.setInt(1, person.getId());
			pstmt.setString(1, person.getName());
			pstmt.setString(2, person.getPassword());
			pstmt.setString(3, person.getAge());
			pstmt.setString(4, person.getEmail());
			
			flag = pstmt.executeUpdate();
			//pstmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		} 
		
		return flag;
	}

	public void update(Person person) {
		// TODO Auto-generated method stub
		
	}

	public void delete(String id) {
		// TODO Auto-generated method stub
		
	}
	
	public Person queryByName(String username) {

		String sql = "select * from person where name = ?";
		TestSQLserver dbc = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Person person = new Person();
		
		try {
			dbc = new TestSQLserver();
			

			pstmt = dbc.getConnection().prepareStatement(sql);
			pstmt.setString(1, username);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				person.setId(rs.getInt(1));
				person.setName(rs.getString(2));
				person.setPassword(rs.getString(3));
				person.setAge(rs.getString(4));
				person.setEmail(rs.getString(5));
			}
				
		} catch (SQLException e) {
			e.printStackTrace();
		} 
		return person;
	}

}
