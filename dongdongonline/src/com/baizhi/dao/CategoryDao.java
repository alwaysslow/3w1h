package com.baizhi.dao;

import java.util.List;



import com.baizhi.entity.Book;
import com.baizhi.entity.Category;

public interface CategoryDao {
	public List<Category> selectAll();
	public List<Book> selectFirstBook(Integer start,Integer end,Integer category_id );
	public List<Book> selectSecondBook(Integer start,Integer end,Integer category_id );
	public Category selectFirstCategory(Integer id);
	public Category selectSecondCategory(Integer id);
	public Integer selectFirstCount(Integer id);
	public Integer selectSecondCount(Integer id);
	public Integer SelectFatherId(Integer id);
	public String selectcategory_name(Integer id);
	
}

