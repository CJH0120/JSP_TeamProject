package com.helpPet.app.member;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;

import com.helpPet.action.Action;
import com.helpPet.action.ActionForward;
import com.helpPet.app.member.dao.MemberDAO;

public class MemberLoginOk  implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		HashMap<String, String> loginMap = new HashMap<>();
		MemberDAO dao = new MemberDAO();
		int userNum = 0;
		ActionForward af = new ActionForward();
		HttpSession session = req.getSession();

		loginMap.put("userId", req.getParameter("userId"));
		loginMap.put("userPw", req.getParameter("userPw"));
		
		userNum = dao.login(loginMap);
		if(userNum == 0) {//로그인 실패
			af.setRedirect(false);
			af.setPath("/member/MemberLogin.me?code=" + userNum);
		}else {//로그인 성공
			session.setAttribute("userNum", userNum);
			af.setRedirect(true);
			af.setPath(req.getContextPath() + "/board/BoardListOk.bo");
		}
		
		return af;
	}

}
