package com.capstone.test1.service;

import java.util.List;

import com.capstone.test1.logic.Lists;

public interface ListService {
	List<Lists> getListOne(String type, String brand, String price);
	int insertFurn(Lists lists);
}
