package com.itcast.chuli;

import java.util.List;


public interface AdminDAO {
//�������
	public int insertNew(Administrator admin);
	 //�޸Ĳ���
	public int updateNew(String newheadline,String author,String oldheadline) ;
	 //ɾ������
	public int deleteNew(String data);
	 //��id��ѯ����
	public List <Administrator> queryByName(String data) ;
	 //��ѯȫ������
	public List <Administrator> queryAll();
	 //ģ����ѯ����
	public List queryByLike(String cond) ;
}
