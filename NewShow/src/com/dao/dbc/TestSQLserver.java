package com.dao.dbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;



public class TestSQLserver {
	//����mysqlע�����������ַ���   
    String jdbc_driver = "com.mysql.jdbc.Driver";
    //���������ݿ����ӵ��ַ���
    String jdbc_url ="jdbc:mysql://127.0.0.1:3306/student";// :3306�˿ںſ���ʡ�ԡ�student���������ݿ�����֡�

	 private String name = "root";
	 private String passWord = "123456";
	 private Connection conn=null;
	 public TestSQLserver(){
		 //������������
        try {
			Class.forName(jdbc_driver);
			this.conn = DriverManager.getConnection(jdbc_url, name, passWord);

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}catch (SQLException e) {
			e.printStackTrace();
		}
        
       
	 }
	//�õ�����
     public Connection getConnection(){
     	return this.conn;
     }
     
     //�ر����ݿ�
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
			System.out.println("����ʧ��");
		}else{
			System.out.print("���ӳɹ�");
		}
    }


}