package com.baizhi.service;

import java.util.List;

import com.baizhi.dao.CategoryDao;
import com.baizhi.entity.Book;
import com.baizhi.entity.Category;
import com.baizhi.utils.MyBatisUtil;

public class CategoryServiceImpl implements CategoryService {
	//�����������鼮��С���
	@Override
	public List<Category> selectAll() {
		// TODO Auto-generated method stub
		CategoryDao cd =(CategoryDao) MyBatisUtil.getMapper(CategoryDao.class);
		
		return cd.selectAll();
	}

	//�����鼮�Ķ���id��ѯ�鼮
	@Override
	public List<Book> selectSecondBook(Integer pageindex, Integer pagesize,
			Integer category_id) {
		// TODO Auto-generated method stub
		CategoryDao cd =(CategoryDao) MyBatisUtil.getMapper(CategoryDao.class);
		Integer start =(pageindex-1)*pagesize+1;
		Integer end =pageindex*pagesize;
		return cd.selectSecondBook(start, end, category_id);
	}

		//�����鼮��һ��id��ѯ�鼮
	@Override
	public List<Book> selectFirstBook(Integer pageindex, Integer pagesize,
			Integer category_id) {
		// TODO Auto-generated method stub
		CategoryDao cd =(CategoryDao) MyBatisUtil.getMapper(CategoryDao.class);
		Integer start =(pageindex-1)*pagesize+1;
		Integer end =pageindex*pagesize;
		
		 
		return cd.selectFirstBook(start, end, category_id);
	}

	//����һ�����id�����������������
	@Override
	public Category selectFirstCategory(Integer id) {
		// TODO Auto-generated method stub
		CategoryDao cd =(CategoryDao) MyBatisUtil.getMapper(CategoryDao.class);
		return cd.selectFirstCategory(id);
	}

	//���ݶ������id��ѯ�����ڴ�һ����������
	@Override
	public Category selectSecondCategory(Integer id) {
		// TODO Auto-generated method stub
		CategoryDao cd =(CategoryDao) MyBatisUtil.getMapper(CategoryDao.class);
		
		return cd.selectSecondCategory(id);
	}

	@Override
	public Integer selectFirstCount(Integer id) {
		// TODO Auto-generated method stub
		CategoryDao cd =(CategoryDao) MyBatisUtil.getMapper(CategoryDao.class);
		return cd.selectFirstCount(id);
	}

	@Override
	public Integer selectSecondCount(Integer id) {
		// TODO Auto-generated method stub
		CategoryDao cd =(CategoryDao) MyBatisUtil.getMapper(CategoryDao.class);
		return cd.selectSecondCount(id);
	}

	@Override
	public Integer SelectFatherId(Integer id) {
		// TODO Auto-generated method stub
		CategoryDao cd =(CategoryDao) MyBatisUtil.getMapper(CategoryDao.class);
		return cd.SelectFatherId(id);
	}

	@Override
	public String selectcategory_name(Integer id) {
		// TODO Auto-generated method stub
		CategoryDao cd =(CategoryDao) MyBatisUtil.getMapper(CategoryDao.class);
		return cd.selectcategory_name(id);
	}

}
