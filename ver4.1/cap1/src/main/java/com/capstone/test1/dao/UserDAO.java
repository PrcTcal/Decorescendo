package com.capstone.test1.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.capstone.test1.logic.Members;

@Repository
public class UserDAO {

	@Autowired
	public SqlSession sqlSession;
	
	private static final String namespace = "mapper.user-Mapper";

	public Members getUserOne(String common) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		/*
		if(col.equals("userId")) {
			map.put("userid",common);
			System.out.println("map : " + map.get("userid"));
		}
		*/
		map.put("userid",common);
		System.out.println("map : " + map.get("userid"));
		return sqlSession.selectOne("getUserOne",map);
	}

	public int userJoin(Members members) {
		return sqlSession.insert("userJoin",members);
	}
	
}