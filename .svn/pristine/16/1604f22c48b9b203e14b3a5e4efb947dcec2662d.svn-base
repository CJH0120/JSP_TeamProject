package com.helpPet.app.member;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.helpPet.action.Action;
import com.helpPet.action.ActionForward;
import com.helpPet.app.member.dao.MemberDAO;
import com.helpPet.app.member.vo.MemberVO;

public class MemberJoinOk implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		
		ActionForward af = new ActionForward();
		MemberVO member = new MemberVO();
		MemberDAO dao = new MemberDAO();
		
		
		member.setUserId(req.getParameter("userId"));
		member.setUserName(req.getParameter("userName"));
		member.setUserPw(req.getParameter("userPw"));
		member.setUserRePw(req.getParameter("userRePw"));
		member.setUserName(req.getParameter("userNickName"));
		member.setUserEmail(req.getParameter("userEmail"));
		member.setUserHandPhone(req.getParameter("userHandPhone"));
		member.setUserAnimalType(req.getParameter("userAnimalType"));
		
		dao.join(member);
		
		af.setRedirect(true);
		//redirect로 전송할 때 contextPath가 사라지기 때문에
		//미리 붙여놓고 전송한다.
		af.setPath(req.getContextPath() + "/member/MemberLogin.me");
		
		return af;
	}
}
