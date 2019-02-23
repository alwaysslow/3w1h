package com.baizhi.entity;

import java.util.ArrayList;
import java.util.List;

public class Category {
	private Integer category_id;
	private String category_name;
	private Integer category_count;
	private List<Category> categories=new ArrayList<>();
	
	public List<Category> getCategories() {
		return categories;
	}
	public void setCategories(List<Category> categories) {
		this.categories = categories;
	}
	public List<Book> getBooks() {
		return books;
	}
	public void setBooks(List<Book> books) {
		this.books = books;
	}
	List<Book> books=new ArrayList<>();
	public Integer getCategory_id() {
		return category_id;
	}
	public void setCategory_id(Integer category_id) {
		this.category_id = category_id;
	}
	public String getCategory_name() {
		return category_name;
	}
	public void setCategory_name(String category_name) {
		this.category_name = category_name;
	}
	public Integer getCategory_count() {
		return category_count;
	}
	public void setCategory_count(Integer category_count) {
		this.category_count = category_count;
	}
	@Override
	public String toString() {
		return "Category [category_id=" + category_id + ", category_name="
				+ category_name + ", category_count=" + category_count
				+ ", categories=" + categories + ", books=" + books + "]";
	}
	
}
