package com.helpPet.app.board.boardPetSearch;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.helpPet.action.Action;
import com.helpPet.action.ActionForward;

public class BoardPetSanctuaryMap implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		ActionForward af = new ActionForward() ;
		String careAddr =req.getParameter("careAddr");
		
		req.setAttribute("careAddr", careAddr);
		System.out.println(careAddr);
		af.setRedirect(false);
		af.setPath("/app/jsp/board/boardPetSanctuaryMap.jsp");
			
		return af;
	}

}
