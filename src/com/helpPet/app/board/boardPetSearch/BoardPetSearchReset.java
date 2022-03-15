package com.helpPet.app.board.boardPetSearch;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.helpPet.action.Action;
import com.helpPet.action.ActionForward;

public class BoardPetSearchReset implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		HttpSession session = req.getSession();
		ActionForward af = new ActionForward();
		

		System.out.println("확인================");
		
		 session.removeAttribute("formOk");
		 session.removeAttribute("bgnde");
		 session.removeAttribute("endde");
		 session.removeAttribute("upKindCd"); 
		session.removeAttribute("kind_cd"); 
		 session.removeAttribute("neuterYn"); 
		af.setPath("/app/jsp/board/boardPetSearchList.jsp");
		return af;
	}

}
