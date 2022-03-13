package com.helpPet.app.board.boardAdoptReview.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.helpPet.app.board.boardAdoptReview.vo.ReviewVO;
import com.helpPet.mybatis.config.MyBatisConfig;

public class ReviewDAO {
	SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessoinFactory();
	SqlSession sqlSession;
	
	public ReviewDAO() {
		sqlSession = sqlSessionFactory.openSession(true);
	}	
	
	public List<ReviewVO> selectAll(Map<String, Integer> reviewMap){
		return sqlSession.selectList("Review.selectAll", reviewMap);
	}
	
	
}
