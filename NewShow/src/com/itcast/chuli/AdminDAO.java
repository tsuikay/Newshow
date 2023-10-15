package com.itcast.chuli;

import java.util.List;


public interface AdminDAO {
//添加新闻
	public int insertNew(Administrator admin);
	 //修改操作
	public int updateNew(String newheadline,String author,String oldheadline) ;
	 //删除操作
	public int deleteNew(String data);
	 //按id查询操作
	public List <Administrator> queryByName(String data) ;
	 //查询全部操作
	public List <Administrator> queryAll();
	 //模糊查询操作
	public List queryByLike(String cond) ;
}
