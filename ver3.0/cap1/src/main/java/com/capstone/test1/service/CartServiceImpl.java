package com.capstone.test1.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.capstone.test1.dao.CartDAO;
import com.capstone.test1.logic.Cart;

@Service
public class CartServiceImpl implements CartService{

	@Autowired
	CartDAO cartDAO;
	
	@Override
	public Cart getProductOne(String common, String col) {
		return cartDAO.getProductOne(common, col);
	}
	
	@Override
	public int insertProduct(Cart cart) {
		return cartDAO.insertProduct(cart);
	}
}
