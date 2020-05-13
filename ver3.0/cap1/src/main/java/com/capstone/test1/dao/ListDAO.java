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
		map.put("price", price);
		return sqlSession.selectList("getListOne",map);
		
	}
	public int insertFurn(Lists lists) {
		return sqlSession.insert("insertFurn",lists);
	}
	

	
}
