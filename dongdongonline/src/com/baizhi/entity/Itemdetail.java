package com.baizhi.entity;

public class Itemdetail {
	private Integer item_id;
	private Double item_price;
	private Integer item_count;
	private Book book;
	private Integer order_id;
	public Integer getItem_id() {
		return item_id;
	}
	public Book getBook() {
		return book;
	}
	public void setBook(Book book) {
		this.book = book;
	}
	public void setItem_id(Integer item_id) {
		this.item_id = item_id;
	}
	public Double getItem_price() {
		return item_price;
	}
	public void setItem_price(Double item_price) {
		this.item_price = item_price;
	}
	public Integer getItem_count() {
		return item_count;
	}
	public void setItem_count(Integer item_count) {
		this.item_count = item_count;
	}
	
	public Integer getOrder_id() {
		return order_id;
	}
	public void setOrder_id(Integer order_id) {
		this.order_id = order_id;
	}
	@Override
	public String toString() {
		return "Itemdetail [item_id=" + item_id + ", item_price=" + item_price
				+ ", item_count=" + item_count + ", book=" + book
				+ ", order_id=" + order_id + "]";
	}
	

	
	
}
