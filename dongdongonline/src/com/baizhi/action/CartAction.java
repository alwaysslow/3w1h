package com.baizhi.action;

import java.util.Map;
import java.util.Set;

import com.baizhi.entity.Book;
import com.baizhi.entity.Cart;
import com.baizhi.entity.Item;
import com.baizhi.service.BookService;
import com.baizhi.service.BookServiceImpl;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class CartAction extends ActionSupport {
	private BookService bs=new BookServiceImpl();
	


	private Integer book_id;  
	
	private Integer addCount;
	
	public Integer getAddCount() {
		return addCount;
	}

	public void setAddCount(Integer addCount) {
		this.addCount = addCount;
	}

	public Integer getBook_id() {
		return book_id;
	}

	public void setBook_id(Integer book_id) {
		this.book_id = book_id;
	}

	public BookService getBs() {
		return bs;
	}

	public void setBs(BookService bs) {
		this.bs = bs;
	}
	public String remove(){
		//从session 中获取cart对象
		Map<String, Object> session=ActionContext.getContext().getSession();
		Cart cart=(Cart) session.get("cart");
		//获取addmap
		Map<Integer,Item> addmap=cart.getAddmap();
		Map<Integer,Item> removemap=cart.getRemovemap();
		//获取指定书籍id为key的item对象
		Item item=addmap.get(book_id);
		addmap.remove(book_id);
		removemap.put(book_id, item);
		//重新计算cart的总价格
		Set<Integer> keys=addmap.keySet();
   		Double  totalprice=0.0;
   		Double totalformer =0.0;
   		for(Integer key:keys){
   		    Double price1=addmap.get(key).getBuycount()*addmap.get(key).getBook().getDang_price();
   		    Double price2=addmap.get(key).getBuycount()*addmap.get(key).getBook().getBook_price();
   		    totalprice=totalprice+price1;
   		    totalformer=totalformer+price2;
   		}
   		Double save=totalformer-totalprice;
   		cart.setTotalprice(totalprice);
   		
		return "remove";
		
	}
	public String recover(){
				//从session 中获取cart对象
				Map<String, Object> session=ActionContext.getContext().getSession();
				Cart cart=(Cart) session.get("cart");
				//获取addmap
				Map<Integer,Item> addmap=cart.getAddmap();
				Map<Integer,Item> removemap=cart.getRemovemap();
				
				Item item=removemap.get(book_id);
				removemap.remove(book_id);
				
				addmap.put(book_id, item);
				//重新计算cart的总价格
				Set<Integer> keys=addmap.keySet();
		   		Double  totalprice=0.0;
		   		Double totalformer =0.0;
		   		for(Integer key:keys){
		   		    Double price1=addmap.get(key).getBuycount()*addmap.get(key).getBook().getDang_price();
		   		    Double price2=addmap.get(key).getBuycount()*addmap.get(key).getBook().getBook_price();
		   		    totalprice=totalprice+price1;
		   		    totalformer=totalformer+price2;
		   		}
		   		Double save=totalformer-totalprice;
		   		cart.setTotalprice(totalprice);
		   		return "recover";
				
	}
	
	//返回值为null 不进行页面跳转
	public String updateCount(){
		//从session 中获取cart对象
		
		Map<String, Object> session=ActionContext.getContext().getSession();
		Cart cart=(Cart) session.get("cart");
		//System.out.println(cart);
		//从cart中获取item
		Item item=cart.getAddmap().get(book_id);
		System.out.println(item);
		System.out.println(addCount);
	   item.setBuycount(addCount);
	   System.out.println(item);
	   
	 //获取 addmap集合 Key值为书籍id
       Map<Integer,Item> addmap=cart.getAddmap();
		Set<Integer> keys=addmap.keySet();
   		Double  totalprice=0.0;
   		Double totalformer =0.0;
   		for(Integer key:keys){
   		    Double price1=addmap.get(key).getBuycount()*addmap.get(key).getBook().getDang_price();
   		    Double price2=addmap.get(key).getBuycount()*addmap.get(key).getBook().getBook_price();
   		    totalprice=totalprice+price1;
   		    totalformer=totalformer+price2;
   		}
   		Double save=totalformer-totalprice;
   		
   		cart.setTotalprice(totalprice);
	   
	   
	   return "update";
	}
	
	public String addBook(){
		//1获取session 并从session里获取cart对象
		Map<String, Object> session=ActionContext.getContext().getSession();
		Cart cart=(Cart) session.get("cart");
		//2判断cart对象是否存在  不存在新建cart对象  存在获取addmap集合
		System.out.println("ayixitailu                 ");
		if(cart==null){
			cart=new Cart();
			
			session.put("cart", cart);
		}
		//获取 addmap集合 Key值为书籍id
       Map<Integer,Item> addmap=cart.getAddmap();
       //判断map集合中是否含有book_id对应的key值
       if(addmap.containsKey(book_id)){
    	   //获取item 对象
    	   Item item=addmap.get(book_id);
    	   //获取加入购物车对应书籍的数量 并加1
    	  Integer buycount= item.getBuycount()+1;
    	  item.setBuycount(buycount);//必须再次设置 因为属性变化的为基本类型
    	  //addmap.put(book_id, item); 写不写都可以 因为变化属性为引用类型
    	  //cart.setAddmap(addmap);
       }
       else{
    	   //根据id查找对应书籍
    	   Book book=bs.selectOne(book_id);
    	   //新建Item对象 并将书籍对象和初始购买值存储到item对象中
    	   Item item =new Item();
    	   item.setBook(book);
    	   item.setBuycount(1);
    	   //将book_id及item以key_value形式存入cart对象中
    	   addmap.put(book_id, item);
    	   //addmap存入cart对象
    	   //cart.setAddmap(addmap);
    	   }
       		//遍历map 求出totalprice
       		Set<Integer> keys=addmap.keySet();
       		Double  totalprice=0.0;
       		Double totalformer =0.0;
       		for(Integer key:keys){
       		    Double price1=addmap.get(key).getBuycount()*addmap.get(key).getBook().getDang_price();
       		    Double price2=addmap.get(key).getBuycount()*addmap.get(key).getBook().getBook_price();
       		    totalprice=totalprice+price1;
       		    totalformer=totalformer+price2;
       		}
       		Double save=totalformer-totalprice;
       		
       		cart.setTotalprice(totalprice);
       		cart.setTotalsave(save);
       		System.out.println(save);
       		System.out.println(cart);
       	return null;	
       
	} 
	
	
}
