package com.helpPet.app.board.boardAdoptReview.dao;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.helpPet.action.Action;
import com.helpPet.action.ActionForward;
import com.helpPet.app.board.boardAdoptReview.vo.ReviewVO;

public class AdoptReviewDetailOk implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		ActionForward af = new ActionForward();
		ReviewDAO dao = new ReviewDAO();
		ReviewVO vo = new ReviewVO();
		int reviewBoardNum = Integer.parseInt(req.getParameter("reviewBoardNum"));
				
		vo = dao.selectDetail(reviewBoardNum);
		
		req.setAttribute("review", vo);
//		req.setAttribute("review", vo.getUserId());
//		req.setAttribute("review", vo.getReviewTitle());
//		req.setAttribute("review", vo.getReviewContent());
//		req.setAttribute("review", vo.getReviewReadCount());
//		req.setAttribute("review", vo.getReviewDate());
		
		af.setRedirect(false);
		af.setPath("/app/jsp/board/boardAdoptReviewDetail.jsp");
		
		System.out.println("컨트롤러 실행");
		return af;
		
	}
	
}
