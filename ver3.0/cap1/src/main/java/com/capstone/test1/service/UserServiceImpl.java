package com.capstone.test1.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.capstone.test1.dao.UserDAO;
import com.capstone.test1.logic.Members;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	UserDAO userDAO;

	@Override
	public Members getUserOne(String common) {
		return userDAO.getUserOne(common);
	}

	@Override
	public int userJoin(Members members) {
		return userDAO.userJoin(members);
	}
	
}