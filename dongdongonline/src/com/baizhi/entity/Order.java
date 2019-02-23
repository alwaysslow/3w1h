package com.baizhi.entity;

import java.util.Date;
import java.util.List;

public class Order {
	private Integer order_id;
	private Date order_time;
	private Double total_price;
	private Integer order_status1;
	private Integer address_id;
	private Integer user_id;
	private List<Itemdetail> itemdetails;
	public Integer getOrder_id() {
		return order_id;
	}
	public void setOrder_id(Integer order_id) {
		this.order_id = order_id;
	}
	public Date getOrder_time() {
		return order_time;
	}
	public void setOrder_time(Date order_time) {
		this.order_time = order_time;
	}
	public Double getTotal_price() {
		return total_price;
	}
	public void setTotal_price(Double total_price) {
		this.total_price = total_price;
	}
	public Integer getOrder_status1() {
		return order_status1;
	}
	public void setOrder_status1(Integer order_status1) {
		this.order_status1 = order_status1;
	}
	
	
	
	public List<Itemdetail> getItemdetails() {
		return itemdetails;
	}
	public void setItemdetails(List<Itemdetail> itemdetails) {
		this.itemdetails = itemdetails;
	}
	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	public Integer getAddress_id() {
		return address_id;
	}
	public void setAddress_id(Integer address_id) {
		this.address_id = address_id;
	}
	@Override
	public String toString() {
		return "Order [order_id=" + order_id + ", order_time=" + order_time
				+ ", total_price=" + total_price + ", order_status1="
				+ order_status1 + ", address_id=" + address_id + ", user_id="
				+ user_id + "]";
	}
	
	
	
}
