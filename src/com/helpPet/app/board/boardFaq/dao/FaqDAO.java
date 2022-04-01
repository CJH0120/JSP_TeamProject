package com.helpPet.app.board.boardFaq.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.helpPet.app.board.boardFaq.vo.FaqVO;
import com.helpPet.app.board.boardQnA.vo.QnAVO;
import com.helpPet.mybatis.config.MyBatisConfig;

public class FaqDAO {
	SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessoinFactory();
	SqlSession sqlSession;
	
	public FaqDAO(){
		sqlSession = sqlSessionFactory.openSession(true);
	}
	
	//검색
	public List<FaqVO> questionSearch(FaqVO vo){
		List<FaqVO> list = null;
		list = sqlSession.selectList("questionSearch", vo);
		sqlSession.close();
		return list;
	}
}
