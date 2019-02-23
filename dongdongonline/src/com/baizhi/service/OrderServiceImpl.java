package com.baizhi.service;

import java.util.List;

import com.baizhi.dao.OrderDao;
import com.baizhi.entity.Order;
import com.baizhi.utils.MyBatisUtil;

public class OrderServiceImpl implements OrderService {

	@Override
	public void add(Order order) {
		// TODO Auto-generated method stub
		OrderDao od=(OrderDao) MyBatisUtil.getMapper(OrderDao.class);
		od.add(order);
		 MyBatisUtil.commit();
		 
	}

	@Override
	public List<Order> showAll(Integer user_id) {
		// TODO Auto-generated method stub
		OrderDao od=(OrderDao) MyBatisUtil.getMapper(OrderDao.class);
		return od.showAll(user_id);
	}

	@Override
	public void delete(Integer order_id) {
		// TODO Auto-generated method stub
		OrderDao od=(OrderDao) MyBatisUtil.getMapper(OrderDao.class);
		od.delete(order_id);
		MyBatisUtil.commit();
	}

	@Override
	public void update(Integer id) {
		// TODO Auto-generated method stub
		OrderDao od=(OrderDao) MyBatisUtil.getMapper(OrderDao.class);
		od.update(id);
		MyBatisUtil.commit();
	}

}
