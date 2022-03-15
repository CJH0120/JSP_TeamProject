<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>help_pet</title>
<link
	href="https://hangeul.pstatic.net/hangeul_static/css/NanumBarunGothicYetHangul.css"
	rel="stylesheet">

<style>
div.wrap {
	padding: 10%;
}

div.text table {
	margin: 10px auto;
	width: 100%;
	text-align: center;
}

div.text table td {
	text-align: left;
}

div.text table th {
	text-align: right;
}

div.text table th img {
	width: 19px;
}

body {
	margin: 0px;
}

.content {
	width: 1160px;
	height: auto;
	margin: 0 auto;
	/*   border: 1px solid red; */
	padding-bottom: 110px;
	margin-top: 3%;
}

.contentHeader {
	width: 50%;
	margin: 0 auto;
}

.wrapForm {
	width: 100%;
	margin: 0 auto;
}

.pageNavigation {
	text-align: left;
	/*     margin-right: 10%;
    margin-left: 10%; */
}

.pageNavigation .location span, a {
	text-decoration: none;
	color: black;
}

.location {
	border-bottom: 1px solid black;
}

.contentHeader {
	text-align: center;
	font-size: 28px;
}

.contentHeader div {
	font-size: 46px;
	font-weight: 100;
}

.bgForm {
	margin-bottom: 45px;
	height: 148px;
	padding: 15px;
	margin-top: 50px;
	background: white;
	border-bottom: 1px solid #00000036;
}

/*       form#searchForm {
      	border-bottom: 1px solid #00000036;
      } */
ul.gridContainer {
	list-style: none;
	margin: 0;
	margin: 0;
	padding: 0;
	border: 0;
	font-family: 'Noto Sans KR', sans-serif;
	line-height: 18px;
}


body {
	margin: 0px;
	padding: 0px;
}

.grid {
	border: 1px solid #e6e6e6;
	width: 285px;
	height: 400px;
}

/* flex로 바둑판 정렬 */
/* .gridContainer{
         width: 100%;
      

         display: flex;
         flex-wrap: wrap;
         justify-content: space-between;
         margin-top: 50px;
         
         
      } 
      */
.gridContainer {
	width: 100%;
	margin-top: 50px;
	display: grid;
	grid-template-columns: repeat(4, 1fr);
	grid-column-gap: 4px;
	grid-row-gap: 30px;

	/* display: inline-block;  */
}

.gridContainer li {
	/*  margin-left: 10px; */
	/* float: left; */
	
}
/*   .gridContainer  li:nth-child(4n+1){margin-left: 0;} */
.g_img {
	width: 285px;
	height: 100%;
	position: relative;
	cursor: pointer;
}

.g_img>img {
	width: 80%;
	height: 245px;
	/*  height: 80%; */
}

.g_img>p {
	position: absolute;
	top: -4px;
	left: 12px;
	border-radius: 30px;
	padding: 5px 10px;
	color: #fff;
	font-weight: 600;
}

.statusProtect {
	background-color: #4486bc;
}

.statusClose {
	background-color: #444444;
}

.btnWrap button {
	width: 100%;
	height: 100%;
	border-radius: 5px;
	/*  background-color: #ffb300; */
	background-color: #EEC0DB;
	border: #fff solid 1px;
	color: #fff;
	font-family: 'NanumBarunGothicYetHangul';
	font-weight: bold;
	font-size: 18px;
	cursor: pointer;
}

.g_text {
	position: absolute;
	display: flex;
	align-items: center;
	justify-content: center;
	display: block;
	background-color: rgba(0, 0, 0, 0.6);
	height: 100%;
	width: 100%;
	display: none;
	top: 0;
}

.g_text p {
	font-size: 18px;
}

.g_text #g_textIn p>b {
	display: inline-block;
	min-width: 78px;
	font-size: 18px;
	font-weight: bold;
}

#g_textIn p {
	color: white;
}

div#genImgDiv {
	position: absolute;
	top: 8px;
	left: 54px;
	width: 44px;
	height: 44px;
}

div#genImgDiv img {
	width: 100%;
}

#statusImg {
	position: absolute;
	top: -38px;
	left: -33px;
}

#statusImg img {
	width: 130px;
}

.paging {
	width: 100%;
	text-align: center;
	margin-top: 55px;
}

