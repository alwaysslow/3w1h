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
	
	//实战中应用
	/*
	 * 思路：先查看ThreadLocal中是否保存SqlSession对象，如果存储了，获得直接使用
	 * 	如果没有存储，创建一个新的SqlSession对象，之后再绑定到ThreadLocal中
	 */
	public static SqlSession getCurrentSession(){
		SqlSession sqlSession = tl.get();
		if(sqlSession == null){
			sqlSession = openSession();
			tl.set(sqlSession);
		}
		return sqlSession;
	}
	
	//动态获得dao接口的实现类
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






