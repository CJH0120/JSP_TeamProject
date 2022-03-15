<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>



<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<style>
@import url("fonts.googleapis.com/earlyaccess/notosanskr.css");

@font-face {
	font-family: 'GmarketSansMedium';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

html, body {
	display: block;
	width: 100%;
	height: 100%;
	margin: 0;
	padding: 0;
}

html::-webkit-scrollbar {
	display: none; /* Chrome, Safari, Opera*/
}

/*         #psvContentWrap {
            width: 1160px;
            height: auto;
            margin: 225px auto 0;
        } */
.detailConent {
	width: 100%;
	font-family: 'Noto Sans KR', sans-serif;
}

.detailTop {
	width: 100%;
	margin-bottom: 10%;
}

.detailTop h1 {
	font-size: 36px;
	text-align: center;
	color: #ffb300;
}

hr#psvHr {
	width: 100%;
	height: 2px;
	background-color: #E2E2E2;
	border: none;
	margin-top: 1%;
}

.detailMain {
	width: 100%;
	height: auto;
}

.scrollSection {
	width: 100%;
	height: 100%;
	position: relative;
}

#noticeDetail b {
	width: 105px;
	display: inline-block;
}

#noticeDetail li {
	line-height: 31px;
}

#noticeDetail li::marker {
	color: #ffb300;
	font-size: 0.8rem;
}

.datilImgContianer {
	width: 100%;
	height: 100%%;
	position: relative;
	overflow: hidden;
	color: white;
}

.datilImgContianer .datilImg img {
	width: 100%;
	height: 100%;
}
/* 이미지 배너를 위한 div */
#dtimgWharp {
	width: 3480px;
	transition: transform 0.5s;
}

.datilImg {
	width: 1160px;
	height: 616px;
	float: left;
	/*  background: rgba(255,255,255,0); */
	background: white;
}

.subText {
	display: flex;
	align-items: center;
	gap: 15px;
	margin-bottom: 10px;
	margin-right: 4%;
}

.subText div {
	width: 115px;
	height: 40px;
	border-radius: 120px;
	border: 2px solid #82CBC4;
	color: #ffb300;
	line-height: 38px;
	text-align: center;
	font-size: 17px;
	font-weight: 600;
}

.toSearchList {
	width: 200px;
	height: 60px;
	background-color: #ffb300;
	color: white;
	margin: 50px auto 75px;
	display: block;
	border-radius: 30px;
	font-size: 18px;
	font-weight: 800;
	transition: .3s;
	border: none;
	cursor: pointer;
}

#dtImgTop {
	position: absolute;
	bottom: 0px;
	width: 100%;
	height: 9%;
	/*  background:linear-gradient(180deg, black   ,transparent); */
	background: rgba(255, 255, 255, 0.4);
}

#psReplyWriteForm input {
	cursor: pointer;
}

.dtArrowWharp {
	height: 100%;
	/* border: 1px solid white; */
	width: 5%;
	position: absolute;
	opacity: 60%;
	top: 0;
	display: flex;
	align-items: center;
	color: black;
	font-size: 55px;
	cursor: pointer;
}

#dTRight {
	left: 0;
}

#dTLeft {
	right: 0;
}

#dta_right {
	left: 0;
}

#dta_left {
	right: 0;
}

.datilImg img {
	width: 100%;
	object-fit: cover;
}

#imgInNotifiNumber {
	position: absolute;
	right: 20%;
	top: 22px;
	color: black;
	opacity: 0.8;
}

#dTstatusImg, #dTgenImgDiv {
	position: absolute;
	width: 48px;
	height: 48px;
}

#dTstatusImg {
	left: 67px;
	top: 5px;
}

#dTgenImgDiv {
	left: 115px;
	top: 5px;
}

.infoText {
	position: absolute;
	width: 300px;
	height: 75px;
	background: white;
	border: 1px solid #333;
	border-radius: 5%;
	padding: 12px;
	top: -105px;
	left: 11px;
	color: #333;
	line-height: 5px;
	z-index: 999;
	display: none;
}

.infoText p {
	font-size: 14px;
	line-height: 15px;
}



.spanPos {
	background: rgba(135, 206, 235, 0.8);
}

.spanNag {
	background: rgba(255, 51, 153, 0.8);
}

.dtInfo {
	position: absolute;
	top: 5px;
	left: 173px;
	color: black;
}
/*             #mapWrap{
                margin-top: 25%;
            } */
