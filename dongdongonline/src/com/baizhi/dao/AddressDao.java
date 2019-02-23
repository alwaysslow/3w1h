package com.baizhi.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.baizhi.entity.Address;

public interface AddressDao {
	public List<Address> selectAll(@Param("id")Integer id);
	public void delete(@Param("id")Integer id);
	public void update1(@Param("id")Integer id);
	public void update0(@Param("id")Integer id);
	public void add(Address address);
	
}
