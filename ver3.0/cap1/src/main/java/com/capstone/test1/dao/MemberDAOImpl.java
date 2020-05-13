package com.capstone.test1.dao;

import java.util.List;

import javax.inject.Inject;
 
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
 
import com.capstone.test1.logic.Board;
 
@Repository
public class MemberDAOImpl implements BoardDAO {
 
    @Inject
    private SqlSession sqlSession;
    
    private static final String Namespace = "com.capstone.mapper.boardMapper";
    
    @Override
    public List<Board> getBoardList() throws Exception {
 
        return sqlSession.selectList(Namespace+".getBoardList");
    }
 
}
