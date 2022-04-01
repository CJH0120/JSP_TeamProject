package com.helpPet.app.board.boardIsee.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;


import com.helpPet.app.board.boardIsee.vo.IseeDTO;
import com.helpPet.app.board.boardIsee.vo.IseeVO;
import com.helpPet.mybatis.config.MyBatisConfig;

public class IseeDAO {
	SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessoinFactory();
	SqlSession sqlSession;
	
	public IseeDAO() {
		//true->자동커밋
		sqlSession = sqlSessionFactory.openSession(true);
	}
	
	//게시글 목록
		public List<IseeDTO> selectAll(Map<String, Integer> boardMap) {
			return sqlSession.selectList("Board.selectAll", boardMap);
		}
		
		//게시글 전체 개수
		public int getTotal() {
			return sqlSession.selectOne("Board.getTotal");
		}
		
		//게시글 정보 조회
		public IseeDTO selectDetail(int boardNumber) {
			return sqlSession.selectOne("Board.selectDetail", boardNumber);
		}
		
		//게시글 조회수 증가
		public void updateReadCount(int boardNumber) {
			sqlSession.update("Board.updateReadCount", boardNumber);
		}
		
		//최근 게시글 번호
		public int getSeq() {
			return sqlSession.selectOne("Board.getSeq");
		}
		
		//게시글 추가
		public void insert(IseeVO board) {
			sqlSession.insert("Board.insert", board);
		}
		
		//게시글 삭제
		public void delete(int boardNumber) {
			sqlSession.delete("Board.delete", boardNumber);
		}
		
		//게시글 수정
		public void update(IseeVO board) {
			sqlSession.update("Board.update", board);
		}
	
	
	
}

