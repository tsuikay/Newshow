package com.dao.dbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;



public class TestSQLserver {
	//连接mysql注册驱动程序字符串   
    String jdbc_driver = "com.mysql.jdbc.Driver";
    //建立与数据库连接的字符串
    String jdbc_url ="jdbc:mysql://127.0.0.1:3306/student";// :3306端口号可以省略。student是连接数据库的名字。

	 private String name = "root";
	 private String passWord = "123456";
	 private Connection conn=null;
	 public TestSQLserver(){
		 //加载驱动程序
        try {
			Class.forName(jdbc_driver);
			this.conn = DriverManager.getConnection(jdbc_url, name, passWord);

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}catch (SQLException e) {
			e.printStackTrace();
		}
        
       
	 }
	//得到连接
     public Connection getConnection(){
     	return this.conn;
     }
     
     //关闭数据库
     public void close(){
    	 try {
			this.conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
     }


public static void main(String [] args){
		TestSQLserver test=new TestSQLserver();
		Connection conn=null;
		conn=test.getConnection();
		if(conn==null){
			System.out.println("连接失败");
		}else{
			System.out.print("链接成功");
		}
    }


}