#mapWrap, #notofiDate {
	font-size: 26px;
}

#mapWrap {
	width: 100%;
}

#notofiDate {
	display: flex;
	align-items: center;
	justify-content: center;
}

}
#notiFiWrap {
	/* margin-top: 25%; */
	width: 100%;
	height: auto;
}

#notiFiDateWrap {
	display: flex;
	justify-content: space-around;
	margin-bottom: 5%;
	align-items: center;
}

}
.notiFiDate {
	font-size: 52px;
	background: blanchedalmond;
	width: auto;
	height: 70px;
}

#notofiDate div {
	width: 100%;
	height: 50%;
	border-top: 3px solid #82CBC4;
	border-bottom: 3px solid #82CBC4;
	font-family: GmarketSansMedium;
	font-size: 71px;
	text-align: center;
}

.subTextWhrap {
	margin-bottom: 12%;
	font-weight: bold;
	margin-left: 7%;
}

#petSanctuary {
	width: 100%;
	/*     margin-top: 40%; */
}

#petSanctuary .petSanctuaryWrap {
	width: 100%;
	display: flex;
	align-items: center;
	justify-content: center;
	gap: 3%;
}

#petSanctuary .petSanctuaryWrap .petSanctuaryImg {
	width: 20%;
}

.petSanctuaryImg img {
	width: 100%;
	object-fit: cover;
	height: 100%;
}

.petSanctuaryInfo {
	font-size: 22px;
}

.petSanctuaryInfo a {
	cursor: pointer;
	text-decoration-line: underline;
	font-size: 12px;
	color: #036FB8;
}

#petSearchViewReply {
	font-family: GmarketSansMedium;
	height: auto;
	/* background-color: #EEC0DB; */
	width: 100%;
	padding-bottom: 6%;
	padding-top: 3%;
	/* margin: 0 auto 10%; */
	/* border-radius: 30px; */
	border-top: 3px solid #EEC0DB;
}

.petSearchViewReplyWrap {
	margin-bottom: 3%;
	width: 100%;
	padding-bottom: 3%;
}

.psReply {
	border-bottom: 1px solid black;
	margin-bottom: 1%;
	width: 100%;
	padding-bottom: 1%;
	display: flex;
}

.psReplyTitle {
	width: 20%;
}

.psReplyText {
	width: 60%;
}

.psReplyBtn {
	width: 20%;
	font-family: GmarketSansMedium;
}

.psReplyWriteWrap {
	width: 100%;
	margin: 0 3% 0 3%;
}

#psReplyWriteForm {
	display: flex;
	gap: 1%;
	font-family: GmarketSansMedium;
}

#psReplyWriteForm textarea {
	width: 76%;
	font-family: GmarketSansMedium;
	border-radius: 30px;
	padding: 10px;
}

#psReplyWriteForm textarea:focus {
	outline: none;
}

#psReplyWriteForm input {
	width: 13%;
	font-family: GmarketSansMedium;
	border-radius: 30px;
	border: none;
}

.psReplyDate {
	font-size: 12px;
}

.psReplyBtn button {
	width: 48%;
	height: 100%;
	border-radius: 30px;
	border: none;
	font-family: GmarketSansMedium;
}

.timeFont {
	font-size: 40px;
}

.js-clock {
	color: red;
}

.psPoint {
	color: #036FB8;
}

.dateInner {
	width: 38%;
}

.innerWidth {
	width: 1160px;
	position: absolute;
	bottom: 0%;
	left: 19.5%;
}

@font-face {
	font-family: 'SuncheonB';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2202-2@1.0/SuncheonB.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

#scrollSection1, #scrollSection2, #scrollSection3, #scrollSection4,
	#scrollSection5 {
	font-family: 'SuncheonB';
}

#scrollSection1 {
	background-color: #ffffff;
	margin: 0 auto;
}

#scrollSection1 .innerWidth {
	background-color: #ffffff;
	margin: 0 auto;
	top: 31%;
}

#scrollSection1 .innerCenter {
	top: 19%;
}

#scrollSection2 .innerCenter {
	top: 20%;
}

#scrollSection1 h1 {
	font-size: 40px;
	margin: 0px;
	font-weight: bold;
	color: #036FB8;
}

#scrollSection2 h1 {
	font-size: 40px;
	margin: 0px;
	font-weight: bold;
}

