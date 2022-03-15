package com.helpPet.app.board.boardPetSearch;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.helpPet.action.Action;
import com.helpPet.action.ActionForward;
import com.helpPet.app.animal.dao.AnimalDAO;

public class BoardPetSearchListOk implements Action{
	// 매퍼 요청 및 액션 포워드 등록 요쳥 해야함
	// boardPetSearchList.jsp에서 검색 버튼으로 호출됨
	// 호출시 아무 데이터도 없을때 디폴트 검색 조건 구현 필요 
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		AnimalDAO dao = new AnimalDAO();
		HttpSession session = req.getSession();
		ActionForward af = new ActionForward();
		String sessionState = req.getParameter("sessionState");	
		if(sessionState != null) {
			if(sessionState.equals("close")) {
				 session.removeAttribute("formOk");
				 session.removeAttribute("bgnde");
				 session.removeAttribute("endde");
				 session.removeAttribute("upKindCd"); 
				session.removeAttribute("kind_cd"); 
				 session.removeAttribute("neuterYn"); 
			}
		}else {
		
		
		
		String bgnde=req.getParameter("bgnde");
		String endde=req.getParameter("endde");
		String upKindCd=req.getParameter("upKindCd"); 
		String kind_cd=req.getParameter("kind_cd"); 
		String neuterYn=req.getParameter("neuterYn"); 
		String OkPage=req.getParameter("OkPage"); 
		String formOk=req.getParameter("formOk"); 
		
		
		
		
		session.setAttribute("formOk", formOk);
		session.setAttribute("bgnde", bgnde);
		session.setAttribute("endde", endde);
		session.setAttribute("upKindCd", upKindCd);
		session.setAttribute("kind_cd", kind_cd);
		session.setAttribute("neuterYn", neuterYn);
		}
		// 받아오는 검색 조건
		// 시작 연도-월-일 
		// 종료 연도-월-일
		// 종류
		// 품종 
		// 중성화 여부 
		af.setRedirect(false);
		af.setPath("/board/boardPetSearchList.bo");
		return af;
	}

}
