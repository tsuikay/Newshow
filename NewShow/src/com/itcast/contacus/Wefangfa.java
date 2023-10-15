package com.itcast.contacus;

import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.dao.dbc.TestSQLserver;
import com.itcast.chuli.Administrator;

public class Wefangfa {
	public int contacUs(We we) {
		//sql���
		String sql = "insert into us(advice,lianxi) values(?,?)";
		//���������Ա��������ݿ�
		TestSQLserver dbc = null;
		//��sql��䴫�͸����ݿ�
		PreparedStatement pstmt = null;
		int flag = 0;
		try {
			dbc = new TestSQLserver();			
			pstmt = dbc.getConnection().prepareStatement(sql);
			//�˴���1,2��������sql���value������ʺ�
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
