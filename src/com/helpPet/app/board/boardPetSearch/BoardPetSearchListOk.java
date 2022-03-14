package com.helpPet.app.board.boardPetSearch;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.helpPet.action.Action;
import com.helpPet.action.ActionForward;

public class BoardPetSearchListOk implements Action{
	// 매퍼 요청 및 액션 포워드 등록 요쳥 해야함
	// boardPetSearchList.jsp에서 검색 버튼으로 호출됨
	// 호출시 아무 데이터도 없을때 디폴트 검색 조건 구현 필요 
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		// 받아오는 검색 조건
		// 시작 연도-월-일 
		// 종료 연도-월-일
		// 종류
		// 품종 
		// 중성화 여부 
		
		return null;
	}

}
