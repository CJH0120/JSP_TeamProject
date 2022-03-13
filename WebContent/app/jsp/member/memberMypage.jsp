<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/mypage.css">
</head>
<body>

<%@ include file="/app/jsp/fix/header.jsp" %>


<div id="body_wrap">
    <!-- 페이지 네비게이션 -->
    <div class="pageNavigation">
        <div class="location">
            <a href="index.jsp" class="home"><span>홈 ></span></a>
            <a href="Q&A.jsp"><span>내정보 ></span></a>
            <a href="Q&A.jsp"><span>기본정보 변경</span></a>
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
    <div>
        <p><span class="necessary">*</span>표시의 항목은 필수입력 항목입니다.</p>
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
                        <th><p>아이디(ID)</p></th>
                        <td> "멤버id"</td>
                    </tr>
                    <tr>
                        <th><p>반려동물 이름</p></th>
                        <td> "반려동물 이름"</td>
                    </tr>
                    <tr>
                        <th><p><span class="necessary">*</span>휴대폰번호</p></th>
                        <td>
                            <div>"휴대폰번호" <a href="#" class="btn_change">변경하기</a></div>
                        </td>
                    </tr>
                    <tr>
                        <th><p><span class="necessary">*</span>이메일 주소</p></th>
                        <td>
                            <div class="input_email">
                                <input type="text" name="mememail1" id="mememail1" class="input_mememail" title="메일 주소">
                                "@"
                                <input type="text" name="mememail2" id="mememail2" class="input_mememail" title="메일 계정">
                                <span class="select_box">
                                    <select class="select_mail" title="계정 선택" onchange="">
                                        <option value="naver">naver.com</option>
                                        <option value="hanmail">hanmail.net</option>
                                        <option value="daum">daum.net</option>
                                        <option value="gmail">gmail.com</option>
                                        <option value="직접입력">직접입력</option>
                                    </select>
                                    <span class="selected"></span>
                                    <span class="arrow"></span>
                                </span>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th><P>주소</P></th>
                        <td class="add_wrap">
                            <div>
                                <input type="text" name="mem_zip" id="mem_zip" class="mem_zipcode" title="우편번호">
                                <a href="#" class="add_btn" id="zipcode_btn" onclick="">우편번호 찾기</a>
                            </div>
                            <p></p>
                            <div>
                                <input type="text" name="mem_add1" id="mem_add1" title="주소 앞자리">
                                <input type="text" name="mem_add2" id="mem_add2" title="주소 뒷자리">
                            </div>
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