.scrollSection .innerCenter {
	color: black;
}

.scrollSection .innerCenter  p {
	margin: 5px 0 5px;
	font-size: 24px;
	font-weight: bold;
}

#scrollSection2 {
	background-color: #ffffff;
}

#scrollSection2 .innerWidth {
	bottom: 8%;
	left: 19.5%;
}

#scrollSection3 {
	background-color: #ffffff;
}

#scrollSection3 .innerWidth {
	top: 35%;
}

#scrollSection3 .innerCenter {
	top: 13%;
}

#scrollSection4 .innerCenter {
	top: 27%;
}

#scrollSection3 .innerCenter h1, #scrollSection4 .innerCenter h1 {
	font-size: 50px;
}

#scrollSection4 {
	background-color: #ffffff;
}

#scrollSection4 .innerWidth {
	top: 50%;
}

#scrollSection5 .innerWidth {
	top: 75px;
}

.innerCenter {
	position: absolute;
	left: 22.5%;
}

.psReplyImg {
	width: 20%;
	display: flex;
	justify-content: flex-end;
}

.psReplyImg div {
	width: 28px;
	height: 28px;
	cursor: pointer;
}

.psReplyImg div img {
	width: 100%;
}
/* 페이징처리 css 시작*/
.under_num {
	margin-top: 20px;
	text-align: center;
	font-size: 0;
}

.under_num a {
	display: inline-block;
	margin-left: 10px;
	padding: 5px 10px;
	border-radius: 100px;
	font-size: 12px;
}

.under_num a:first-child {
	margin-left: 0;
}

.under_num a.bt {
	border: 1px solid #eee;
	background: #eee;
}

.under_num a.num {
	border: 1px solid #EEC0DB;
	font-weight: 600;
	color: #EEC0DB;
}

.under_num a.num.on {
	background: #EEC0DB;
	color: white;
}
/* 페이징처리 css종료*/
#imgBannerPointerWrap {
	width: 24px;
	height: 250px;
	position: fixed;
	left: 5%;
	z-index: 9999;
	top: 50%;
}

#imgBannerPointerWrap img {
	width: 24px;
	height: 24px;
	margin-bottom: 100%;
}

.pointerImg {
	cursor: pointer;
}

.psReplyWriteImg {
	padding-top: 1%;
}

div.psReplyWriteImg img {
	width: 85%;
}
</style>
</head>

