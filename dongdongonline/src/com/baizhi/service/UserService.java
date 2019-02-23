package com.baizhi.service;

import org.apache.ibatis.annotations.Param;

import com.baizhi.entity.User;

public interface UserService {
	public User selectOne(User u);
	public void add(User u);
	public void update(String email);
}
