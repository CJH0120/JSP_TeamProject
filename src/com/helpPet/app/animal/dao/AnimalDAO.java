package com.helpPet.app.animal.dao;

import java.util.ArrayList;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import com.helpPet.app.animal.vo.AnimalKindVO;
import com.helpPet.app.animal.vo.AnimalVO;

public class AnimalDAO {
	 private final String upr_cd = "6110000" ;
//	 private final static String ECNODING="y4B2P1Gm6ctNv9NBM6tUhuuAkRrkDvGMTYYgVrna%2B0tz4yDoMTKz9JaH1GJoYKcQiX774g8XZs0Wrsp5DpSoCw%3D%3D";
	 private final static String ECNODING="%2FP%2F2Sf%2F24K8WpOxNpkbqdpDm9Fs5qbnCum2Og5e3lX1JkNNXtS0lLMrRLuff3IQoaAFecCKx6yFTBeLe1JRv2w%3D%3D";
	 private final static String DECODING="y4B2P1Gm6ctNv9NBM6tUhuuAkRrkDvGMTYYgVrna+0tz4yDoMTKz9JaH1GJoYKcQiX774g8XZs0Wrsp5DpSoCw==";
//	 private final static String ECNODING="f19URb8bzBUjm6tsuU9%2B%2FgpWBGHoGVSmfn5nMzoVSGY8cH9N22%2BMDwLRIfvKCx42b2JDolm5bl23Ja1MHfQbxA%3D%3D";
//	 private final static String DECODING="f19URb8bzBUjm6tsuU9+/gpWBGHoGVSmfn5nMzoVSGY8cH9N22+MDwLRIfvKCx42b2JDolm5bl23Ja1MHfQbxA==";
	 private String url ="";
	 int count = 0;
	 
	 
	// 동물 보호 API API키 
	// API키가  Encoding, Decoding 두개 발급됨으로 둘중 사용되는 쪽을 사용


	// 동물  검색 메소드 boardPetSearchList.jsp에서 사용 
	//map.jsp에서는 축종과 성별 만으로 검색을 한다 
	

	
	
	public String getUrl() {
		return url;
	}

