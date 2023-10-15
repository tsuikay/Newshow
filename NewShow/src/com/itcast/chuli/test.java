package com.itcast.chuli;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import com.dao.dbc.Person;
import com.dao.dbc.PersonDAOImpl;

public class test {
	public static void main(String[]args){
//		PersonDAOImpl personDAOImpl=new PersonDAOImpl();
//		List list = new ArrayList();
//		list=personDAOImpl.queryAll();
//		Iterator itr=list.iterator();
//		while (itr.hasNext()) {
//			Person person=(Person) itr.next();
//			System.out.println("id "+person.getId()+"\t"+"name "+person.getName()+"\t"+
//			"age "+person.getAge()+"\t"+"password "+person.getPassword()+"\t\n+");
//
//		}
		
//		Administrator administrator=new Administrator();
//		administrator.setAuthor("lisi");
//		administrator.setData("q w e 我人 人他谷歌 的淡入个的的");
//		administrator.setHeadline("你好");
//		administrator.setTime("2014-15-8 50 5050");
//		AdminDAOImpl adminDAOImpl=new AdminDAOImpl();
//		
//		
//		int flag = adminDAOImpl.insertNew(administrator);
//		System.out.println(flag);
//		}
		
//		AdminDAOImpl adminDAOImpl=new AdminDAOImpl();
//		List list =new ArrayList();
//		list=adminDAOImpl.queryByName("h1");
//		Iterator itr=list.iterator();
//		while (itr.hasNext()) {
//			Administrator administrator=(Administrator) itr.next();
//			System.out.println("data: "+administrator.getData()+"\t"+"zuthor: "+administrator.getAuthor()+"\t"+
//			"headline "+administrator.getHeadline()+"\t"+"time: "+administrator.getTime()+"\t\n");
//
//		}
//		AdminDAOImpl adminDAOImpl=new AdminDAOImpl();
//		List list =new ArrayList();
//		list=adminDAOImpl.queryAll();
//		Iterator itr=list.iterator();
//		while (itr.hasNext()) {
//			Administrator administrator=(Administrator) itr.next();
//			System.out.println("data: "+administrator.getData()+"\t"+"zuthor: "+administrator.getAuthor()+"\t"+
//			"headline "+administrator.getHeadline()+"\t"+"time: "+administrator.getTime()+"\t\n");
//
//		}
//		AdminDAOImpl adminDAOImpl =new AdminDAOImpl();
//		int flg=adminDAOImpl.deleteNew("h3");
//		System.out.println(flg);
		
		AdminDAOImpl adminDAOImpl=new AdminDAOImpl();
		int b=adminDAOImpl.updateNew("xiao", "L", "sun");
		System.out.println(b);
	}
}
