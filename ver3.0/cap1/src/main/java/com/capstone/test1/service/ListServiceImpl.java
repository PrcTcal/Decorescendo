package com.capstone.test1.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.capstone.test1.dao.ListDAO;
import com.capstone.test1.logic.Lists;

@Service
public class ListServiceImpl implements ListService{
	
	@Autowired
	ListDAO listDAO;
	
	@Override
	public List<Lists> getListOne(String type, String brand, String price) {
		return listDAO.getListOne(type, brand, price);
	}
	
	@Override
	public int insertFurn(Lists lists) {
		return listDAO.insertFurn(lists);
	}

}
