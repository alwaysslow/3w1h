package com.baizhi.service;

import java.util.List;

import com.baizhi.entity.Order;

public interface OrderService {
	public void add(Order order);
	public List<Order> showAll(Integer user_id);
	public void delete(Integer order_id);
	public void update(Integer id);
}
