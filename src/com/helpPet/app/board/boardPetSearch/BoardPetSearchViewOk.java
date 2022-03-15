package com.helpPet.app.board.boardPetSearch;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
		req.setCharacterEncoding("UTF-8");
	      resp.setCharacterEncoding("UTF-8");
		AnimalDAO dao = new AnimalDAO();
		HttpSession session = req.getSession();
		ActionForward af = new ActionForward();
		
		

		/*	
	      AnimalVO animal = null;
	      
	      String age= req.getParameter("age"); // 나이 
	      String happenDt= req.getParameter("happenDt"); // 구조 일(접수 일)
	      String colorCd= req.getParameter("colorCd"); // 동물의 털색
	      String happenPlace= req.getParameter("happenPlace"); // 구조  장소 
	      String neuterYn= req.getParameter("neuterYn"); //  중성화 여부 
	      String kindCd= req.getParameter("kindCd"); // 동물 종류 
	      String noticeEdt= req.getParameter("noticeEdt"); // 공고 종료일
	      String noticeNo= req.getParameter("noticeNo"); //공고 번호
	      String popfile = req.getParameter("popfile"); // 동물 사진 큰 사진 
	      String processState= req.getParameter("processState"); // 현재 상태 
	      String sexCd= req.getParameter("sexCd"); // 동물 성별
	      String specialMark= req.getParameter("specialMark"); // 세부 사항
	      String weight= req.getParameter("weight"); // 몸무게
	      String orgNm= req.getParameter("orgNm"); // 관할 기관
	      String noticeSdt= req.getParameter("noticeSdt"); // 공고 시작일
	      String careAddr= req.getParameter("careAddr"); // 보호소 주소 
	      String careNm= req.getParameter("careNm"); // 보호중 시설 이름
	      String careTel= req.getParameter("careTel"); // 보호시설 전화번호
	      String  desertionNo = req.getParameter("desertionNo"); // 관할 기관
	      String  filename = req.getParameter("filename"); // 공고 시작일
	      String  officetel = req.getParameter("officetel"); // 보호소 주소 

	      
	      animal = new AnimalVO(age, happenDt, colorCd, happenPlace, neuterYn, kindCd, noticeEdt, noticeNo, popfile, processState, sexCd, specialMark, weight, orgNm, noticeSdt, careAddr, careNm, careTel, desertionNo, filename, officetel);
	      
	      
	      req.setAttribute("animal", animal);
*/
		
		String bgnde=req.getParameter("bgnde");
		String endde=req.getParameter("endde");
		String formOk = (String) session.getAttribute("formOk");
		if(formOk != null) {
			
			System.out.println("testssssssss");
			try {
				bgnde.replaceAll("-", "");
				endde.replaceAll("-", "");
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			 

		}
		
		
	      	ArrayList<AnimalVO> list = dao.getSearchPet(bgnde, endde,dao.getAllPetCnt()+"");
		
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
