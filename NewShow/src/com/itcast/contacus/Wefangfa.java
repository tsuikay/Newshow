package com.itcast.contacus;

import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.dao.dbc.TestSQLserver;
import com.itcast.chuli.Administrator;

public class Wefangfa {
	public int contacUs(We we) {
		//sql语句
		String sql = "insert into us(advice,lianxi) values(?,?)";
		//创建对象，以备链接数据库
		TestSQLserver dbc = null;
		//将sql语句传送给数据库
		PreparedStatement pstmt = null;
		int flag = 0;
		try {
			dbc = new TestSQLserver();			
			pstmt = dbc.getConnection().prepareStatement(sql);
			//此处的1,2代表上面sql语句value里面的问号
			pstmt.setString(1, we.getAdvice());
			pstmt.setString(2, we.getLianxi());
			flag = pstmt.executeUpdate();
			//pstmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		} 
		
		return flag;
	}

}
