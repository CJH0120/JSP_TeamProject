package com.helpPet.app.board.boardAdoptReview.dao;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.helpPet.action.Action;
import com.helpPet.action.ActionForward;
import com.helpPet.app.board.boardAdoptReview.vo.ReviewDetailVO;

public class AdoptReviewDetailOk implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		ActionForward af = new ActionForward();
		ReviewDAO dao = new ReviewDAO();
		int reviewBoardNum = Integer.parseInt(req.getParameter("reviewBoardNum"));
				
		req.setAttribute("reviewDetail", dao.selectDetail(reviewBoardNum));
		
		af.setRedirect(false);
		af.setPath("/app/jsp/board/boardAdoptReviewDetail.jsp");
		
		return af;
		
	}
	
}
