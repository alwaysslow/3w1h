package com.baizhi.service;

import com.baizhi.dao.ItemdetailDao;
import com.baizhi.entity.Itemdetail;
import com.baizhi.utils.MyBatisUtil;

public class ItemdetailServiceImpl implements ItemdetailService {

	@Override
	public void add(Itemdetail itemdetail) {
		// TODO Auto-generated method stub
		ItemdetailDao it =(ItemdetailDao) MyBatisUtil.getMapper(ItemdetailDao.class);
		it.add(itemdetail);
		MyBatisUtil.commit();
		
	}

	@Override
	public void delete(Integer order_id) {
		// TODO Auto-generated method stub
		ItemdetailDao it =(ItemdetailDao) MyBatisUtil.getMapper(ItemdetailDao.class);
		it.delete(order_id);
		MyBatisUtil.commit();
	}

}
