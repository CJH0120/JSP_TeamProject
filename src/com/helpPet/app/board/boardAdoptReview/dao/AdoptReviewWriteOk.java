package com.helpPet.app.board.boardAdoptReview.dao;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.helpPet.action.Action;
import com.helpPet.action.ActionForward;
import com.helpPet.app.board.boardAdoptReview.vo.ReviewFilesVO;
import com.helpPet.app.board.boardAdoptReview.vo.ReviewVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class AdoptReviewWriteOk implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		ReviewVO vo = new ReviewVO();
		ReviewDAO dao = new ReviewDAO();
		ReviewFilesVO fvo = new ReviewFilesVO();
		ReviewFilesDAO fdao = new ReviewFilesDAO();
		ActionForward af = new ActionForward();
		
		
		
		String uploadFolder = "D:\\aigb_0900_sjm\\jsp\\workspace\\boardMVC\\WebContent\\upload";
		int fileSize = 1024 * 1024 * 5; // 5M
		
		//요청객체, 업로드폴더 경로, 파일의 크기, 인코딩 방식, 이름변경정책
		MultipartRequest multi = new MultipartRequest(req, uploadFolder, fileSize, "UTF-8", new DefaultFileRenamePolicy());
		
		vo.setReviewTitle(multi.getParameter("reviewTitle"));
		vo.setReviewContent(multi.getParameter("reviewContent"));
		 
		//게시글 추가
		dao.insert(vo);
		
		//파일 추가
		fdao.insert(multi, dao.getSeq());
		
		af.setRedirect(true);
		af.setPath(req.getContextPath() + "/board/AdoptReviewList.bo");
		
		return af;
	}
	
}
