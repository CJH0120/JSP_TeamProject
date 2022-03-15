package com.helpPet.app.board.boardPetSearch;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.helpPet.action.Action;
import com.helpPet.action.ActionForward;
import com.helpPet.app.animal.dao.AnimalDAO;
import com.helpPet.app.animal.vo.AnimalKindVO;

public class SelectAnimalKind implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		AnimalDAO dao = new AnimalDAO();
		AnimalKindVO vo = new AnimalKindVO();
		PrintWriter out = resp.getWriter();
		
		String upKindCd = req.getParameter("upKindCd");
//		System.out.println("test"+upKindCd);
		
		
		ArrayList<AnimalKindVO> list = dao.getSearchPetKind(upKindCd);

//		list.forEach(e -> System.out.println(e.getKNm()));
		
		
		JSONArray kindDatas = new JSONArray();
		int cnt = 0;
		for(AnimalKindVO k : list) {
			JSONObject kindData = new JSONObject();
			kindData.put("kindCd", k.getKindCd());
			kindData.put("kNm", k.getKNm());
		

			kindDatas.add(kindData);
		}
		
		out.print(kindDatas.toJSONString());
		out.close();
		
		return null;
		
	}

}
