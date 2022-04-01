package com.helpPet.app.board.boardAdoptReview.dao;

import java.util.Enumeration;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.helpPet.app.board.boardAdoptReview.vo.ReviewFilesVO;
import com.helpPet.app.board.boardAdoptReview.vo.ReviewVO;
import com.helpPet.mybatis.config.MyBatisConfig;
import com.oreilly.servlet.MultipartRequest;

public class ReviewFilesDAO {
	SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessoinFactory();
	SqlSession sqlSession;
	
	public ReviewFilesDAO() {
		sqlSession = sqlSessionFactory.openSession(true);
	}	
	
	//첨부파일 추가
	private void insert(ReviewFilesVO file) {
		sqlSession.insert("Files.insert", file);
	}
	
	//첨부파일 추가(로직)
	public void insert(MultipartRequest multi, int reviewBoardNum) {
		ReviewFilesVO file = new ReviewFilesVO();
		Enumeration<String> files = multi.getFileNames();
		
		while(files.hasMoreElements()) {
			//사용자가 업로드한 파일 태그의 name값
			String name = files.nextElement();
			
			//사용자가 업로드한 원본 파일 이름
			String reviewFileOriginal = multi.getOriginalFileName(name);
			
			//중복 시 변경된 이름
			String reviewFileName = multi.getFilesystemName(name);
			
			if(reviewFileName == null) {continue;}
			
			file.setReviewFileName(reviewFileName);
			file.setReviewFileOriginal(reviewFileOriginal);
			file.setReviewBoardNum(reviewBoardNum);
			
			insert(file);
		}
	}
}