	public ArrayList<AnimalKindVO> getSearchPetKind(String kind) {
		// 받아오는 검색 조건
		// 시작 연도-월-일 
		// 종료 연도-월-일
		// 종류(축종)
		// 품종 
		// 중성화 여부 
		ArrayList<AnimalKindVO> datas = new ArrayList<>();
		
		
		try{
			this.url = "http://openapi.animal.go.kr/openapi/service/rest/abandonmentPublicSrvc/kind"
					+ "?serviceKey="+ECNODING
					+ "&up_kind_cd="+kind;

			
			
			DocumentBuilderFactory dbFactoty = DocumentBuilderFactory.newInstance();
			DocumentBuilder dBuilder = dbFactoty.newDocumentBuilder();
			//Parse the content of the given URI as an XML documentand return a new DOM Document object. 
			Document doc = dBuilder.parse(url);
			
			// DOM Tree가 XML 문서의 구조대로 완성될 수 있게 한다.
			doc.getDocumentElement().normalize();
			System.out.println("Root element :" + doc.getDocumentElement().getNodeName());
			
			// 파싱할 tag
			NodeList nList = doc.getElementsByTagName("item");
			System.out.println("파싱할 리스트 수 : "+ nList.getLength());
			
			datas = getNodeListValueKind(nList);
			
			
			
		} catch (Exception e){    
			e.printStackTrace();
		}   
		
		return datas;
		
	}
//	public ArrayList<AnimalVO> getSearchPet(String page) {
//		// 받아오는 검색 조건
//		// 시작 연도-월-일 
//		// 종료 연도-월-일
//		// 종류(축종)
//		// 품종 
//		// 중성화 여부 
//		ArrayList<AnimalVO> datas = new ArrayList<>();
//		
//		
//		try{
//			this.url = "http://openapi.animal.go.kr/openapi/service/rest/abandonmentPublicSrvc/abandonmentPublic"
//					+ "?serviceKey=y4B2P1Gm6ctNv9NBM6tUhuuAkRrkDvGMTYYgVrna%2B0tz4yDoMTKz9JaH1GJoYKcQiX774g8XZs0Wrsp5DpSoCw%3D%3D&upr_cd=6110000&numOfRows=12"
//					+ "&pageNo="+page;
//			
//			
//			
//			DocumentBuilderFactory dbFactoty = DocumentBuilderFactory.newInstance();
//			DocumentBuilder dBuilder = dbFactoty.newDocumentBuilder();
//			//Parse the content of the given URI as an XML documentand return a new DOM Document object. 
//			Document doc = dBuilder.parse(url);
//			
//			// DOM Tree가 XML 문서의 구조대로 완성될 수 있게 한다.
//			doc.getDocumentElement().normalize();
//			System.out.println("Root element :" + doc.getDocumentElement().getNodeName());
//			
//			// 파싱할 tag
//			NodeList nList = doc.getElementsByTagName("item");
//			System.out.println("파싱할 리스트 수 : "+ nList.getLength());
//			
//			datas = getNodeListValueAnimal(nList);
//			
//			
//			
//		} catch (Exception e){    
//			e.printStackTrace();
//		}   
//		
//		return datas;
//		
//	}
	public ArrayList<AnimalVO> getSearchPet(String bgnde, String endde , String numOfRows) {
		// 받아오는 검색 조건
		// 시작 연도-월-일 
		// 종료 연도-월-일
		// 종류(축종)
		// 품종 
		// 중성화 여부 
		ArrayList<AnimalVO> datas = new ArrayList<>();
		
		
		try{
			this.url = "http://openapi.animal.go.kr/openapi/service/rest/abandonmentPublicSrvc/abandonmentPublic";
					url += "?serviceKey="+ECNODING;
					if(bgnde != null  ) {  url += "&bgnde="+bgnde;};
					if(endde != null ) { url += "&endde="+endde;};
					url += "&upr_cd="+upr_cd;
							url += "&numOfRows="+numOfRows;
					
	
			
			DocumentBuilderFactory dbFactoty = DocumentBuilderFactory.newInstance();
			DocumentBuilder dBuilder = dbFactoty.newDocumentBuilder();
			//Parse the content of the given URI as an XML documentand return a new DOM Document object. 
			Document doc = dBuilder.parse(url);
			
			// DOM Tree가 XML 문서의 구조대로 완성될 수 있게 한다.
			doc.getDocumentElement().normalize();
			System.out.println("Root element :" + doc.getDocumentElement().getNodeName());
			
			// 파싱할 tag
			NodeList nList = doc.getElementsByTagName("item");
			System.out.println("파싱할 리스트 수 : "+ nList.getLength());
			
			datas = getNodeListValueAnimal(nList);
			
			
			
		} catch (Exception e){    
			e.printStackTrace();
		}   
		
		return datas;
		
	}
	public int getAllPetCnt() {

		int cnt = 0;
		
		try{

			this.url = "http://openapi.animal.go.kr/openapi/service/rest/abandonmentPublicSrvc/abandonmentPublic"
					+ "?serviceKey="+ECNODING
					+ "&upr_cd="+upr_cd;
			DocumentBuilderFactory dbFactoty = DocumentBuilderFactory.newInstance();
			DocumentBuilder dBuilder = dbFactoty.newDocumentBuilder();
			//Parse the content of the given URI as an XML documentand return a new DOM Document object. 
			Document doc = dBuilder.parse(url);
			
			// DOM Tree가 XML 문서의 구조대로 완성될 수 있게 한다.
			doc.getDocumentElement().normalize();
			System.out.println("Root element :" + doc.getDocumentElement().getNodeName());
			
			// 파싱할 tag
			NodeList nList = doc.getElementsByTagName("item");
		
			cnt = getTotal(getUrl());
			System.out.println(cnt+"====================");
			
			
			
			
		} catch (Exception e){    
			e.printStackTrace();
		}   
		
		return cnt;
		
	}
	
	
	public ArrayList<AnimalVO> getSearchPet(String pageNo, String numOfRows) {
		// 받아오는 검색 조건
		// 시작 연도-월-일 
		// 종료 연도-월-일
		// 종류(축종)
		// 품종 
		// 중성화 여부 
		ArrayList<AnimalVO> datas = new ArrayList<>();
		
		
		try{
			this.url = "http://openapi.animal.go.kr/openapi/service/rest/abandonmentPublicSrvc/abandonmentPublic"
					+ "?serviceKey="+ECNODING
					+ "&numOfRows="+numOfRows
					+ "&pageNo="+pageNo;
	
			
			DocumentBuilderFactory dbFactoty = DocumentBuilderFactory.newInstance();
			DocumentBuilder dBuilder = dbFactoty.newDocumentBuilder();
			//Parse the content of the given URI as an XML documentand return a new DOM Document object. 
			Document doc = dBuilder.parse(url);
			
			// DOM Tree가 XML 문서의 구조대로 완성될 수 있게 한다.
			doc.getDocumentElement().normalize();
			System.out.println("Root element :" + doc.getDocumentElement().getNodeName());
			
			// 파싱할 tag
			NodeList nList = doc.getElementsByTagName("item");
			System.out.println("파싱할 리스트 수 : "+ nList.getLength());
			
			datas = getNodeListValueAnimal(nList);
			
			
			
		} catch (Exception e){    
			e.printStackTrace();
		}   
		
		return datas;
		
	}
	
	
	public ArrayList<AnimalVO> getSearchPet(String bgnde, String endde, String upkind, String kind, String neuterYn,String pageNo, String numOfRows ) {
		// 받아오는 검색 조건
		// 시작 연도-월-일 
		// 종료 연도-월-일
		// 종류(축종)
		// 품종 
		// 중성화 여부 
		ArrayList<AnimalVO> datas = new ArrayList<>();
	
		
		try{
		this.url = "http://openapi.animal.go.kr/openapi/service/rest/abandonmentPublicSrvc/";
				   url += "abandonmentPublic";
				   url += "?serviceKey="+ECNODING;
				   url += "&upr_cd="+upr_cd;
				   if(bgnde != null  ) {  url += "&bgnde="+bgnde;}
				   if(endde != null ) { url += "&endde="+endde;}
				   if(upkind != null) {url += "&upkind="+upkind;}
				   if(kind != null) {url += "&kind="+kind;}
				   if(neuterYn != null) {url += "&neuter_yn="+neuterYn;}
				   if(numOfRows != null) { url += "&numOfRows="+numOfRows;}
				   if(pageNo != null) {url += "&pageNo="+pageNo;}
			System.out.println(url);
			DocumentBuilderFactory dbFactoty = DocumentBuilderFactory.newInstance();
			DocumentBuilder dBuilder = dbFactoty.newDocumentBuilder();
			//Parse the content of the given URI as an XML documentand return a new DOM Document object. 
			Document doc = dBuilder.parse(url);

			// DOM Tree가 XML 문서의 구조대로 완성될 수 있게 한다.
			doc.getDocumentElement().normalize();
			System.out.println("Root element :" + doc.getDocumentElement().getNodeName());

			// 파싱할 tag
			NodeList nList = doc.getElementsByTagName("item");
			System.out.println("파싱할 리스트 수 : "+ nList.getLength());

			datas = getNodeListValueAnimal(nList);
 


		} catch (Exception e){    
			e.printStackTrace();
		}   
		
		return datas;
		
		
		
		
		
		
		
		
	}
	
