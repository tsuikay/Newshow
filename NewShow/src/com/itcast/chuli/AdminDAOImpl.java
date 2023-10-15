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
		//sql语句
		String sql = "insert into new(time,headline,author,data) values(?,?,?,?)";
		//创建对象，以备链接数据库
		TestSQLserver dbc = null;
		//将sql语句传送给数据库
		PreparedStatement pstmt = null;
		int flag = 0;
		try {
			dbc = new TestSQLserver();			
			pstmt = dbc.getConnection().prepareStatement(sql);
			//此处的1234代表上面sql语句value里面的问号
			pstmt.setString(1, admin.getTime());
			pstmt.setString(2, admin.getHeadline());
			pstmt.setString(3, admin.getAuthor());
			pstmt.setString(4, admin.getData());
			//用于对登录的检测
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
		String sql="select * from new";//将查出的数据”;
		PreparedStatement pstmt=null;
		//针对数据库的具体操作
		try{
			dbc=new TestSQLserver();
			pstmt=dbc. getConnection(). prepareStatement(sql);
			//进行数据库查询操作
			ResultSet rs=pstmt.executeQuery();
			while(rs.next()){
				Administrator administrator=new Administrator();
				administrator.setTime(rs.getString(1));
				administrator.setHeadline(rs.getString(2));
				administrator.setAuthor(rs.getString(3));
				administrator.setData(rs.getString(4));
				//存入list对象
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
