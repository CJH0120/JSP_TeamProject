package com.helpPet.app.board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.helpPet.action.ActionForward;
import com.helpPet.app.board.boardAdoptReview.dao.AdoptReviewDetailOk;
import com.helpPet.app.board.boardAdoptReview.dao.AdoptReviewList;
import com.helpPet.app.board.boardAdoptReview.dao.AdoptReviewWrite;
import com.helpPet.app.board.boardAdoptReview.dao.AdoptReviewWriteOk;
import com.helpPet.app.board.boardPetSearch.BoardPetSanctuaryMap;
import com.helpPet.app.board.boardPetSearch.BoardPetSearchList;
import com.helpPet.app.board.boardPetSearch.BoardPetSearchListOk;
import com.helpPet.app.board.boardPetSearch.BoardPetSearchReset;
import com.helpPet.app.board.boardPetSearch.BoardPetSearchViewOk;
import com.helpPet.app.board.boardQnA.dao.QnA;
import com.helpPet.app.board.boardQnA.dao.QnAOk;

import com.helpPet.app.board.boardPetSearch.SelectAnimalKind;


public class BoardFrontController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}

	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String requestURI = req.getRequestURI();
		String contextPath = req.getContextPath();
		String command = requestURI.substring(contextPath.length());
		ActionForward af = null;
		
		switch(command) {
		case "/board/boardPetSearchList.bo":
			af = new BoardPetSearchList().execute(req, resp);
			break;
		case "/board/boardPetSearchListOk.bo":
			af = new BoardPetSearchListOk().execute(req, resp);
			break;
		case "/board/boardPetSearchViewOk.bo":
			af = new BoardPetSearchViewOk().execute(req, resp);
			break;
		case "/board/boardPetSanctuaryMap.bo":
			af = new BoardPetSanctuaryMap().execute(req, resp);
			break;
		case "/board/AdoptReviewList.bo":
			af = new AdoptReviewList().execute(req, resp);
			System.out.println("AdoptReviewList()들어옴");
			break;
		case "/board/AdoptReviewDetailOk.bo":
			af = new AdoptReviewDetailOk().execute(req, resp);
			System.out.println("AdoptReviewDetailOk()들어옴");
			break;
		case "/board/AdoptReviewWrite.bo":
			af = new AdoptReviewWrite().execute(req, resp);
			System.out.println("AdoptReviewWrite()들어옴");
			break;
		case "/board/AdoptReviewWriteOk.bo":
			af = new AdoptReviewWriteOk().execute(req, resp);
			break;
		case "/board/QnA.bo":
			af = new QnA().execute(req, resp);
			break;
		case "/board/QnAOk.bo":
			af = new QnAOk().execute(req, resp);
			break;
		case "/board/selectAnimalKind.bo":
			af = new SelectAnimalKind().execute(req, resp);
			break;
		case "/board/boardPetSearchReset.bo":
			af = new BoardPetSearchReset().execute(req, resp);
			break;
		}
		
		//분기 별 결과를 af에 담았다면 여기로 내려온다.
		
		if(af != null) {// af가 null이 아니라면
			if(af.isRedirect()) {//redirect 방식이라면
				resp.sendRedirect(af.getPath());//redirect로 전송
				
			}else {//forward 방식이라면
				RequestDispatcher dispatcher = req.getRequestDispatcher(af.getPath());
				dispatcher.forward(req, resp);//forward로 전송
			}
		}
	}
}