	// nList의 AnimalVo 데이터를 추출하여 반환하는 메소드
	public ArrayList<AnimalVO> getNodeListValueAnimal(NodeList nList ) {
		ArrayList<AnimalVO> datas = new ArrayList<>();
		for(int temp = 0; temp < nList.getLength(); temp++){
			Node nNode = nList.item(temp);
			if(nNode.getNodeType() == Node.ELEMENT_NODE){

				Element eElement = (Element)nNode;
				
				
				AnimalVO data = new AnimalVO();	
				
				data.setAge((getTagValue("age", eElement))); // 나이 
				data.setCareAddr((getTagValue("careAddr", eElement))); // 보호소 주소 
				data.setCareNm((getTagValue("careNm", eElement))); // 보호중 시설 이름
				data.setCareTel((getTagValue("careTel", eElement))); // 보호시설 전화번호
				data.setColorCd((getTagValue("colorCd", eElement))); // 동물의 털색
				data.setDesertionNo((getTagValue("desertionNo", eElement))); // 유기 번호 (공고번호 아님)
				data.setFilename((getTagValue("filename", eElement))); // 동물 사진 파일 uri 작은사진
				data.setHappenDt((getTagValue("happenDt", eElement))); // 구조 일(접수 일)
				data.setHappenPlace((getTagValue("happenPlace", eElement))); // 구조  장소 
				data.setKindCd((getTagValue("kindCd", eElement))); // 동물 종류 
				data.setNeuterYn((getTagValue("neuterYn", eElement))); //  중성화 여부 
				data.setNoticeEdt((getTagValue("noticeEdt", eElement))); // 공고 종료일
				data.setNoticeNo((getTagValue("noticeNo", eElement))); //공고 번호
				data.setNoticeSdt((getTagValue("noticeSdt", eElement))); // 공고 시작일
				data.setOfficetel((getTagValue("officetel", eElement))); // 담당자 전화번호 
				data.setOrgNm((getTagValue("orgNm", eElement))); // 관할 기관
				data.setPopfile((getTagValue("popfile", eElement))); // 동물 사진 큰 사진 
				data.setProcessState((getTagValue("processState", eElement))); // 현재 상태 
				data.setSexCd((getTagValue("sexCd", eElement))); // 동물 성별
				data.setSpecialMark((getTagValue("specialMark", eElement))); // 세부 사항
				data.setWeight((getTagValue("weight", eElement))); // 몸무게

				datas.add(data);


			}    
		}   
		
		return datas;
	}
	// nList의 AnimalVoKind 데이터를 추출하여 반환하는 메소드
	public ArrayList<AnimalKindVO> getNodeListValueKind(NodeList nList ) {
		ArrayList<AnimalKindVO> datas = new ArrayList<>();
		for(int temp = 0; temp < nList.getLength(); temp++){
			Node nNode = nList.item(temp);
			if(nNode.getNodeType() == Node.ELEMENT_NODE){
				
				Element eElement = (Element)nNode;
				
				
				AnimalKindVO data = new AnimalKindVO();	
				data.setKindCd((getTagValue("kindCd", eElement))); // 나이 
				data.setKNm((getTagValue("KNm", eElement))); // 보호소 주소 
				
				datas.add(data);
				
			}    
		}   
		
		return datas;
	}
	

