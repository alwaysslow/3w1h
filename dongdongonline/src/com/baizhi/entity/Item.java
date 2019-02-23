package com.baizhi.entity;

public class Item {
	private Book book;
	private  Integer buycount;
	public Book getBook() {
		return book;
	}
	public void setBook(Book book) {
		this.book = book;
	}
	public Integer getBuycount() {
		return buycount;
	}
	public void setBuycount(Integer buycount) {
		this.buycount = buycount;
	}
	@Override
	public String toString() {
		return "Item [book=" + book + ", buycount=" + buycount + "]";
	}
	
}
