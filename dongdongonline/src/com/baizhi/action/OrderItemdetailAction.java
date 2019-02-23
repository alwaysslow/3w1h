package com.baizhi.action;

import java.util.List;
import java.util.Map;
import java.util.Set;

import com.baizhi.entity.Book;
import com.baizhi.entity.Cart;
import com.baizhi.entity.Item;
import com.baizhi.entity.Itemdetail;
import com.baizhi.entity.Order;
import com.baizhi.entity.User;
import com.baizhi.service.ItemdetailService;
import com.baizhi.service.ItemdetailServiceImpl;
import com.baizhi.service.OrderService;
import com.baizhi.service.OrderServiceImpl;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.util.ValueStack;

public class OrderItemdetailAction extends ActionSupport {
	private ValueStack vs = ActionContext.getContext().getValueStack();
	Map<String,Object> session=ActionContext.getContext().getSession();
	private OrderService os=new OrderServiceImpl();
	private ItemdetailService is=new ItemdetailServiceImpl();
	private Integer address_id;
	private Order order=new Order();
	private  List<Order> orders;
	private Integer order_id;
	private Integer out_trade_no;

	
	

	public Integer getOut_trade_no() {
		return out_trade_no;
	}

	public void setOut_trade_no(Integer out_trade_no) {
		this.out_trade_no = out_trade_no;
	}

	public Integer getOrder_id() {
		return order_id;
	}

	public void setOrder_id(Integer order_id) {
		this.order_id = order_id;
	}

	public List<Order> getOrders() {
		return orders;
	}

	public void setOrders(List<Order> orders) {
		this.orders = orders;
	}

	public Integer getAddress_id() {
		return address_id;
	}

	public void setAddress_id(Integer address_id) {
		this.address_id = address_id;
	}

	



	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	public String  addorder(){
		//获得用户和购物车数据
		User user=(User) vs.findValue("#session.user");
		Cart cart =(Cart) session.get("cart");
		//添加订单
		
		order.setOrder_status1(0);
		order.setAddress_id(address_id);
		order.setTotal_price(cart.getTotalprice());
		order.setUser_id(user.getUser_id());
		System.out.println(order);
		os.add(order);
		//添加订单详情
		 
		
		Map<Integer,Item> map= cart.getAddmap();
		Set<Integer> ids=map.keySet();
		for(int id:ids){
			 Itemdetail itemdetail=new Itemdetail();
			 itemdetail.setOrder_id(order.getOrder_id());
			 Book book=new Book();
			 book.setBook_id(id);
			itemdetail.setBook(book);
			itemdetail.setItem_count(map.get(id).getBuycount());
			itemdetail.setItem_price(map.get(id).getBook().getDang_price());
			System.out.println(itemdetail);
			is.add(itemdetail);
		}
		session.put("cart", null);
		 
		return "addOk";
		
	}
	public String showAll(){
		User user=(User) vs.findValue("#session.user");
		orders =os.showAll(user.getUser_id());
		return "showAll";
	}
	public String delete(){
		System.out.println(order_id);
		is.delete(order_id);
		os.delete(order_id);
		return "delete";
	}
	//支付完修改支付状态
	public String update(){
		System.out.println("ss");
		os.update(out_trade_no);
		return "update";
	}
}
