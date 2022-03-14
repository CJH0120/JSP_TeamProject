package com.helpPet.app.board.boardAdoptReview.dao;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.helpPet.action.Action;
import com.helpPet.action.ActionForward;
import com.helpPet.app.board.boardAdoptReview.vo.ReviewVO;

public class AdoptReviewList implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		ActionForward af = new ActionForward();
		ReviewDAO dao = new ReviewDAO();
		HashMap<String, Integer> reviewMap = new HashMap();
		
		int total = dao.getTotal();
		System.out.println("================1===============");
		String temp = req.getParameter("page");
		//사용자가 선택한 페이지가 없으면 1페이지로가고 선택한 페이지가 있으면 해당 페이지로 이동
		int page = temp == null ? 1: Integer.parseInt(temp);
		int rowCount = 8;
		int pageSize = 5;
		
		int startRow = (page - 1)*rowCount;
		
		int startPage = ((page - 1) / pageSize)* pageSize + 1;
		
		int endPage = startPage + pageSize - 1;
		
		int realEndPage = (int)Math.ceil(total / (double)rowCount);
		
		endPage = endPage < realEndPage ? realEndPage : endPage;
		
		reviewMap.put("startRow", startRow);
		reviewMap.put("rowCount", rowCount);
		
		req.setAttribute("reviewList", dao.selectAll(reviewMap));
		System.out.println(dao.selectAll(reviewMap));
		req.setAttribute("page", page);
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		req.setAttribute("realEndPage", realEndPage);
		req.setAttribute("total", total);
		
		af.setRedirect(false);
		af.setPath("/app/jsp/board/boardAdoptReview.jsp");
		
		return af;
	}
	
}
