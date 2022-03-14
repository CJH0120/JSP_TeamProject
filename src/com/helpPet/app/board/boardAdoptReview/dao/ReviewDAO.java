package com.helpPet.app.board.boardAdoptReview.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.helpPet.app.board.boardAdoptReview.vo.ReviewDetailVO;
import com.helpPet.app.board.boardAdoptReview.vo.ReviewVO;
import com.helpPet.mybatis.config.MyBatisConfig;

public class ReviewDAO {
	SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessoinFactory();
	SqlSession sqlSession;
	
	public ReviewDAO() {
		sqlSession = sqlSessionFactory.openSession(true);
	}	
	
	//게시글 목록
	public List<ReviewVO> selectAll(Map<String, Integer> reviewMap){
		return sqlSession.selectList("Review.selectAll", reviewMap);
	}
	
	//게시글 전체 개수
	public int getTotal() {
		return sqlSession.selectOne("Review.getTotal");
	}
	
	//게시글 상세 페이지
	public ReviewDetailVO selectDetail(int reviewBoardNum) {
		return sqlSession.selectOne("Review.selectDetail", reviewBoardNum);
	}
	
}
