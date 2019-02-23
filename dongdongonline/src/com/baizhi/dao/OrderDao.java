package com.baizhi.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.baizhi.entity.Order;

public interface OrderDao {
	public void add(Order order);
	public List<Order> showAll(Integer user_id);
	public void delete(Integer order_id);
	public void update (@Param("id")Integer id);
	
}
