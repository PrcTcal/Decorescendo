package com.capstone.test1.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.capstone.test1.logic.Lists;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ListDAO {
	
	@Autowired
	public SqlSession sqlSession;
	
	private static final String namespace = "";
	
	public List<Lists> getListOne(String type, String brand, String price) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		map.put("type", type);
		map.put("brand", brand);
		if(price.equals("Price")) {
			map.put("price", price);
		} else {
			String min, max;
			String[] temp = new String[2];
			temp = price.split("~");
			min = temp[0];
			max = temp[1];
			map.put("price", min);
			map.put("maxPrice", max);
		}
		return sqlSession.selectList("getListOne",map);
		
	}
	public int insertFurn(Lists lists) {
		return sqlSession.insert("insertFurn",lists);
	}
	

	
}
