<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/resign.css">
<script src="https://code.jquery.0com/jquery-1.12.0.min.js"></script>
</head>
<body>

<%@ include file="/app/jsp/fix/header.jsp" %>


	 <div id="all_container">
	 
	 
	     <!-- 페이지 네비게이션 -->
    <div class="pageNavigation">
        <div class="location">
            <a href="index.jsp" class="home"><span>홈 ></span></a>
            <a href="Q&A.jsp"><span>내정보 ></span></a>
            <a href="Q&A.jsp"><span>탈퇴</span></a>
        </div>
    </div>
    
 	   <!-- 변경탭 -->
        <div class="top_title">
        <h2>내 정보</h2>
        
    </div>
    <div class="tab-1 myinfo_tab">
        <ul class="myinfo">
            <li id="myinfo_mod"><a href="" onclick="">기본정보 변경</a></li>
            <li id="myinfo_pw"><a href="" onclick="">비밀번호 변경</a></li>
            <li id="myinfo_resign"><a href="" onclick="">탈퇴</a></li>
        </ul>
    </div>
    
    
    
    <!-- 본문내용 -->
        <div id="content">
            <div class="c_header">
                <h2>탈퇴 안내</h2>
                <p class="contxt">회원탈퇴를 신청하기 전에 안내 사항을 꼭 확인해주세요.</p>
            </div>
            <div class="section_delete">
                <h3 class="h_dropout"><img src="https://cdn.discordapp.com/attachments/947836644889870356/951037441341534269/899354ce45eb60d1.png" style="width: 22px; height: 22px;"> 
                    사용하고 계신아이디(<em>"아이디들어갈자리"</em>)는 탈퇴할 경우 재사용 및 복구가 불가능합니다.</h3>
                <p class="dropout_dsc">
                    <em>탈퇴한 아이디는 본인과 타인 모두 재사용 및 복구가 불가</em>하오니 신중하게 선택하시기 바랍니다.
                </p>
                <h3 class="h_dropout"><img src="https://cdn.discordapp.com/attachments/947836644889870356/951037441341534269/899354ce45eb60d1.png" style="width: 22px; height: 22px;"> 탈퇴 후 회원정보 및 개인형 서비스 이용기록은 모두 삭제됩니다.</h3>
            </div>
        </div>
        <form action="">
            <div class="agree_area">
                <input type="checkbox" id="agree"  class="agree_btn" name="agree" onclick="">
                <label for="dropoutAgree"><strong>안내 사항을 모두 확인하였으며, 이에 동의합니다.</strong></label>
            </div>
            <div class="btn_area_w">
                <p class="btn_area">
                    <a href="#" id="btnNext" class="btn_model">탈퇴하기</a>
                </p>
            </div>
        </form>
    </div>
    
        <%@ include file="/app/jsp/fix/footer.jsp" %> 
    
</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/resign.js" ></script>
</html>