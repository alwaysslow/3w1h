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
		//��session �л�ȡcart����
		Map<String, Object> session=ActionContext.getContext().getSession();
		Cart cart=(Cart) session.get("cart");
		//��ȡaddmap
		Map<Integer,Item> addmap=cart.getAddmap();
		Map<Integer,Item> removemap=cart.getRemovemap();
		//��ȡָ���鼮idΪkey��item����
		Item item=addmap.get(book_id);
		addmap.remove(book_id);
		removemap.put(book_id, item);
		//���¼���cart���ܼ۸�
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
				//��session �л�ȡcart����
				Map<String, Object> session=ActionContext.getContext().getSession();
				Cart cart=(Cart) session.get("cart");
				//��ȡaddmap
				Map<Integer,Item> addmap=cart.getAddmap();
				Map<Integer,Item> removemap=cart.getRemovemap();
				
				Item item=removemap.get(book_id);
				removemap.remove(book_id);
				
				addmap.put(book_id, item);
				//���¼���cart���ܼ۸�
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
	
	//����ֵΪnull ������ҳ����ת
	public String updateCount(){
		//��session �л�ȡcart����
		
		Map<String, Object> session=ActionContext.getContext().getSession();
		Cart cart=(Cart) session.get("cart");
		//System.out.println(cart);
		//��cart�л�ȡitem
		Item item=cart.getAddmap().get(book_id);
		System.out.println(item);
		System.out.println(addCount);
	   item.setBuycount(addCount);
	   System.out.println(item);
	   
	 //��ȡ addmap���� KeyֵΪ�鼮id
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
		//1��ȡsession ����session���ȡcart����
		Map<String, Object> session=ActionContext.getContext().getSession();
		Cart cart=(Cart) session.get("cart");
		//2�ж�cart�����Ƿ����  �������½�cart����  ���ڻ�ȡaddmap����
		System.out.println("ayixitailu                 ");
		if(cart==null){
			cart=new Cart();
			
			session.put("cart", cart);
		}
		//��ȡ addmap���� KeyֵΪ�鼮id
       Map<Integer,Item> addmap=cart.getAddmap();
       //�ж�map�������Ƿ���book_id��Ӧ��keyֵ
       if(addmap.containsKey(book_id)){
    	   //��ȡitem ����
    	   Item item=addmap.get(book_id);
    	   //��ȡ���빺�ﳵ��Ӧ�鼮������ ����1
    	  Integer buycount= item.getBuycount()+1;
    	  item.setBuycount(buycount);//�����ٴ����� ��Ϊ���Ա仯��Ϊ��������
    	  //addmap.put(book_id, item); д��д������ ��Ϊ�仯����Ϊ��������
    	  //cart.setAddmap(addmap);
       }
       else{
    	   //����id���Ҷ�Ӧ�鼮
    	   Book book=bs.selectOne(book_id);
    	   //�½�Item���� �����鼮����ͳ�ʼ����ֵ�洢��item������
    	   Item item =new Item();
    	   item.setBook(book);
    	   item.setBuycount(1);
    	   //��book_id��item��key_value��ʽ����cart������
    	   addmap.put(book_id, item);
    	   //addmap����cart����
    	   //cart.setAddmap(addmap);
    	   }
       		//����map ���totalprice
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