.paging a {
	text-decoration-line: none;
	display: inline-block;
	font-weight: 400;
	width: 40px;
	height: 40px;
	line-height: 40px;
	margin: 0;
	box-sizing: border-box;
	color: #333;
}

#searchForm {
	height: 100%;
}

.formInnerWrap {
	width: 100%;
	height: 100%;
	position: relative;
	display: flex;
	justify-content: center;
	align-items: center;
}

.formInnerWrap .formTop {
	width: 45%;
	height: 100%;
	display: flex;
	align-items: center;
	flex-direction: column;
	justify-content: center;
	/* column-gap: 10px; */
	row-gap: 4px;
}

/* 초기화 버튼 있을 때  */
/* .btnWrap {
	width: 25%;
	height: 62%;
	right: 138px;
	bottom: 0px;
	display: flex;
} */
.btnWrap {
	width: 13%;
	height: 62%;
	right: 138px;
	bottom: 0px;
	
}


.dateIntput {
	width: 233px;
	height: 42px;
	border: 0.5px solid;
	padding-left: 5px;
}

.selectWrap select {
	width: 160px;
	height: 44px;
	border: 0.5px solid;
	padding-left: 5px;
}

#topImg {
	width: 100%;
	height: 100vh;
	background-image:
		url("https://cdn.discordapp.com/attachments/947836644889870356/948806487302627328/ListBannerpng.png");
	background-repeat: no-repeat;
	background-size: contain;
	display: flex;
	align-items: center;
	margin-top: 152px;
	position: relative;
}

.contentHeader {
	position: absolute;
	top: 232px;
	left: 719px;
}

.contentHeader h1 {
	color: #ffb300;
}

#listTopWrap {
	width: 100%;
	height: 720px;
	overflow: hidden;
}

.dateIntput, .selectWrap select {
	border-radius: 5px;
	font-size: 16px;
	font-family: 'NanumBarunGothicYetHangul';
	overflow: visible;
}

.statusTextNotofi {
	position: absolute;
	bottom: 0px;
	width: 100%;
	background: rgba(238, 192, 219, 73%);
	text-align: center;
	color: black;
	font-weight: bold;
	font-size: 18px;
}

