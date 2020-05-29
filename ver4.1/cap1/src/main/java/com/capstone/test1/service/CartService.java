package com.capstone.test1.service;

import com.capstone.test1.dao.CartDAO;
import com.capstone.test1.logic.Cart;

import java.util.List;

public interface CartService {
	int insertBasket(String insertID, String num);
	int deleteBasket(String deleteID, String num);
	List<Cart> getBasketList(String reloadID);
	int countBasket(String countID, String num, String count);
}
