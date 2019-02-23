package com.baizhi.service;

import com.baizhi.dao.UserDao;
import com.baizhi.entity.User;
import com.baizhi.utils.MyBatisUtil;

public class UserServiceImpl implements UserService{

	@Override
	public User selectOne(User u) {
		// TODO Auto-generated method stub
		UserDao ud =(UserDao) MyBatisUtil.getMapper(UserDao.class);	
		return ud.selectOne(u);
	}

	@Override
	public void add(User u) {
		// TODO Auto-generated method stub
		UserDao ud =(UserDao) MyBatisUtil.getMapper(UserDao.class);
		ud.add(u);
		MyBatisUtil.commit();
	}

	@Override
	public void update(String email) {
		// TODO Auto-generated method stub
		UserDao ud =(UserDao) MyBatisUtil.getMapper(UserDao.class);
		ud.update(email);
		MyBatisUtil.commit();
	}
	

}
