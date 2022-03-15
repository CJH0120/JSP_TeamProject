package com.helpPet.app.board.boardAdoptReview.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.helpPet.app.board.boardAdoptReview.vo.ReviewFilesVO;
import com.helpPet.app.board.boardAdoptReview.vo.ReviewVO;
import com.helpPet.mybatis.config.MyBatisConfig;

public class ReviewFilesDAO {
	SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessoinFactory();
	SqlSession sqlSession;
	
	public ReviewFilesDAO() {
		sqlSession = sqlSessionFactory.openSession(true);
	}	
	
	//첨부파일 추가
	public void insert(ReviewFilesVO file) {
		sqlSession.insert("Files.insert", file);
	}
}