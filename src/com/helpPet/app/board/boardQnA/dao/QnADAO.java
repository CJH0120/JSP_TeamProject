package com.helpPet.app.board.boardQnA.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.helpPet.app.board.boardQnA.vo.QnAVO;
import com.helpPet.mybatis.config.MyBatisConfig;


public class QnADAO {
	SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessoinFactory();
	SqlSession sqlSession;
	
	public QnADAO() {
		//true->자동커밋
		sqlSession = sqlSessionFactory.openSession(true);
	}
	
	//문의
	public void question(QnAVO qna) { 
		//(어떤쿼리들 담을지, 파라미터가 있을경우 파라미터)
		sqlSession.insert("Board.question", qna);
	}
}
