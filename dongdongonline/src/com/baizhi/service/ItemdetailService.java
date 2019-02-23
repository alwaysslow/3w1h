package com.baizhi.service;

import com.baizhi.dao.ItemdetailDao;
import com.baizhi.entity.Itemdetail;

public interface ItemdetailService {
	public void add(Itemdetail itemdetail);
	public void delete(Integer order_id);
	
}
