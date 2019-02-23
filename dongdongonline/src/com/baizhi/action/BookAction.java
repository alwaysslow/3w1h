package com.baizhi.action;

import java.util.List;

import com.baizhi.entity.Book;
import com.baizhi.service.BookService;
import com.baizhi.service.BookServiceImpl;
import com.opensymphony.xwork2.ActionSupport;

public class BookAction  extends ActionSupport{
	private BookService bs=new BookServiceImpl();
	private List<Book> books;
	private Book book;
	private Integer book_id;
	//每本书籍详细信息
	public String selectOne(){
		book=bs.selectOne(book_id);
		return "selectOne";
	}
	public Integer getBook_id() {
		return book_id;
	}
	public void setBook_id(Integer book_id) {
		this.book_id = book_id;
	}
	//编辑推荐
	public String selecteditor(){
		books=bs.selectByEditor();
		System.out.println(books);
		return "editor";
	}
	//热销商品
	public String selecthot(){
		books=bs.selectByHotSell();
		return "hot";
	}
	//新品图书
	public String selectnew(){
		books=bs.selectByNewTime();
		return "new";
	}
	//新书热卖排行榜
	public String selectnewhot(){
		books=bs.selectByHotNew();
		return "hotnew";
	}
	public BookService getBs() {
		return bs;
	}
	public void setBs(BookService bs) {
		this.bs = bs;
	}
	public List<Book> getBooks() {
		return books;
	}
	public void setBooks(List<Book> books) {
		this.books = books;
	}
	public Book getBook() {
		return book;
	}
	public void setBook(Book book) {
		this.book = book;
	}
	
}
