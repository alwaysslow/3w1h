package com.baizhi.dao;

import org.apache.ibatis.annotations.Param;

import com.baizhi.entity.User;

public interface UserDao {
	public User selectOne(User u);
	public void add(User u);
	public void update(@Param("email")String email);
}
