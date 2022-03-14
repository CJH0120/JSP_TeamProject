package com.helpPet.app.board.boardAdoptReview.dao;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.helpPet.action.Action;
import com.helpPet.action.ActionForward;

public class AdoptReviewWrite implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		ActionForward af = new ActionForward();
		HttpSession session = req.getSession();
		String code = "nope";
		
		String userNum = (String)session.getAttribute("userNum");
		
		if(userNum == null){
			af.setRedirect(false);
			af.setPath("/board/AdoptReviewList.bo?code=" + code);
			System.out.println("userNum 없음");
		}else {
			af.setRedirect(false);
			af.setPath("/app/jsp/board/boardAdoptReviewWrite.jsp");
			System.out.println("userNum 있음");
		}
		
		return af;
	}
	
}
