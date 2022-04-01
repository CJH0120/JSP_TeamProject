package com.helpPet.app.board.boardPetSearch;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.helpPet.action.Action;
import com.helpPet.action.ActionForward;
import com.helpPet.app.animal.dao.AnimalDAO;
import com.helpPet.app.board.boardPetSearch.dao.PetSearchReplyDAO;
import com.helpPet.app.board.boardPetSearch.vo.PetSearchReplyVO;

public class BoardPetSearchReplyOk implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
	      resp.setCharacterEncoding("UTF-8");
		PetSearchReplyDAO rDao = new PetSearchReplyDAO();
		AnimalDAO aDao = new AnimalDAO();
		PetSearchReplyVO rVo = new PetSearchReplyVO();
		PrintWriter out = resp.getWriter();
		
		List<PetSearchReplyVO> rList = new ArrayList<>();
		
		int  noticeNo = Integer.parseInt(req.getParameter("noticeNo").replaceAll("-", "").substring(4));
		rList = rDao.selectReplies(noticeNo);
		JSONArray replies = new JSONArray();
		System.out.println("1들어옴");
		int cnt = 0;
		for(PetSearchReplyVO r : rList) {
			JSONObject reply = new JSONObject();
			reply.put("noticeNo", r.getNoticeNo());
			reply.put("searchReplyNum", r.getSearchReplyNum());
			reply.put("replyContent", r.getShowReplyContent());
			reply.put("replyDate", r.getShowReplyDate());
			reply.put("userId", r.getUserId());
			replies.add(reply);
			System.out.println(cnt+++"댓글수");
		}
		System.out.println("2들어옴");
		out.print(replies.toJSONString());
		out.close();
		
		
		
		return null;
	}

}
