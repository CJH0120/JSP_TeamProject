package com.helpPet.app.animal.vo;

public class AnimalVO {

	// 주로 사용 
	// 동물의 정보
	private String  age; // 나이 
	private String  happenDt; // 구조 일(접수 일)
	private String  colorCd; // 동물의 털색
	private String  happenPlace; // 구조  장소 
	private String  neuterYn; //  중성화 여부 
	private String  kindCd; // 동물 종류 
	private String  noticeEdt; // 공고 종료일
	private String  noticeNo; //공고 번호
	private String  popfile; // 동물 사진 큰 사진 
	private String  processState; // 현재 상태 
	private String  sexCd; // 동물 성별
	private String  specialMark; // 세부 사항
	private String  weight; // 몸무게
	
	
	

	private String  orgNm; // 관할 기관
	private String  noticeSdt; // 공고 시작일
	// 보호소 관련 정보
	private String  careAddr; // 보호소 주소 
	private String  careNm; // 보호중 시설 이름
	private String  careTel; // 보호시설 전화번호
	

	public AnimalVO() {
	}
	public AnimalVO(String age, String happenDt, String colorCd, String happenPlace, String neuterYn, String kindCd,
			String noticeEdt, String noticeNo, String popfile, String processState, String sexCd, String specialMark,
			String weight, String orgNm, String noticeSdt, String careAddr, String careNm, String careTel,
			String desertionNo, String filename, String officetel) {
		this.age = age;
		this.happenDt = happenDt;
		this.colorCd = colorCd;
		this.happenPlace = happenPlace;
		this.neuterYn = neuterYn;
		this.kindCd = kindCd;
		this.noticeEdt = noticeEdt;
		this.noticeNo = noticeNo;
		this.popfile = popfile;
		this.processState = processState;
		this.sexCd = sexCd;
		this.specialMark = specialMark;
		this.weight = weight;
		this.orgNm = orgNm;
		this.noticeSdt = noticeSdt;
		this.careAddr = careAddr;
		this.careNm = careNm;
		this.careTel = careTel;
		this.desertionNo = desertionNo;
		this.filename = filename;
		this.officetel = officetel;
	}
	
	
	// private int  desertionNo; // 유기 번호 (공고번호 아님) 
	// 유기 번호가 0으로 시작하는 경우는 확인 되지 않았지만 만약 있을수 있으므로 주의
	// 해쉬코드 및 이퀄스 재정의시 필요하면  int로 수정
	private String  desertionNo; // 유기 번호 (공고번호 아님) 
	private String  filename; // 동물 사진 파일 uri 작은사진
	private String  officetel; // 담당자 전화번호 
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getHappenDt() {
		return happenDt;
	}
	public void setHappenDt(String happenDt) {
		this.happenDt = happenDt;
	}
	public String getColorCd() {
		return colorCd;
	}
	public void setColorCd(String colorCd) {
		this.colorCd = colorCd;
	}
	public String getHappenPlace() {
		return happenPlace;
	}
	public void setHappenPlace(String happenPlace) {
		this.happenPlace = happenPlace;
	}
	public String getNeuterYn() {
		return neuterYn;
	}
	public void setNeuterYn(String neuterYn) {
		this.neuterYn = neuterYn;
	}
	public String getKindCd() {
		return kindCd;
	}
	public void setKindCd(String kindCd) {
		this.kindCd = kindCd;
	}
	public String getNoticeEdt() {
		return noticeEdt;
	}
	public void setNoticeEdt(String noticeEdt) {
		this.noticeEdt = noticeEdt;
	}
	public String getNoticeNo() {
		return noticeNo;
	}
	public void setNoticeNo(String noticeNo) {
		this.noticeNo = noticeNo;
	}
	public String getPopfile() {
		return popfile;
	}
	public void setPopfile(String popfile) {
		this.popfile = popfile;
	}
	public String getProcessState() {
		return processState;
	}
	public void setProcessState(String processState) {
		this.processState = processState;
	}
	public String getSexCd() {
		return sexCd;
	}
	public void setSexCd(String sexCd) {
		this.sexCd = sexCd;
	}
	public String getSpecialMark() {
		return specialMark;
	}
	public void setSpecialMark(String specialMark) {
		this.specialMark = specialMark;
	}
	public String getWeight() {
		return weight;
	}
	public void setWeight(String weight) {
		this.weight = weight;
	}
	public String getCareAddr() {
		return careAddr;
	}
	public void setCareAddr(String careAddr) {
		this.careAddr = careAddr;
	}
	public String getCareNm() {
		return careNm;
	}
	public void setCareNm(String careNm) {
		this.careNm = careNm;
	}
	public String getCareTel() {
		return careTel;
	}
	public void setCareTel(String careTel) {
		this.careTel = careTel;
	}
	
	/*public int getDesertionNo() {
	return desertionNo;
	}*/
	public String getDesertionNo() {
		return desertionNo;
	}
	public void setDesertionNo(String desertionNo) {
		this.desertionNo = desertionNo;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public String getNoticeSdt() {
		return noticeSdt;
	}
	public void setNoticeSdt(String noticeSdt) {
		this.noticeSdt = noticeSdt;
	}
	public String getOfficetel() {
		return officetel;
	}
	public void setOfficetel(String officetel) {
		this.officetel = officetel;
	}
	public String getOrgNm() {
		return orgNm;
	}
	public void setOrgNm(String orgNm) {
		this.orgNm = orgNm;
	}
	
	
/*	@Override
	public String toString() {
		String result = "age=" + age + "&happenDt=" + happenDt + "&colorCd=" + colorCd + "&happenPlace="
				+ happenPlace + "&neuterYn=" + neuterYn + "&kindCd=" + kindCd + "&noticeEdt=" + noticeEdt
				+ "&noticeNo=" + noticeNo + "&popfile=" + popfile + "&processState=" + processState + "&sexCd="
				+ sexCd + "&specialMark=" + specialMark + "&weight=" + weight + "&orgNm=" + orgNm + "&careAddr="
				+ careAddr + "&careNm=" + careNm + "&careTel=" + careTel + "&desertionNo=" + desertionNo
				+ "&filename=" + filename + "&noticeSdt=" + noticeSdt + "&officetel=" + officetel;
		




		result = result.replaceAll("(", "");
		result = result.replaceAll(")", "");
		result = result.replaceAll("/", "");
		result = result.replaceAll("[", "");
		result = result.replaceAll("]", "");
		
		return result;
	}
*/

	






	// 유기 번호가 0으로 시작하는 경우는 확인 되지 않았지만 만약 있을수 있으므로 주의 
	// 이퀄스, 해쉬코드 재정의가 필요한경우 위의  desertionNo를 int타입으로 변경
//	@Override
//	public boolean equals(Object obj) {
//		if(this == obj) { return true; }
//		if(obj instanceof AnimalVO) {
//			AnimalVO animal = (AnimalVO)obj;
//			if(animal.getDesertionNo() == this.getDesertionNo()) {
//				return true;
//			}
//		}
//		return false;
//	}
//
//	@Override
//	public int hashCode() {
//		return this.getDesertionNo();
//	}



}
