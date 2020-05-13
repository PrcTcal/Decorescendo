package com.capstone.test1.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.capstone.test1.logic.Cart;

@Repository
public class CartDAO {

	@Autowired
	public SqlSession sqlSession;
	
	private static final String namespace = "";
	
	public Cart getProductOne(String common, String col) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		return sqlSession.selectOne("getProductOne", map);
	}
	
	public int insertProduct(Cart cart) {
		return sqlSession.insert("insertProduct", cart);
	}
}
