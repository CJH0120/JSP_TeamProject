package com.helpPet.app.board.boardPetSearch.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.helpPet.app.board.boardPetSearch.vo.PetSearchReplyVO;
import com.helpPet.mybatis.config.MyBatisConfig;

public class PetSearchReplyDAO {
	SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessoinFactory();
	SqlSession sqlSession;
	public PetSearchReplyDAO() {
		sqlSession = sqlSessionFactory.openSession(true);
	}
	
	//댓글 목록
	public List<PetSearchReplyVO> selectReplies(int noticeNo) {
		System.out.println(noticeNo);
		return sqlSession.selectList("PetSearchReply.petSearchReplyList", noticeNo);
	}
	
	//댓글 삭제
	public void deleteReply(int searchReplyNum) {
		sqlSession.delete("PetSearchReply.deletePetSearchReply", searchReplyNum);
	}
/*	//댓글 등록
	public void insertReply(PetSearchReplyVO reply) {
		sqlSession.insert("PetSearchReply.insertReply", reply);
	}
	
	
	//댓글 수정
	public void updateReply(PetSearchReplyVO reply) {
		sqlSession.update("PetSearchReply.updateReply", reply);
	}*/
	
}
