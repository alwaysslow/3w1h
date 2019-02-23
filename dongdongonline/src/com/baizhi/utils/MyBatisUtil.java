package com.baizhi.utils;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MyBatisUtil {
	static SqlSessionFactory factory ;
	static ThreadLocal<SqlSession> tl= new ThreadLocal<>();
	static{
		try {
			InputStream is = Resources.getResourceAsStream("mybatis-config.xml");
			 factory = new SqlSessionFactoryBuilder().build(is);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static SqlSession openSession(){
		return factory.openSession();
	}
	
	//ʵս��Ӧ��
	/*
	 * ˼·���Ȳ鿴ThreadLocal���Ƿ񱣴�SqlSession��������洢�ˣ����ֱ��ʹ��
	 * 	���û�д洢������һ���µ�SqlSession����֮���ٰ󶨵�ThreadLocal��
	 */
	public static SqlSession getCurrentSession(){
		SqlSession sqlSession = tl.get();
		if(sqlSession == null){
			sqlSession = openSession();
			tl.set(sqlSession);
		}
		return sqlSession;
	}
	
	//��̬���dao�ӿڵ�ʵ����
	public static Object getMapper(Class clazz){
		return getCurrentSession().getMapper(clazz);
	}
	
	public static void commit(){
		getCurrentSession().commit();
		close();
	}
	public static void rollback(){
		getCurrentSession().rollback();
		close();
	}
	
	public static void close(){
		SqlSession sqlSession = getCurrentSession();
		sqlSession.close();
		tl.remove();
	}
}






