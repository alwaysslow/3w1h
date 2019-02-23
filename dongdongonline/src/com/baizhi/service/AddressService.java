package com.baizhi.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.baizhi.entity.Address;

public interface AddressService {
	public List<Address> selectAll(Integer id);
	public void delete(Integer id);
	public void add(Address address);
	public void update1(Integer id);
	public void update0(Integer id);
}
