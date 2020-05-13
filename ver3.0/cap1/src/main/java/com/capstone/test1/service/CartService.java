package com.capstone.test1.service;

import com.capstone.test1.logic.Cart;

public interface CartService {
	Cart getProductOne(String common, String col);
	int insertProduct(Cart cart);
}
