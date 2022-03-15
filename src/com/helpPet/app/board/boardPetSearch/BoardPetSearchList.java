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

public class BoardPetSearchList implements Action{
	//  매퍼 요청 및 액션 포워드 등록 요쳥 해야함
	// boardPetSerachList.jsp이동시 사용됨
	// 페이지 이동시 화면에 노출된 디폴트 데이터의 기준 필요 
	// 1. 모든 조건의 동물을 가져오는것은 힘들다 (트래픽 한계 및 서버안정성)
	// 2. 최근 한달동안의 전체 유기동물데이터를 가져온다.
	// 3. 2번은 검색 버튼이 데이터가 없을때도도 마찬가지 -> BoardPetSearchListOk에서 처리

	
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		// TODO Auto-generated method stub
		
		// 서울시 전체 동물의 수로 동물  uri 요청
		// 12마리가 1페이지
		// http://openapi.animal.go.kr/openapi/service/rest/abandonmentPublicSrvc/abandonmentPublic?serviceKey=y4B2P1Gm6ctNv9NBM6tUhuuAkRrkDvGMTYYgVrna%2B0tz4yDoMTKz9JaH1GJoYKcQiX774g8XZs0Wrsp5DpSoCw%3D%3D&upr_cd=6110000&pageNo=1&numOfRows=12
		// uri 결과값으로 페이징 처리에 사용할 현재 페이지, 데이터의 총 개수를 가져옴 
		
		// 요청한  uri의 값을 리스트로 받아옴
		// 페이징 처리
		// 페이지로 값을 전달 
		
		AnimalDAO dao = new AnimalDAO();
		ArrayList<AnimalVO> animalList = null;
		ActionForward af = new ActionForward();
		HttpSession session = req.getSession();


		
		String formOk = (String) session.getAttribute("formOk");
		String bgnde=(String) session.getAttribute("bgnde");
		String endde=(String) session.getAttribute("endde");
		String upKindCd=(String) session.getAttribute("upKindCd"); 
		String kind_cd=(String) session.getAttribute("kind_cd"); 
		String neuterYn=(String) session.getAttribute("neuterYn"); 
		
		System.out.println("list.java");
		System.out.println("formOk"+formOk);
		System.out.println("bgnde"+bgnde);
		System.out.println("endde"+endde);
		System.out.println("upKindCd"+upKindCd);
		System.out.println("kind_cd"+kind_cd);
		System.out.println("neuterYn"+neuterYn);
		
		
		

		// ok 에서 데이터를 받아왔다면 에 대한 처리 

		//사용자가 요청한 페이지
		String temp = req.getParameter("page");			
				
		//한 페이지에 출력되는 게시글의 개수
		int rowCount = 12;
		//한 화면에 나오는 페이지 번호 수
		int pageSize = 10;
		if(formOk != null) {

			bgnde.replaceAll("-", "");
			endde.replaceAll("-", "");
			System.out.println(upKindCd+"|"+kind_cd+"|"+neuterYn);
		
			upKindCd = upKindCd.equals("종류") ? null: upKindCd; 
			kind_cd = kind_cd.equals("품종") ? null: kind_cd.equals("선택안함") ? null:kind_cd; 
//			kind_cd = kind_cd.equals("선택안함") ? null: kind_cd; 
			neuterYn = neuterYn.equals("중성화여부") ? null: neuterYn; 
		}
			
		animalList=dao.getSearchPet(bgnde, endde, upKindCd, kind_cd, neuterYn, temp, rowCount+"");
		
		
		
		
		
		String uri = dao.getUrl();
		//전체 게시글 개수
		int total = dao.getTotal(uri); // 전체 데이터수 
	
		//사용자가 요청한 페이지가 null이면 1페이지를,
		//null이 아니면 요청한 페이지를 page에 담아준다.
		int page = temp == null ? 1 : Integer.parseInt(temp);	

		
		//화면에 출력되는 페이지 번호 중
		//시작 페이지(1, 11, 21, ....)
		int startPage = ((page - 1) / pageSize) * pageSize + 1;
							
		//끝 페이지(10, 20, 30, ...)
		int endPage = startPage + pageSize - 1;
		//실제 마지막 게시글이 출력되는 마지막 페이지 번호
		int realEndPage = (int)Math.ceil(total / (double)rowCount);
		
		//만약 화면에서의 마지막 페이지가 실제 마지막 페이지보다 크다면,
		//실제 마지막 페이지를 endPage에 담아준다.
		//endPage는 항상 10단위로 끝나기 때문에, 14페이지가 마지막 페이지일 경우
		//14페이지를 endPage에 담아준다. 
		endPage = endPage > realEndPage ? realEndPage : endPage;
		//DB에서 필요한 데이터를 Map에 담는다.

		
		//시작 인덱스와, 개수를 전달하여 게시글 목록을 가져온 뒤 requestScope에 담아준다.
//		req.setAttribute("boardList", boardDTO_list);
		//현재 페이지를 requestScope에 담아준다.
		req.setAttribute("page", page);
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		req.setAttribute("realEndPage", realEndPage);
		req.setAttribute("total", total);
		
		
	
		req.setAttribute("animalList", animalList);
		
		af.setRedirect(false); // 리다이렉트면 정보를 날리고 포워드면 정보를 살려서 
		af.setPath("/app/jsp/board/boardPetSearchList.jsp");
		
		return af;
	}

}
