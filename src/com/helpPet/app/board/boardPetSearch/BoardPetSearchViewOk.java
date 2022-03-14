package com.helpPet.app.board.boardPetSearch;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.helpPet.action.Action;
import com.helpPet.action.ActionForward;
import com.helpPet.app.animal.dao.AnimalDAO;
import com.helpPet.app.animal.vo.AnimalVO;

public class BoardPetSearchViewOk implements Action {

	
	
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		//  boardPetSearchList.jsp에서 관련 데이터를 가져옴
		//	boardPetSearchList.jsp animal객체(VO)를 한번에 보내려고 했지만 실패
		//	req.getParameter("animal");은 com.helpPet.app.animal.vo.AnimalVO@432d8459 같은 주소값으로 받아와짐 
		//	반복문을 다시 사용하는게 서버 부담을 더 준다고 생각(조회를 최대한 조금 사용하려고함)하여 일일이 값을 받아오려고 한다. 
		//	그러나 vo 객체의 데이터를 쿼리스트링으로 받아오는 중 특수문자 및 공백에 대한 문제가 발생하여 반복문을 사용하여 해결하려고 한다. 
		
		AnimalDAO dao = new AnimalDAO();
		ActionForward af = new ActionForward();
		
		ArrayList<AnimalVO> list = dao.getSearchPet(req.getParameter("page"));
			list.forEach(animal ->{
				if (animal.getNoticeNo().equals(req.getParameter("getNoticeNo"))) {
					System.out.println(animal.getNoticeNo());
					req.setAttribute("animal", animal);
				}
			});
		
		af.setRedirect(false);
		af.setPath("/app/jsp/board/boardPetSearchView.jsp");
			
			return af;
		
	}

}