<body>
	<c:set var="animal" value="${animal}" />
	<!-- 헤더 영역 -->
	<%@ include file="../fix/header.jsp"%>
	<span id="noticeEdt" style="position: absolute; top: -9999px;">
			<fmt:parseDate value="${animal.getNoticeEdt()}" var="dateValue" pattern="yyyyMMdd"/>
			<fmt:formatDate value="${dateValue}" pattern="yyyy-MM-dd"/>
	</span> 
	

	<!--content 시작-->


	<!--         <div class="detailConent">
            <div class="detailTop">
                <h1>보호동물공고</h1>
            </div> -->
	<div id="imgBannerPointerWrap">
		<div id="imgBannerPointer1" class="pointerImg">
			<img
				src="https://cdn.discordapp.com/attachments/947836644889870356/950401078346776616/bannerRol.png">
		</div>
		<div id="imgBannerPointer2" class="pointerImg">
			<img
				src="https://cdn.discordapp.com/attachments/947836644889870356/950401078346776616/bannerRol.png">
		</div>
		<div id="imgBannerPointer3" class="pointerImg">
			<img
				src="https://cdn.discordapp.com/attachments/947836644889870356/950401078346776616/bannerRol.png">
		</div>
		<div id="imgBannerPointer4" class="pointerImg">
			<img
				src="https://cdn.discordapp.com/attachments/947836644889870356/950401078346776616/bannerRol.png">
		</div>
		<div id="imgBannerPointer5" class="pointerImg">
			<img
				src="https://cdn.discordapp.com/attachments/947836644889870356/950401078346776616/bannerRol.png">
		</div>
	</div>


	<div class="scrollSection" id="scrollSection1">

		<div class="innerCenter">
			<h1>동물보호 공고</h1>
			<p>손쉽게 유기 동물의 정보를 확인해 보세요!</p>
		</div>
		<div class="innerWidth">
			<div class="datilImgContianer">
				<div id="dtimgWharp">
					<div class="datilImg">
						<img
							src="${animal.getPopfile()}">
					</div>
					<div class="datilImg">
						<img
							src="https://cdn.discordapp.com/attachments/485361381575622676/949211335911157850/0E4A9590.jpg">
					</div>
					<div class="datilImg">
						<img
							src="http://www.animal.go.kr/files/shelter/2022/01/202202111502734.jpg">
					</div>
				</div>
				<div id="dtImgTop">
					<div id="imgInNotifiNumber">
						<span>${animal.getKindCd()} · ${animal.getAge()} · ${animal.getColorCd()} · ${animal.getWeight()}</span>&nbsp;&nbsp;<b>|</b>&nbsp;&nbsp;
						<b>공고번호</b> · <span>${animal.getNoticeNo()}</span>
					</div>
					<div id="dTstatusImg" class="">
						<!-- 동물 상태에 따른 분기처리를 class를 부여하거나 js에서 해결(api사용하며해결)-->
									<c:choose>
										<c:when test="${fn:contains(animal.getProcessState(), '보호중')}">
											<img
												src="https://cdn.discordapp.com/attachments/947836644889870356/950366365259284490/check_icon.png">
										</c:when>
										<c:when test="${fn:contains(animal.getProcessState(), '공고중')}">
											<img
												src="https://cdn.discordapp.com/attachments/947836644889870356/950366365439627264/x_icon.png">
										</c:when>
										<c:otherwise>
											<img
												src="https://cdn.discordapp.com/attachments/947836644889870356/950366365439627264/x_icon.png">
										</c:otherwise>
									</c:choose>
					</div>
					<div id="dTgenImgDiv">
						<c:choose>
							<c:when test="${animal.getSexCd() eq 'M'}">
								<img src="https://cdn.discordapp.com/attachments/947836644889870356/950368518442983424/male_icon.png">
							
							</c:when>
							<c:when test="${animal.getSexCd() eq 'F'}">
								<img src="https://cdn.discordapp.com/attachments/947836644889870356/950368518245863434/female_icon.png">
							</c:when>
							<c:otherwise>
								미상
							</c:otherwise>
							</c:choose>
					</div>

					<c:choose>
						<c:when test="${fn:contains(animal.getProcessState(), '보호중')}">
							<!-- 보호중인 동물 이벤트 div -->
							<div class="infoTextProtect infoText">
								<h3>
									<span class="spanPos">보호중인 동물</span>
								</h3>
								<p>
									<i>보호중인 동물로 현재 입양 가능한 상태입니다.</i>
								</p>
							</div>							
						</c:when>
						<c:when test="${fn:contains(animal.getProcessState(), '공고중')}">
					<!-- 공고중인 동물 이벤트 div -->
							<div class="infoTextNotifi infoText">
								<h3>
									<span class="spanPos">공고중인 동물</span>
								</h3>
								<p>
									<i>공고중인 동물로 구조일로 부터 10일 이후에 입양 가능합니다.</i>
								</p>
							</div>
						</c:when>
						<c:otherwise>
							<div class="infoTextFinish infoText">
								<h3>
									<span class="spanNag">보호종료</span>
								</h3>
								<p>
									<i>특정이유(반환, 안락사등)로 보호가 종료된 동물입니다.</i>
								</p>
							</div>						
						</c:otherwise>
					</c:choose>					



					<!--                              <div class="dtInfo">
                                 <p>[개] 믹스견 · 2022(년생) · 흰색 · 3.5(Kg)</p>
                             </div> -->
				</div>
				<div class="dtArrowWharp" id="dTRight">
					<div class="deTailImgArrow" id="dta_right">
						&#10094;&#10094;
						<!-- <img src="https://cdn.discordapp.com/attachments/947836644889870356/949275166301630494/arrow_LeftG_icon.png"> -->
					</div>
				</div>
				<div class="dtArrowWharp" id="dTLeft">
					<div class="deTailImgArrow" id="dta_left">
						&#10095;&#10095;
						<!--  <img src="https://cdn.discordapp.com/attachments/947836644889870356/949274812432396298/arrow_rightG_icon.png"> -->
					</div>
				</div>
			</div>
			<!-- 미리보기 창 구현 구간 -->
		</div>
	</div>



	<div class="scrollSection" id="scrollSection2">
		<div class="innerCenter">
			<h1>
				<span class="psPoint">${animal.getHappenPlace()}</span> 위치에서 발견되었습니다.
			</h1>
			<p>지도를 통해 자세한 발견 장소를 확인해 보세요!</p>

		</div>

		<div class="innerWidth">

			<div id="mapWrap">
				<p id="noMap" style="display: none;  color: red; position: absolute;
    top: -381px; ">
					등록된 주소의 정확한 위치를 찾을수 없습니다.
				</p>
				<div id="map" style="width: 100%; height: 550px;">
				</div>

			</div>
		</div>
	</div>

	<div class="scrollSection" id="scrollSection3">
		<div class="innerCenter">
			<h1>
				<span class="psPoint">보호자를 찾아주세요!</span>
			</h1>
		</div>
		<div class="innerWidth">
			<div id="notiFiWrap">


				<div id="notiFiDateWrap">
					<div>
						<img
							src='https://cdn.discordapp.com/attachments/485361381575622676/949318608192933938/notifiImg.png'>
					</div>
					<div class="dateInner">
						<div>
							<b>남은 공고 기간</b>
						</div>
						<div id="notofiDate">

							<div class="js-clock">
								<span ></span>
							</div>

						</div>

					</div>

				</div>

			</div>


			<div class="subTextWhrap">
				<div class="subText">
					<div>중성화여부</div>
					<!-- 추후에 이미지로 변경  -->
					<c:choose>
						<c:when test="${animal.getNeuterYn() eq 'Y'}">
							<span>O</span>
						</c:when>
						<c:when test="${animal.getNeuterYn() eq 'N'}">
							<span>X</span>
						</c:when>
						<c:otherwise>
							<span>미상</span>
						</c:otherwise>
					</c:choose>
				</div>
				<div class="subText">
					<div>기타사항</div>
					<span>${animal.getSpecialMark()}</span>
				</div>
				<div class="subText">
					<div>구조일</div>
					<span id="happenDt">
					<fmt:parseDate value="${animal.getNoticeSdt()}" var="dateValue" pattern="yyyyMMdd"/>
					<fmt:formatDate value="${dateValue}" pattern="yyyy-MM-dd"/>
					</span> 

				</div>
			</div>
		</div>
	</div>


	<div class="scrollSection" id="scrollSection4">
		<div class="innerCenter">
			<h1>
				<span class="psPoint">보호소 안내</span>
			</h1>
			<p>현재 동물을 보호하고 있는 보호소를 안내해 드립니다.</p>
		</div>
		<div class="innerWidth">
			<div id="petSanctuary">
				<div class="petSanctuaryWrap">
					<div class="petSanctuaryImg">
						<img src="https://www.karma.or.kr/images_new/common/logo.jpg">
					</div>
					<div class="petSanctuaryInfo">
						<p>
							${animal.getCareNm()} | <span id="careAddr">${animal.getCareAddr()}</span>
							<a onclick="window.open('${pageContext.request.contextPath}/board/boardPetSanctuaryMap.bo?careAddr=${animal.getCareAddr()}', '_blank', 'width=790px, height=540px')">[위치보기]</a>
						</p>
						<p>${animal.getCareTel()} | 보호중 15 | 입양완료 7</p>
					</div>
				</div>
			</div>

			<!--                       
                <br>

             
                <hr id="psvHr"> -->

			<button class="toSearchList"
				onclick="location.href='${pageContext.request.contextPath}/board/boardPetSearchList.bo';">목록으로</button>
		</div>
	</div>


	<!-- 댓글 구현 구간 -->
	<div class="scrollSection" id="scrollSection5">
		<div class="innerWidth">
			<div id="petSearchViewReply">

				<div class="petSearchViewReplyWrap">
					<div class="psReply">
						<div class="psReplyTitle">
							<div class="psReplyMember">버찌집사</div>
							<div class="psReplyDate">2022.12.02 14:52</div>
						</div>
						<div class="psReplyText">너무 귀엽네요!!</div>
						<div class="psReplyImg">
							<div class="psReplyWriteImg">
								<img
									src="https://cdn.discordapp.com/attachments/947836644889870356/950302233436778526/edit_icon.png">
							</div>
							<div>
								<img
									src="https://cdn.discordapp.com/attachments/947836644889870356/950302233206071316/delete__icon.png">
							</div>
						</div>
					</div>
					<div class="psReply">
						<div class="psReplyTitle">
							<div class="psReplyMember">버찌집사</div>
							<div class="psReplyDate">2022.12.02 14:52</div>
						</div>
						<div class="psReplyText">너무 귀엽네요!!</div>
						<div class="psReplyImg">
							<div class="psReplyWriteImg">
								<img
									src="https://cdn.discordapp.com/attachments/947836644889870356/950302233436778526/edit_icon.png">
							</div>
							<div>
								<img
									src="https://cdn.discordapp.com/attachments/947836644889870356/950302233206071316/delete__icon.png">
							</div>
						</div>
					</div>
					<div class="psReply">
						<div class="psReplyTitle">
							<div class="psReplyMember">버찌집사</div>
							<div class="psReplyDate">2022.12.02 14:52</div>
						</div>
						<div class="psReplyText">너무 귀엽네요!!</div>
						<div class="psReplyImg">
							<div class="psReplyWriteImg">
								<img
									src="https://cdn.discordapp.com/attachments/947836644889870356/950302233436778526/edit_icon.png">
							</div>
							<div>
								<img
									src="https://cdn.discordapp.com/attachments/947836644889870356/950302233206071316/delete__icon.png">
							</div>
						</div>
					</div>
					<div class="psReply">
						<div class="psReplyTitle">
							<div class="psReplyMember">버찌집사</div>
							<div class="psReplyDate">2022.12.02 14:52</div>
						</div>
						<div class="psReplyText">너무 귀엽네요!!</div>
						<div class="psReplyImg">
							<div class="psReplyWriteImg">
								<img
									src="https://cdn.discordapp.com/attachments/947836644889870356/950302233436778526/edit_icon.png">
							</div>
							<div>
								<img
									src="https://cdn.discordapp.com/attachments/947836644889870356/950302233206071316/delete__icon.png">
							</div>
						</div>
					</div>
					<div class="psReply">
						<div class="psReplyTitle">
							<div class="psReplyMember">버찌집사</div>
							<div class="psReplyDate">2022.12.02 14:52</div>
						</div>
						<div class="psReplyText">너무 귀엽네요!!</div>
						<div class="psReplyImg">
							<div class="psReplyWriteImg">
								<img
									src="https://cdn.discordapp.com/attachments/947836644889870356/950302233436778526/edit_icon.png">
							</div>
							<div>
								<img
									src="https://cdn.discordapp.com/attachments/947836644889870356/950302233206071316/delete__icon.png">
							</div>
						</div>
					</div>
					<div class="psReply">
						<div class="psReplyTitle">
							<div class="psReplyMember">버찌집사</div>
							<div class="psReplyDate">2022.12.02 14:52</div>
						</div>
						<div class="psReplyText">너무 귀엽네요!!</div>
						<div class="psReplyImg">
							<div class="psReplyWriteImg">
								<img
									src="https://cdn.discordapp.com/attachments/947836644889870356/950302233436778526/edit_icon.png">
							</div>
							<div>
								<img
									src="https://cdn.discordapp.com/attachments/947836644889870356/950302233206071316/delete__icon.png">
							</div>
						</div>
					</div>
					<div class="psReply">
						<div class="psReplyTitle">
							<div class="psReplyMember">버찌집사</div>
							<div class="psReplyDate">2022.12.02 14:52</div>
						</div>
						<div class="psReplyText">너무 귀엽네요!!</div>
						<div class="psReplyImg">
							<div class="psReplyWriteImg">
								<img
									src="https://cdn.discordapp.com/attachments/947836644889870356/950302233436778526/edit_icon.png">
							</div>
							<div>
								<img
									src="https://cdn.discordapp.com/attachments/947836644889870356/950302233206071316/delete__icon.png">
							</div>
						</div>
					</div>

					<div class="under_num">

						<a href="#" class="num on">1</a> <a href="#" class="num">2</a> <a
							href="#" class="num">3</a>

					</div>

				</div>

				<div class="psReplyWriteWrap">

					<form id="psReplyWriteForm">
						<textarea rows="5" placeholder="댓글을 작성해주세요."></textarea>


						<input type="submit" value="등록">
					</form>

				</div>
			</div>




			<!--content 종료-->

			<!--푸터영역-->
			<%@ include file="/app/jsp/fix/footer.jsp"%>
		</div>
	</div>
