package com.capstone.test1.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.capstone.test1.dao.CartDAO;
import com.capstone.test1.logic.Cart;

import java.util.List;

@Service
public class CartServiceImpl implements CartService{

	@Autowired
	CartDAO cartDAO;
	
	@Override
	public int insertBasket(String insertID, String num) {
		return cartDAO.insertBasket(insertID, num);
	}
	
	@Override
	public int deleteBasket(String deleteID, String num){
		return cartDAO.deleteBasket(deleteID, num);
	}
	
	@Override
	public List<Cart> getBasketList(String reloadID) {
		return cartDAO.getBasketList(reloadID);
	}

	public int countBasket(String countID, String num, String count) {
		return cartDAO.countBasket(countID, num, count);
	}
}
