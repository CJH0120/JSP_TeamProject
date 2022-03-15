package com.helpPet.app.board.boardQnA.dao;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.helpPet.action.Action;
import com.helpPet.action.ActionForward;

public class QnA implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		ActionForward af = new ActionForward();
		
		af.setRedirect(false);
		af.setPath("/app/jsp/board/boardQnA.jsp");
		
		req.setCharacterEncoding("UTF-8");
	    resp.setCharacterEncoding("UTF-8");
		
		return af;
	}
	
}
