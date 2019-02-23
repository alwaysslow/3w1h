package com.baizhi.service;

import java.util.List;

import com.baizhi.dao.AddressDao;
import com.baizhi.entity.Address;
import com.baizhi.utils.MyBatisUtil;

public class AddressServiceImpl implements AddressService {

	@Override
	public List<Address> selectAll(Integer id) {
		// TODO Auto-generated method stub
		AddressDao ad=(AddressDao) MyBatisUtil.getMapper(AddressDao.class);
		
		
		return ad.selectAll( id);
	}

	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		AddressDao ad=(AddressDao) MyBatisUtil.getMapper(AddressDao.class);
		ad.delete(id);
		//增删改需要提交事务
		MyBatisUtil.commit();
	}

	@Override
	public void add(Address address) {
		// TODO Auto-generated method stub 
		AddressDao ad=(AddressDao)MyBatisUtil.getMapper(AddressDao.class);
		ad.add(address);
		MyBatisUtil.commit();
	}

	@Override
	public void update1(Integer id) {
		// TODO Auto-generated method stub
		AddressDao ad=(AddressDao)MyBatisUtil.getMapper(AddressDao.class);
		ad.update1(id);
		MyBatisUtil.commit();
	}

	@Override
	public void update0(Integer id) {
		// TODO Auto-generated method stub
		AddressDao ad=(AddressDao)MyBatisUtil.getMapper(AddressDao.class);
		ad.update0(id);
		MyBatisUtil.commit();
	}
	
}
