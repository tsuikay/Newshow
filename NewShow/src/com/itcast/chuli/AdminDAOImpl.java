package com.itcast.chuli;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dao.dbc.Person;
import com.dao.dbc.TestSQLserver;


public class AdminDAOImpl implements AdminDAO{

	public int insertNew(Administrator admin) {
		//sql���
		String sql = "insert into new(time,headline,author,data) values(?,?,?,?)";
		//���������Ա��������ݿ�
		TestSQLserver dbc = null;
		//��sql��䴫�͸����ݿ�
		PreparedStatement pstmt = null;
		int flag = 0;
		try {
			dbc = new TestSQLserver();			
			pstmt = dbc.getConnection().prepareStatement(sql);
			//�˴���1234��������sql���value������ʺ�
			pstmt.setString(1, admin.getTime());
			pstmt.setString(2, admin.getHeadline());
			pstmt.setString(3, admin.getAuthor());
			pstmt.setString(4, admin.getData());
			//���ڶԵ�¼�ļ��
			flag = pstmt.executeUpdate();
			//pstmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		} 
		
		return flag;
	}

	public int updateNew(String newheadline,String author,String oldheadline) {
		String sqlString="update new set headline=? where author=? and headline=?";
		TestSQLserver dbc=null;
		PreparedStatement pstmt=null;
		int flag=0;
		try {
			dbc=new TestSQLserver();
			pstmt=dbc.getConnection().prepareStatement(sqlString);
			pstmt.setString(1, newheadline);
			pstmt.setString(2, author);
			pstmt.setString(3, oldheadline);
			flag=pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
	}

	public int deleteNew(String headline) {
				String sql = "delete from new where headline= ?";
				TestSQLserver dbc = null;
				PreparedStatement pstmt = null;
				int flag = 0;
				try {
					dbc = new TestSQLserver();			
					pstmt = dbc.getConnection().prepareStatement(sql);
					pstmt.setString(1, headline);
					flag = pstmt.executeUpdate();
					//pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				} 
				
				return flag;
		
	}

	public List<Administrator> queryByName(String author) {
		String sql = "select * from new where author = ?";
		TestSQLserver dbc = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		List<Administrator> list=new ArrayList<Administrator>();
		
		try {
			dbc = new TestSQLserver();
			

			pstmt = dbc.getConnection().prepareStatement(sql);
			pstmt.setString(1, author);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				Administrator administrator=new Administrator();
				administrator.setTime(rs.getString(1));
				administrator.setHeadline(rs.getString(2));
				administrator.setAuthor(rs.getString(3));
				administrator.setData(rs.getString(4));
				list.add(administrator);
			}
				
		} catch (SQLException e) {
			e.printStackTrace();
		} 
		return list;
	}

	public List<Administrator> queryAll() {
		ArrayList<Administrator> list = new ArrayList<Administrator>();
		TestSQLserver dbc=null;
		String sql="select * from new";//����������ݡ�;
		PreparedStatement pstmt=null;
		//������ݿ�ľ������
		try{
			dbc=new TestSQLserver();
			pstmt=dbc. getConnection(). prepareStatement(sql);
			//�������ݿ��ѯ����
			ResultSet rs=pstmt.executeQuery();
			while(rs.next()){
				Administrator administrator=new Administrator();
				administrator.setTime(rs.getString(1));
				administrator.setHeadline(rs.getString(2));
				administrator.setAuthor(rs.getString(3));
				administrator.setData(rs.getString(4));
				//����list����
				list.add(administrator);
			}
			pstmt.close();
		}catch (SQLException e) {
			e.printStackTrace();
		} 
		return  list;
	}

	public List queryByLike(String cond) {
		// TODO Auto-generated method stub
		return null;
	}

}
