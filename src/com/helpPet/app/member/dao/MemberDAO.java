package com.helpPet.app.member.dao;


import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.helpPet.app.member.vo.MemberVO;
import com.helpPet.mybatis.config.MyBatisConfig;

public class MemberDAO {
	SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessoinFactory();
	SqlSession sqlSession;
	
	public MemberDAO() {
		sqlSession = sqlSessionFactory.openSession(true);
	}
	
	//아이디 중복검사
	public boolean checkIdFnd(String userckid) {
		
		return (Integer)sqlSession.selectOne("Member.checkIdFnd", userckid) == 1;
	}
	
	
	//닉네임 중복검사 
		public boolean checkNick(String nickFnd) {
			
			return (Integer)sqlSession.selectOne("Member.checkNick", nickFnd) == 1;
		}
	//이메일
		public boolean checkEmail(String EmilFnd) {
			
			return (Integer)sqlSession.selectOne("Member.checkEmail", EmilFnd) == 1;
		}
	
	
	//회원가입
	public void join(MemberVO member) {
		sqlSession.insert("Member.join", member);
	}
	
	//로그인
	public int login(Map<String, String> loginMap) {
		int userNum = 0;
		try {userNum = sqlSession.selectOne("Member.login", loginMap);} catch (Exception e) {;}
		return userNum;
	}
	
	//회원 정보 조회
	public MemberVO getInfo(int userNum) {
		return sqlSession.selectOne("Member.getInfo", userNum);
	}
	
}