.statusTextFinish {
	position: absolute;
	bottom: 0px;
	width: 100%;
	background: rgba(105, 105, 105, 73%);
	text-align: center;
	color: black;
	font-weight: bold;
	font-size: 18px;
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
@font-face {
	font-family: 'GowunDodum-Regular';
	src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2108@1.1/GowunDodum-Regular.woff%27) format('
		woff ');
	font-weight: normal;
	font-style: normal;
}

@font-face {
	font-family: 'IBMPlexSansKR-Regular';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-07@1.0/IBMPlexSansKR-Regular.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

}
@import url("fonts.googleapis.com/earlyaccess/notosanskr.css");
</style>
</head>
<body>
	<c:set var="animalList" value="${animalList}" />
	<c:set var="page" value="${page}" />
	<c:set var="startPage" value="${startPage}" />
	<c:set var="endPage" value="${endPage}" />
	<c:set var="realEndPage" value="${realEndPage}" />
	<c:set var="total" value="${total}" />



	<!-- 헤더 영역 -->
	<%@ include file="../fix/header.jsp"%>


	<!-- 중간 이미지 -->
	<div id="listTopWrap">

		<div id="topImg">
			<div class="contentHeader">
				<h1>보호동물 공고</h1>
			</div>
			<div></div>
		</div>

	</div>
	<!-- wrapForm -->

	<section>
		<div class="content">

			<!-- 페이지 네비게이션 -->
			<div class="pageNavigation">
				<div class="location">
					<a href="../jsp/index.jsp" class="home"><span>홈 ></span></a> <a
						href="Q&A.jsp">동물 찾기 ></a> <a href="Q&A.jsp"><span>유기동물
							조회</span></a>
				</div>
			</div>



			<!--             <div class="contentHeader">
               <h1>보호동물 공고</h1>
               <div>|</div>
            </div> -->
			<!-- 보호동물 검색 form 시작 -->
			<div class="bgForm">

				<form name="searchForm" id="searchForm" action="${pageContext.request.contextPath}/board/boardPetSearchListOk.bo" method="post">

					<div class="formInnerWrap">
						<div class="formTop">
							<div class="dateDiv">
								<input type="date" name="bgnde" id="bgnde" placeholder="유기날짜(시작일)" class="dateIntput">~<input
									type="date" name="endde" id="endde" placeholder="유기날짜(종료일)" class="dateIntput">
							</div>

							<div class="selectWrap">

								<select id="upKindCd" name="upKindCd" onchange="findKindCd()">
									<option>종류</option>
									<option value="417000">개</option>
									<option value="422400">고양이</option>
									<option value="429900">기타동물</option>
								</select> 
								<select id="kind_cd" name="kind_cd" onclick="">
									<option>품종</option>
									<!-- 종류를 선택하지 않았다면 품종은 '품종'만 선택 가능하게 구현
			                              js와 유기동뮬API를 사용하여 종류의 값에 따라 알맞는 품종을 가져오게 구현 -->

								</select> 
								<select name="neuterYn" id="neuterYn">
									<option>중성화여부</option>
									<option value="Y">예</option>
									<option value="N">아니요</option>
									<option value="U">미상</option>
								</select>
							</div>
						</div>
						<input type="hidden" name="formOk" value="OK">
						<input type="hidden" name="OkPage" value="page">

						<div class="btnWrap">
							<button onclick="searchFormSend()">검색</button>
							<!-- <button  type="reset" onclick="searchFormRest()">초기화</button>  -->
						</div>

					</div>


				</form>

			</div>
			<!-- 보호동물 검색 form 종료-->
			<ul class="gridContainer">



				<c:forEach var="animal" items="${animalList}">
					<li class="grid">
						<div class="wrap">
							<!-- <div class="g_img" onclick="detailFormSend()"> -->
						
							<div class="g_img"
								onclick="window.location.href = '${pageContext.request.contextPath}/board/boardPetSearchViewOk.bo?getNoticeNo=${animal.getNoticeNo()}&page=${page}';"> 
								                  <input type="hidden" name="noticeNo"value="${animal.getNoticeNo()}">
								<img src="${animal.getPopfile()}"> 
								
								<div id="statusImg">
									<c:choose>
										<c:when test="${fn:contains(animal.getProcessState(), '보호중')}">
											<img
												src="${pageContext.request.contextPath}/images/check.png">
										</c:when>
										<c:when test="${fn:contains(animal.getProcessState(), '공고중')}">
											<img
												src="${pageContext.request.contextPath}/images/check.png">
										</c:when>
										<c:otherwise>
											<img
												src="${pageContext.request.contextPath}/images/unCheck.png">
										</c:otherwise>
									</c:choose>
								</div>
							</div>
							<div>
								<div class="text">
									<table>
										<tr>
											<th><img
												src="${pageContext.request.contextPath}/images/mark.png">
											</th>
											<td>${animal.getNoticeNo()}</td>
										</tr>
										<tr>
											<th><img
												src="${pageContext.request.contextPath}/images/mark.png">
											</th>
											<td>${animal.getKindCd()}</td>
										</tr>
										<tr>
											<th><img
												src="${pageContext.request.contextPath}/images/mark.png">
											</th>
											<c:choose>
												<c:when test="${animal.getSexCd() eq 'M'}">
													<td>남아</td>
												</c:when>
												<c:when test="${animal.getSexCd() eq 'F'}">
													<td>여아</td>
												</c:when>
												<c:otherwise>
													<td>미상</td>
												</c:otherwise>
											</c:choose>


											<!--수컷이면 남아 암컷이면 여아or 미상  -->
										</tr>
										<tr>
											<th><img
												src="${pageContext.request.contextPath}/images/mark.png">
											</th>
											<td>${animal.getOrgNm()}</td>
										</tr>
									</table>
								</div>
							</div>
						</div>
					
					</li>
					
				</c:forEach>




			</ul>

			<!--페이징 -->
			
			<div class="under_num">
				<c:if test="${startPage > 1}">
					<a href="${pageContext.request.contextPath}/board/boardPetSearchList.bo?page=${startPage - 1}">&lt;&lt;</a>
				</c:if>
				<c:if test="${page > 1}">
					<a href="${pageContext.request.contextPath}/board/boardPetSearchList.bo?page=${page - 1}">&lt;</a>
				</c:if>
				<c:forEach var="i" begin="${startPage}" end="${endPage}">
					<c:choose>
						<c:when test="${i eq page}">
							<a class="num on">${i}</a>
						</c:when>
						<c:otherwise>
							<a class="num " href="${pageContext.request.contextPath}/board/boardPetSearchList.bo?page=${i}"><c:out value="${i}"/></a>
							</c:otherwise>
					</c:choose>
				</c:forEach>
				<c:if test="${page < realEndPage}">
					<a href="${pageContext.request.contextPath}/board/boardPetSearchList.bo?page=${page + 1}">&gt;</a>
				</c:if>
				<c:if test="${endPage < realEndPage}">
					<a href="${pageContext.request.contextPath}/board/boardPetSearchList.bo?page=${endPage + 1}">&gt;&gt;</a>
				</c:if>
			</div>

			<!--          <div class="paging">
            <a href="#" class="page" onclick="">1</a>
            <a href="#" class="page" onclick="">2</a>
            <a href="#" class="page" onclick="">3</a>
            <a href="#" class="page" onclick="">4</a>
            <a href="#" class="page" onclick="">5</a>
            <a href="#" class="page" onclick="">6</a>
            <a href="#" class="page" onclick="">7</a>
         </div> -->


		</div>






	</section>
	<!-- content 종료-->


	<!-- 푸터 영역 -->
	<%@ include file="/app/jsp/fix/footer.jsp"%>
</body>
<script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
<script>
         	var contextPath = "${pageContext.request.contextPath}";
         	var formOk = "${formOk}";
         	var bgnde = "${bgnde}";
         	var endde = "${endde}";
         	var upKindCd = "${upKindCd}";
         	var kind_cd = "${kind_cd}";
         	var neuterYn = "${neuterYn}";
</script>
<script>

//select 박스 동물 종류에 따라 변화 

console.log(formOk);
console.log(upKindCd);
console.log(kind_cd);
console.log(bgnde);

function searchFormRest() {
	window.location.href = contextPath + "/board/boardPetSearchReset.bo"; 

}

function searchFormSend() {
	$('#searchForm').submit();
	
}

function ftailFormSend() {
	$('#detailForm').submit();
}


function findKindCd(){
		var upKindCd  =$("#upKindCd option:selected").val();

	$.ajax({
		url: contextPath + "/board/selectAnimalKind.bo?upKindCd="+upKindCd,
		type: "get",
		dataType: "json",
		success: showSelect,
		error: function(a,b,c){
			console.log(a)
			console.log(b)
			console.log(c)
			console.log("축종 코드 오류");
		}
	}); 
}

function showSelect(kindDatas){
	var text = "";
	console.log($('#kind_cd').val());
	console.log(kind_cd);
	if(kindDatas.length == 0){
		
		text += "<option>품종</option>";
	}else{
		text += "<option>선택안함</option>";
	for (var i = 0; i < kindDatas.length; i++) {
		
		if($('#kind_cd').val() == kindDatas[i].kindCd  ){
		
		text += "<option value='"+ kindDatas[i].kindCd+"' selected >"+kindDatas[i].kNm+"</option>";
		}else{
		
		text += "<option value='"+ kindDatas[i].kindCd+"'  >"+kindDatas[i].kNm+"</option>";
		}
	}

	}
/* 	$.each(kindDatas, function(index, kindData){
		text += "<option>"+kindData.kNm+"</option>";
		console.log(kindData.kNm)
	} */
	 $("#kind_cd").html(text);
	
	for (var i = 0; i < kindDatas.length; i++) {
		if( kind_cd == kindDatas[i].kindCd ){
		 $("#kind_cd").val( kind_cd ).prop("selected", true);
		}
	} 

}

searchRemember();

function searchRemember() {
	if(formOk == "OK"){
		$('#bgnde').val(bgnde);
		$('#endde').val(endde);
		$('#upKindCd').val(upKindCd);
		
		$('#neuterYn').val(neuterYn);
		findKindCd();
	}
}



   var nowpage = 4;
   var pages = document.querySelectorAll('a.page');
   pages.forEach(p =>{
      if(p.innerHTML == nowpage){
      console.log(p)
      p.style.color = "white";
      p.style.textDecoration = "underline";
      p.style.textUnderlinePosition = "under";
      p.style.background = "#ffb300";

      }
   })
      // $('.grid').hover(function () {
   //    console.log(this);
   //    $(this).find('.g_text').css('display', 'flex')
   // })
    $('.grid').hover(function(){
       
       $(this).find('.g_text').fadeIn(300);
      $(this).find('.g_text').css('display','flex');
    },function(){
       $(this).find('.g_text').fadeOut();

    })
   
</script>

</html>