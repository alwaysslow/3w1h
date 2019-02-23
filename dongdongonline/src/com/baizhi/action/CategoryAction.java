package com.baizhi.action;

import java.util.List;

import com.baizhi.entity.Book;
import com.baizhi.entity.Category;
import com.baizhi.service.CategoryService;
import com.baizhi.service.CategoryServiceImpl;
import com.opensymphony.xwork2.ActionSupport;

public class CategoryAction  extends ActionSupport{
	private CategoryService cs=new CategoryServiceImpl();
	private List<Category> list;
	private List<Book> books;
	private Integer category_id;
	private Category category;
	private Integer totalcount;
	
	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public List<Book> getBooks() {
		return books;
	}

	public void setBooks(List<Book> books) {
		this.books = books;
	}

	public Integer getCategory_id() {
		return category_id;
	}

	public void setCategory_id(Integer category_id) {
		this.category_id = category_id;
	}

	public Integer getPagesize() {
		return pagesize;
	}

	public void setPagesize(Integer pagesize) {
		this.pagesize = pagesize;
	}

	public Integer getPageindex() {
		return pageindex;
	}

	public void setPageindex(Integer pageindex) {
		this.pageindex = pageindex;
	}

	public Integer getCategory_count() {
		return category_count;
	}

	public void setCategory_count(Integer category_count) {
		this.category_count = category_count;
	}

	public Integer getTotalpage() {
		return totalpage;
	}

	public void setTotalpage(Integer totalpage) {
		this.totalpage = totalpage;
	}
	
	//接受页码 从jsp中获得
	private Integer pagesize=5;
	private Integer pageindex=1;
	private Integer category_count;//可以从jsp中接受
	private Integer totalpage;
	private Integer father_id;
	private String category_name;
	
	//根据父类id查询分页显示
	public String selectFirstSecond(){
		
		father_id=cs.SelectFatherId(category_id);
		//当前二级类别名称
		category_name=cs.selectcategory_name(category_id);
		if(father_id==null){
			totalcount=cs.selectFirstCount(category_id);
			totalpage=(totalcount%pagesize==0)?(totalcount/pagesize):(totalcount/pagesize+1);
			category =cs.selectFirstCategory(category_id);
			books=cs.selectFirstBook( pageindex, pagesize,category_id);
			return "FirstCategory";
		}else{
			totalcount= cs.selectSecondCount(category_id);
			totalpage=(totalcount%pagesize==0)?(totalcount/pagesize):(totalcount/pagesize+1);
			category=cs.selectSecondCategory(category_id);
			books=cs.selectSecondBook( pageindex, pagesize,category_id);
			return "secondCategory";
		}
	}
	
	
	public String getCategory_name() {
		return category_name;
	}

	public void setCategory_name(String category_name) {
		this.category_name = category_name;
	}

	public Integer getFather_id() {
		return father_id;
	}

	public void setFather_id(Integer father_id) {
		this.father_id = father_id;
	}

/*	//分页一级展示书籍和目录
	public String selectFirstBook(){
		totalcount=cs.selectFirstCount(category_id);
		totalpage=(totalcount%pagesize==0)?(totalcount/pagesize):(totalcount/pagesize+1);
		category =cs.selectFirstCategory(category_id);
		books=cs.selectFirstBook( pageindex, pagesize,category_id);
		System.out.println(category);
		System.out.println(books);
		return "FirstCategory";
		
	}
	//分页二级级展示书籍和目录
	public String selectSecondBook(){
		totalcount= cs.selectSecondCount(category_id);
		totalpage=(totalcount%pagesize==0)?(totalcount/pagesize):(totalcount/pagesize+1);
		category=cs.selectSecondCategory(category_id);
		books=cs.selectSecondBook( pageindex, pagesize,category_id);
		return "secondCategory";
	}*/
	
	//按条件查询书籍集合
	public String selectAll(){
		System.out.println("ss");
		list=cs.selectAll();
		System.out.println(list);
		return "showAll";
	}
		
	public CategoryService getCs() {
		return cs;
	}

	public void setCs(CategoryService cs) {
		this.cs = cs;
	}

	public List<Category> getList() {
		return list;
	}

	public void setList(List<Category> list) {
		this.list = list;
	}

	
	
}
