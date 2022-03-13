<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/mypage_pw.css">

</head>
<body>

<%@ include file="/app/jsp/fix/header.jsp" %>


<div id="body_wrap">
    <!-- 페이지 네비게이션 -->
    <div class="pageNavigation">
        <div class="location">
            <a href="index.jsp" class="home"><span>홈 ></span></a>
            <a href="Q&A.jsp"><span>내정보 ></span></a>
            <a href="Q&A.jsp"><span>비밀번호 변경</span></a>
        </div>
    </div>
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
    
    <form action="" name="input_myinfo" id="input_myinfo">
        <div class="info_tbl">
            <table>
                <colgroup>
                    <col width="20%">
                    <col width="*">
                </colgroup>
                <tbody>
                    <tr>
                        <th><label for="nowpw1">현재 비밀번호</label></th>
                        <td><input type="password" name="mempw" id="mempw" class="nowpw"></td>
                    </tr>
                    <tr>
                        <th><label for="nowpw2">새 비밀번호</label></th>
                        <td>
                           	<input type="password" name="mempw" id="mempw" class="newpw">
                           	<span class="info_txt">6~20자리의 영문 대/소문자, 숫자, 특수문자를 사용하세요 / 공백 사용 불가</span>
                        </td>
                    </tr>
                    <tr>
                        <th><span>새 비밀번호 확인</span></th>
                        <td>
                          <div><input type="password" name="mempw" id="mempw" class="newpw_check"></div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
	    <div class="submit_btn_wrap">
	        <a href="#" class="submit_btn" onclick=""><span>확인</span></a>
	        <a href="#" class="submit_btn_cancel" onclick="">취소</a>
	    </div>
    </form>
</div>
     <%@ include file="/app/jsp/fix/footer.jsp" %>
</body>
</html>