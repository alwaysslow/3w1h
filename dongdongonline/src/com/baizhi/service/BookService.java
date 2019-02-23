package com.baizhi.service;

import java.util.List;

import com.baizhi.entity.Book;

public interface BookService {
	public List<Book> selectByEditor();
	public List<Book> selectByHotSell();
	public List<Book> selectByNewTime();
	public List<Book> selectByHotNew();
	public Book selectOne(Integer id);
}
