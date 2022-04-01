package com.helpPet.app.board.boardPetSearch;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.helpPet.action.Action;
import com.helpPet.action.ActionForward;
import com.helpPet.app.board.boardPetSearch.dao.PetSearchReplyDAO;

public class BoardDeleteReplyOk implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		PetSearchReplyDAO dao = new PetSearchReplyDAO();
		int searchReplyNum = Integer.parseInt(req.getParameter("searchReplyNum"));
		
		dao.deleteReply(searchReplyNum);
		
		return null;
	}
	
}