</body>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e8c046fffe25962d6ea1d0fbd0d4d7cf&libraries=services"></script>
<script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
<script>

    var dTRight = document.getElementById('dTRight');
    var dTLeft = document.getElementById('dTLeft');
    const datilImgs = document.querySelectorAll('.datilImg');
    const dtimgWharp = document.querySelector('#dtimgWharp');
    const careAddr = document.querySelector('#careAddr');
  
  	const psPoint = document.querySelector('.psPoint').innerText;
  	const happenDt = document.querySelector('#happenDt').innerText;
  const noticeEdt = document.querySelector('#noticeEdt').innerText;
  	const noMap = document.querySelector('#noMap');
  	
    var count = 0;
    var bannerRolCkImgUri ="https://cdn.discordapp.com/attachments/947836644889870356/950428272397803600/bannerRolChoice.png";
    var bannerRolImgUri ="https://cdn.discordapp.com/attachments/947836644889870356/950401078346776616/bannerRol.png";
    
    var mHtml = $("html");
    var page = 1;
    pageToChimg()
    
    var childrens = $('.pointerImg').children();
  
	console.log(childrens.size());


     function pageRest() {
    	for (var i = 0; i < childrens.size(); i++) {
    		
    		childrens[i].src = bannerRolImgUri; 
		}
	}

     
     function pageToChimg() {
 		if(page == 1){
			$('#imgBannerPointer1').find('img').attr('src',bannerRolCkImgUri)
		}else if(page == 2){
			$('#imgBannerPointer2').find('img').attr('src',bannerRolCkImgUri)
		}else if(page == 3){
			$('#imgBannerPointer3').find('img').attr('src',bannerRolCkImgUri)
		}else if(page == 4){
			$('#imgBannerPointer4').find('img').attr('src',bannerRolCkImgUri)
		}else if(page == 5){
			$('#imgBannerPointer5').find('img').attr('src',bannerRolCkImgUri)
		}
	}


    mHtml.animate({scrollTop : 0},10);
    
    $(window).on("wheel", function(e) {
        if(mHtml.is(":animated")) return;
        if(e.originalEvent.deltaY > 0) {
            if(page == 5) return;
            page++;
        } else if(e.originalEvent.deltaY < 0) {
            if(page == 1) return;
            page--;
        }

		
		pageRest();
        var posTop =(page-1) * $(window).height();
        mHtml.animate({scrollTop : posTop});
        pageToChimg()

    })
    
    
    
    
    
    $('#imgBannerPointer1').on("click", function(e) {
        pageRest()
			page =1

			$(this).find('img').attr('src',bannerRolCkImgUri)
        var posTop =(page-1) * $(window).height();
        mHtml.animate({scrollTop : posTop});
    })
    $('#imgBannerPointer2').on("click", function(e) {
        pageRest()
			page =2
			$(this).find('img').attr('src',bannerRolCkImgUri)
        var posTop =(page-1) * $(window).height();
        mHtml.animate({scrollTop : posTop});
    })
    $('#imgBannerPointer3').on("click", function(e) {
        pageRest()
			page =3
			$(this).find('img').attr('src',bannerRolCkImgUri)
        var posTop =(page-1) * $(window).height();
        mHtml.animate({scrollTop : posTop});
    })
    $('#imgBannerPointer4').on("click", function(e) {
        pageRest()
			page =4
			$(this).find('img').attr('src',bannerRolCkImgUri)
        var posTop =(page-1) * $(window).height();
        mHtml.animate({scrollTop : posTop});
    })
    $('#imgBannerPointer5').on("click", function(e) {
        pageRest()
			page =5
			$(this).find('img').attr('src',bannerRolCkImgUri)
        var posTop =(page-1) * $(window).height();
        mHtml.animate({scrollTop : posTop});
    })

    
    
    
    $('#map').on('scroll touchmove mousewheel', function(event) {
  event.preventDefault();
  event.stopPropagation();
  return false;
});
	
 // 타이머  js
    const timerContainer=document.querySelector(".js-clock"),
        timer=timerContainer.querySelector("span");

    function getTime() {
        // 동물의 구조날자 +10일
        // 보호기간 Date
       
        //console.log(happenDt);
      

/*       console.log(time);
      console.log(sethappenDt); */
/*       const xmasDay = new Date(happenDt);  */
const noticeEdtArr = noticeEdt.split('-');
	
		console.log(noticeEdt);
		console.log(noticeEdtArr[0]);
		console.log(noticeEdtArr[1]-1);
		console.log(noticeEdtArr[2]); 
		
      const xmasDay = new Date(noticeEdtArr[0], noticeEdtArr[1]-1 , noticeEdtArr[2]); 
      //const xmasDay = new Date("2022-03-12:12:00:00+0900");
	console.log(xmasDay);
        
      const now=new Date();
      if(now>xmasDay){
        timer.innerText='공고기간 종료';
      }else{
      const gap=xmasDay-now;
      const day=Math.floor(gap/(1000*60*60*24)); //일
      const hours=Math.floor((gap/(1000*60*60))%24); //시
      const minutes=Math.floor((gap/(1000*60)%60)); //분
      const seconds=Math.floor((gap/1000)%60); //초
    //   timer.innerHTML=`${day}  ${hours} ${minutes} ${seconds} `;
        var hoursChange = hours < 10 ? "0"+hours : hours;
        var minutesChange  = minutes < 10 ? "0"+minutes : minutes;
        var secondsChange  = seconds < 10 ? "0"+seconds : seconds;
        timer.innerHTML="-"+day+"일 <b class='timeFont'>"+hoursChange+":"+minutesChange+":"+secondsChange+"</b>";


    //   7일&nbsp;&nbsp<b>20:23:10</b>
      }
    }

    function init() {
        getTime();
        setInterval(getTime,1000);
    }
    init();
    
    
    // 위치정보를 보호소 지도 페이지에 넘겨줘야함
    function petSanctuaryMap() {
    	 window.open("${pageContext.request.contextPath}/board/boardPetSanctuaryMap.bo?careAddr=${animal.getCareAddr()}}, '_blank', 'width=790px, height=540px'");
	} 

    //동물 상태에 따른 분기처리를 class를 부여하거나 js에서 해결(api사용하며해결)
    // if문으로 분기처리 가능
    $('#dTstatusImg').hover(function(){

        // $('.infoTextProtect').css('display','block');
        // $('.infoTextNotifi').css('display','block');
        $('.infoText').css('display','block');
    },function(){
        // $('.infoTextProtect').css('display','none');
        // $('.infoTextNotifi').css('display','none');
        $('.infoText').css('display','none');
       
    })  


    dTRight.addEventListener('click',function(){
            

        if( count != 0){
                count--;
            }else{
                if(count == datilImgs.length - 1){
                    count = 0;
                }else{
                    count = datilImgs.length - 1;
                }
            }
            dtimgWharp.style.transform = "translate(-" + count * 1160 + "px)";
        
            
            // dtimgWharp.style.transform = "translate(-1160px)";
    })


    dTLeft.addEventListener('click',function(){
        if( count != datilImgs.length - 1){
                count++;
            }else{
                if(count == datilImgs.length - 1){
                    count = 0;
                }else{
                    count = datilImgs.length - 1;
                }
            }
            dtimgWharp.style.transform = "translate(-" + count * 1160 + "px)";
    })



    var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(37.4781913, 127.128718), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

    
var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
//주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();
//주소로 좌표를 검색합니다
geocoder.addressSearch(psPoint, function(result, status) {

    // 정상적으로 검색이 완료됐으면 
     if (status === kakao.maps.services.Status.OK) {

        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

      //마커가 표시될 위치입니다 

        
        // 결과값으로 받은 위치를 마커로 표시합니다
        var marker = new kakao.maps.Marker({
            map: map,
            position: coords
        });

        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
        marker.setMap(map);
    }else{
    	// 좌표생성 실패할 경우
    	mapContainer.style.display = "none";
    	noMap.style.display = "block";
    }
});    



/* // 마커가 표시될 위치입니다 
var markerPosition  = new kakao.maps.LatLng(37.4781913, 127.128718); 

// 마커를 생성합니다
var marker = new kakao.maps.Marker({
    position: markerPosition
}); */
//일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
var mapTypeControl = new kakao.maps.MapTypeControl();

//지도에 컨트롤을 추가해야 지도위에 표시됩니다
//kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

//지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
var zoomControl = new kakao.maps.ZoomControl();
map.addControl(zoomControl, kakao.maps.ControlPosition.LEFT);

// 마커가 지도 위에 표시되도록 설정합니다


// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
// marker.setMap(null);   





</script>

</html>