package com.baizhi.service;

import java.util.List;

import com.baizhi.dao.BookDao;
import com.baizhi.entity.Book;
import com.baizhi.utils.MyBatisUtil;

public class BookServiceImpl implements BookService {

	@Override
	public List<Book> selectByEditor() {
		BookDao bd=(BookDao) MyBatisUtil.getMapper(BookDao.class);
		
		return bd.selectByEditor();
	}

	@Override
	public List<Book> selectByHotSell() {
		// TODO Auto-generated method stub
		BookDao bd=(BookDao) MyBatisUtil.getMapper(BookDao.class);
		return bd.selectByHotSell();
	}

	@Override
	public List<Book> selectByNewTime() {
		// TODO Auto-generated method stub
		BookDao bd=(BookDao) MyBatisUtil.getMapper(BookDao.class);
		return bd.selectByNewTime();
	}

	@Override
	public List<Book> selectByHotNew() {
		// TODO Auto-generated method stub
		BookDao bd=(BookDao) MyBatisUtil.getMapper(BookDao.class);
		return bd.selectByHotNew();
	}

	@Override
	public Book selectOne(Integer id) {
		// TODO Auto-generated method stub
		BookDao bd=(BookDao) MyBatisUtil.getMapper(BookDao.class);
		return bd.selectOne(id);
	}

}
