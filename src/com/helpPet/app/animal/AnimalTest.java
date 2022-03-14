package com.helpPet.app.animal;

import java.util.ArrayList;

import com.helpPet.app.animal.dao.AnimalDAO;
import com.helpPet.app.animal.vo.AnimalVO;

public class AnimalTest {
	public static void main(String[] args) {
		AnimalDAO dao = new AnimalDAO();
		ArrayList<AnimalVO> testList = null;
//	dao.getAnimalList();
//		
//		testList = dao.getSearchPet("20220301", "20220312", "417000", "000128", "Y");
//		testList=dao.getSearchPet();
		testList.forEach(e -> System.out.println(e.getNoticeNo()));
		String uri = dao.getUrl();
		dao.getTotal(uri);

		
	}
}
