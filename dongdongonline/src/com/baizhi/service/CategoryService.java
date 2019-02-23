package com.baizhi.service;

import java.util.List;

import com.baizhi.entity.Book;
import com.baizhi.entity.Category;

public interface CategoryService {
	public List<Category> selectAll();
	public List<Book> selectFirstBook(Integer pageindex,Integer pagesize,Integer category_id );
	public List<Book> selectSecondBook(Integer pageindex,Integer pagesize,Integer category_id );
	public Category selectFirstCategory(Integer id);
	public Category selectSecondCategory(Integer id);
	public Integer selectFirstCount(Integer id);
	public Integer selectSecondCount(Integer id);
	public Integer SelectFatherId(Integer id);
	public String selectcategory_name(Integer id);
}
