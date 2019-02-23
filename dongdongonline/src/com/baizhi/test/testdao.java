package com.baizhi.test;

import java.util.List;

import org.junit.Test;

import com.baizhi.dao.BookDao;
import com.baizhi.dao.CategoryDao;
import com.baizhi.dao.UserDao;
import com.baizhi.entity.Book;
import com.baizhi.entity.Category;
import com.baizhi.entity.User;
import com.baizhi.service.CategoryService;
import com.baizhi.service.CategoryServiceImpl;
import com.baizhi.utils.MyBatisUtil;

public class testdao {
	@Test
	public void test1(){
		BookDao bd=(BookDao) MyBatisUtil.getMapper(BookDao.class);
		List<Book> list=bd.selectByEditor();
		System.out.println(list);
	}
	@Test
	public void test2(){
		CategoryDao cd =(CategoryDao) MyBatisUtil.getMapper(CategoryDao.class);
		List<Category> list=cd.selectAll();
		System.out.println(list);
	}
	@Test
	public void test3(){
		UserDao ud =(UserDao) MyBatisUtil.getMapper(UserDao.class);	
		User u=new User();
		u.setUser_email("ayixitailu@163.com");
		u.setUser_password("123456");
		User list =ud.selectOne(u);
		System.out.println(list);
	}
	@Test
	public void test5(){
		CategoryService cs=new CategoryServiceImpl();
		 Category category =cs.selectFirstCategory(177);
		List<Book> books=cs.selectFirstBook( 1, 3,177);
		System.out.println(category);
		System.out.println(books);
		
			
	}
}
