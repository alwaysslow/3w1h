package com.baizhi.entity;

import java.util.Date;

public class Book {
	private Integer book_id;
	private String book_name;
	private String author;
	private String press;
	private Date up_date;
	private Double book_price;
	private Double dang_price;
	private String img;
	private String description1;
	private Integer book_salecount;
	private Category category1;
	private Category  category2;
	
	

	
	public Category getCategory1() {
		return category1;
	}
	public void setCategory1(Category category1) {
		this.category1 = category1;
	}
	public Category getCategory2() {
		return category2;
	}
	public void setCategory2(Category category2) {
		this.category2 = category2;
	}
	
	@Override
	public String toString() {
		return "Book [book_id=" + book_id + ", book_name=" + book_name
				+ ", author=" + author + ", press=" + press + ", up_date="
				+ up_date + ", book_price=" + book_price + ", dang_price="
				+ dang_price + ", img=" + img + ", description1="
				+ description1 + ", book_salecount=" + book_salecount
				+ ", category1=" + category1 + ", category2=" + category2 + "]";
	}
	public String getDescription1() {
		return description1;
	}
	public void setDescription1(String description1) {
		this.description1 = description1;
	}
	public Integer getBook_salecount() {
		return book_salecount;
	}
	public void setBook_salecount(Integer book_salecount) {
		this.book_salecount = book_salecount;
	}
	public Integer getBook_id() {
		return book_id;
	}
	public void setBook_id(Integer book_id) {
		this.book_id = book_id;
	}
	public String getBook_name() {
		return book_name;
	}
	public void setBook_name(String book_name) {
		this.book_name = book_name;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getPress() {
		return press;
	}
	public void setPress(String press) {
		this.press = press;
	}
	public Date getUp_date() {
		return up_date;
	}
	public void setUp_date(Date up_date) {
		this.up_date = up_date;
	}
	public Double getBook_price() {
		return book_price;
	}
	public void setBook_price(Double book_price) {
		this.book_price = book_price;
	}
	public Double getDang_price() {
		return dang_price;
	}
	public void setDang_price(Double dang_price) {
		this.dang_price = dang_price;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getDescription() {
		return description1;
	}
	public void setDescription(String description) {
		this.description1 = description;
	}

	private String description;
	
}
