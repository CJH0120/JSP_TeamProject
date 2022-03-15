package com.helpPet.app.board.boardQnA.dao;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.helpPet.action.Action;
import com.helpPet.action.ActionForward;
import com.helpPet.app.board.boardQnA.vo.QnAVO;

public class QnAOk implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		QnADAO dao = new QnADAO();
		QnAVO vo  = new QnAVO();
		ActionForward af = new ActionForward();
		
		req.setCharacterEncoding("UTF-8");
	    resp.setCharacterEncoding("UTF-8");
		
		String userName = req.getParameter("userName");
		String userEmail = req.getParameter("userEmail");
		String emailSelect = req.getParameter("emailSelect");
		String userTitle = req.getParameter("userTitle");
		String userContent = req.getParameter("userContent");
		
		vo.setuserContent(userContent);
		vo.setuserEmail(userEmail +"@"+ emailSelect);
		vo.setuserName(userName);
		vo.setuserTitle(userTitle);
		
		dao.question(vo);
		
		af.setRedirect(true);
		af.setPath(req.getContextPath() + "/board/QnA.bo");
		
		return af;
	}

}