	// 요청 uri의 동물 전체 개수 
	
	
	public int getTotal(String url) {

		int total = 0;

		try{


			DocumentBuilderFactory dbFactoty = DocumentBuilderFactory.newInstance();
			DocumentBuilder dBuilder = dbFactoty.newDocumentBuilder();
			//Parse the content of the given URI as an XML documentand return a new DOM Document object. 
			Document doc = dBuilder.parse(url);
		
			// DOM Tree가 XML 문서의 구조대로 완성될 수 있게 한다.
			doc.getDocumentElement().normalize();
			System.out.println("Root element :" + doc.getDocumentElement().getNodeName());

			// 파싱할 tag
			NodeList nList = doc.getElementsByTagName("body");
			System.out.println("파싱할 리스트 수 : "+ nList.getLength());


		
				Node nNode = nList.item(0);
				if(nNode.getNodeType() == Node.ELEMENT_NODE){

					Element eElement = (Element)nNode;
					System.out.println((getTagValue("totalCount", eElement))); 
					total = Integer.parseInt(getTagValue("totalCount", eElement)); 
				}

		 


		} catch (Exception e){    
			e.printStackTrace();
		}   

			
			return total;
	}


	// 테스트를 위한 메소드
	public static void getAnimalList() {



		try{
			String url = "http://openapi.animal.go.kr/openapi/service/rest/abandonmentPublicSrvc/"+
					"abandonmentPublic"+
					"?serviceKey="+ECNODING+
					"&bgnde=20220127&endde=20220301&state=null&pageNo=1&numOfRows=10&neuter_yn=Y";

			DocumentBuilderFactory dbFactoty = DocumentBuilderFactory.newInstance();
			DocumentBuilder dBuilder = dbFactoty.newDocumentBuilder();
			//Parse the content of the given URI as an XML documentand return a new DOM Document object. 
			Document doc = dBuilder.parse(url);

			// DOM Tree가 XML 문서의 구조대로 완성될 수 있게 한다.
			doc.getDocumentElement().normalize();
			System.out.println("Root element :" + doc.getDocumentElement().getNodeName());

			// 파싱할 tag
			NodeList nList = doc.getElementsByTagName("item");
			System.out.println("파싱할 리스트 수 : "+ nList.getLength());


			for(int temp = 0; temp < nList.getLength(); temp++){
				Node nNode = nList.item(temp);
				if(nNode.getNodeType() == Node.ELEMENT_NODE){

					Element eElement = (Element)nNode;
					System.out.println();
					System.out.println("======"+(temp +1)+"번째 동물==========");
					System.out.println("나이    "+(getTagValue("age", eElement))); // 나이 
					System.out.println("보호소 주소     "+(getTagValue("careAddr", eElement))); // 보호소 주소 
					System.out.println("보호중 시설 이름    "+(getTagValue("careNm", eElement))); // 보호중 시설 이름
					System.out.println("보호시설 전화번호    "+(getTagValue("careTel", eElement))); // 보호시설 전화번호
					/* System.out.println((getTagValue("chargeNm", eElement)));*/ 
					System.out.println("동물의 털색    "+(getTagValue("colorCd", eElement))); // 동물의 털색
					System.out.println("유기 번호 (공고번호 아님)    "+(getTagValue("desertionNo", eElement))); // 유기 번호 (공고번호 아님)
					System.out.println("동물 사진 파일 uri 작은사진    "+(getTagValue("filename", eElement))); // 동물 사진 파일 uri 작은사진
					System.out.println("구조 일    "+(getTagValue("happenDt", eElement))); // 구조 일(접수 일)
					System.out.println("구조  장소   "+(getTagValue("happenPlace", eElement))); // 구조  장소 
					System.out.println("동물 종류     "+(getTagValue("kindCd", eElement))); // 동물 종류 
					System.out.println("중성화 여부    "+(getTagValue("neuterYn", eElement))); //  중성화 여부 
					System.out.println("공고 종료일   "+(getTagValue("noticeEdt", eElement))); // 공고 종료일
					System.out.println("공고 번호   "+(getTagValue("noticeNo", eElement))); //공고 번호
					System.out.println("공고 시작일    "+(getTagValue("noticeSdt", eElement))); // 공고 시작일
					System.out.println("보호소 전화번호    "+(getTagValue("officetel", eElement))); // 담당자 전화번호 
					System.out.println("관할 기관    "+(getTagValue("orgNm", eElement))); // 관할 기관
					System.out.println("동물 사진 큰 사진 "+(getTagValue("popfile", eElement))); // 동물 사진 큰 사진 
					System.out.println("현재 상태    "+(getTagValue("processState", eElement))); // 현재 상태 
					System.out.println("동물 성별    "+(getTagValue("sexCd", eElement))); // 동물 성별
					System.out.println("세부 사항    "+(getTagValue("specialMark", eElement))); // 세부 사항
					System.out.println(" 몸무게  "+(getTagValue("weight", eElement))); // 몸무게
					System.out.println("=================================");




				}    
			}    


		} catch (Exception e){    
			e.printStackTrace();
		}   



	} 



	// tag값의 정보를 가져오는 메소드
	public static String getTagValue(String tag, Element eElement) {
		NodeList nlList =  eElement.getElementsByTagName(tag).item(0).getChildNodes();
		Node nValue = (Node) nlList.item(0);
		if(nValue == null) {
			return null;
		}    
		return nValue.getNodeValue();
	}

}
