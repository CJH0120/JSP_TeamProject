package com.helpPet.app.member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.helpPet.action.Action;
import com.helpPet.action.ActionForward;
import com.helpPet.app.member.dao.MemberDAO;

public class MemberCheckNickOk implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		String userNick = req.getParameter("userNickN");
		MemberDAO dao = new MemberDAO();
		PrintWriter out = resp.getWriter();
		JSONObject obj = new JSONObject();
		
		if(dao.checkNick(userNick)) {
			
			obj.put("status", "not-ok");
		}else {
			//사용 가능한 아이디일 때
//			out.print("ok");
		
			obj.put("status", "ok");
		}
		
		out.print(obj.toJSONString());
		out.close();
		
		return null;
	}

}
