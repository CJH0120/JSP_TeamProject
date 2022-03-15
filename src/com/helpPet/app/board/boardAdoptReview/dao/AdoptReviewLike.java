package com.helpPet.app.board.boardAdoptReview.dao;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;

import com.helpPet.action.Action;
import com.helpPet.action.ActionForward;

public class AdoptReviewLike implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		ActionForward af = new ActionForward();
		HttpSession session = req.getSession();
		String userNum = (String)session.getAttribute("userNum");
		String code = "nope";
		
		
	
			int reviewBoardNum = Integer.parseInt(req.getParameter("reviewBoardNum"));
			
			ReviewDAO dao = new ReviewDAO();
			dao.likeUp(reviewBoardNum);

			int like = dao.getLike(reviewBoardNum);
			System.out.println("AdoptReviewLike.java의 like 개수:" + like);
			
			JSONObject obj = new JSONObject();
			obj.put("like", like);
			resp.setContentType("application/x-json; charset=UTF-8");
			resp.getWriter().print(obj);
		 

			

		
		
		
//		if(userNum == null){ //로그인이 안되어있으므로 비회원일때 좋아요 오르는지 테스트
//			dao.likeUp(reviewBoardNum); 
//			af.setRedirect(false);
//			af.setPath("/board/AdoptReviewList.bo?code=" + code);
//		}else {
//			
//			af.setRedirect(false);
//			af.setPath("/app/jsp/board/boardAdoptReviewWrite.jsp");			
//		}
//		
//		return af;
		
		return (ActionForward) resp;
	}
	
}
