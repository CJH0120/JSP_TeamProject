<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
     
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <%-- <META http-equiv=refresh content="0; url=${pageContext.request.contextPath}/app/jsp/member/join1.jsp"> --%>


   <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/header.css">
     <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/login.css">

     <link rel="stylesheet" media="(min-width:992px) and (max-width:1100px)" href="${pageContext.request.contextPath}/assets/css/header.css">
    <link rel="stylesheet" media="(max-width:992px)" href="${pageContext.request.contextPath}/assets/css/header.css">
	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <title>헤더</title>
</head>
<body >
    <div id="model_back">
    
    </div>
  
  
      <div class="main_page_wrap">
          <div id="header_wrap" >
              <div class="header_fixed">
                  <div class="header_color" >
                  <div class="header_flex"> 
                      <div class="header_logo"><h1><a href ="${pageContext.request.contextPath}/app/jsp/index.jsp"><img src="https://cdn.discordapp.com/attachments/947836644889870356/948951279286255636/-001_8.png" alt="" style="width: 130px; height: 70px; margin-top: 5px;"></a></h1></div>
                      
                      <div class="header_util">
                         <span class="header_util_span"><a  onclick="modalOpen()" id="loginbtn">로그인</a>
                         <a href ="${pageContext.request.contextPath}/app/jsp/member/memberJoin1.jsp">회원가입</a>
                          
                        </span>
                        
                        <div class="media_btn">
                            <div class="hamberger">
                                <div class="threeline"></div>
                                <div class="threeline"></div>
                                <div class="threeline"></div>
                      </div> 
                    </div>
                        </div>
                    </div>
                </div>
              <!--헤더 로그인 회원가입 검색 버튼  -->
              <nav class="heaver_nav"  >
                
                
                  <ul class="nav_header"  >
                      <li class="nav_header_li" ><span >신고 및 제보</span>
                          <ul class="nav_sub_header" >
                              <li class="nav_sub_header_li"  id="cat"> <a href="${pageContext.request.contextPath}/app/jsp/board/boardIsee.jsp">목격제보</a></li>
                              <li class="nav_sub_header_li"> <a  href ="${pageContext.request.contextPath}/app/jsp/board/boardProtecting.jsp">보호</a></li>
                              <!-- <li class="nav_sub_header_li"> <a href="https://www.naver.com/">test1</a></li> -->
                          </ul>
  
  
                      </li>
                  
                      <li class="nav_header_li"  id="nav_header_li"><span>동물 찾기
                      </span>
                          <ul class="nav_sub_header"> 
                              <li class="nav_sub_header_li" ><a href ="${pageContext.request.contextPath}/board/boardPetSearchList.bo">유기동물 조회</a></li>
                             <li class="nav_sub_header_li" ><a href ="${pageContext.request.contextPath}/app/jsp/map/map.jsp">유기동물 지도</a></li> 
                              <!-- <li class="nav_sub_header_li" ><a>33</li> -->
                          </ul>
                      </li>
  
                      <li class="nav_header_li"  id="nav_header_li"><span>커뮤니티</span>
                          <ul class="nav_sub_header">
                              <li class="nav_sub_header_li"><a href ="${pageContext.request.contextPath}/board/AdoptReviewList.bo">입양후기</a></li>
                              <li class="nav_sub_header_li"><a href ="${pageContext.request.contextPath}/app/jsp/board/boardShowMyPet.jsp">동물자랑</a></li>
                              <!-- <li class="nav_sub_header_li"><a></a>33</li> -->
                          </ul>
                      </li>
  
                     <!--  <li class="nav_header_li"  id="nav_header_li"><span>함께해요</span>
                          <ul class="nav_sub_header">
                              <li class="nav_sub_header_li"><a>봉사</a></li>
                              <li class="nav_sub_header_li"><a>후원(미정)</a></li>
                              <li class="nav_sub_header_li">33</li>
                          </ul>
                      </li> -->
  
                      <li class="nav_header_li"  id="nav_header_li"><span>공지사항
                      </span>
                          <ul class="nav_sub_header">
                              <li class="nav_sub_header_li"><a href ="${pageContext.request.contextPath}/app/jsp/board/boardFaq.jsp">자주하는 질문</a></li>
                              <li class="nav_sub_header_li"><a href ="${pageContext.request.contextPath}/app/jsp/board/boardQnA.jsp">1대1 온라인 문의</a></li>
                           
                              <!-- <li class="nav_sub_header_li">33</li> -->
                          </ul>
                      </li>
                      <li class="nav_header_li"  id="nav_header_li"><a href ="${pageContext.request.contextPath}/app/jsp/board/boardCompany.jsp"><span>소개</span></li>
                   
                          <ul class="nav_sub_header">
                              <!-- <li class="nav_sub_header_li"><a>맵핑</a></li> -->
                              <!-- <li class="nav_sub_header_li"><a>자주하는 질문</a></li> -->
                              <!-- <li class="nav_sub_header_li"><a>33</a></li> -->
                          </ul>
                      </li>
                  </ul>
                
              </nav>
              
              </div>
          </div>
          </div>
              
    <!-- 로그인 -->
    <fieldset class="login_wrap" id="login_wrap">
      <div class="login_header_text_wrap">
      <H1 class="login_header_text"><a style="text-decoration: none">로그인</a></H1>
      <a id="login_header_close" onclick="modalClose()">닫기</a>
      </div>   
  
      <form method="post" name="LoginForm" id="LoginForm" action="#" >
     
     
      <div class="input_box">
          <input type="text" id="user_id" placeholder="아이디"    class="input_box_input">
          <label class="input_box_label">아이디</label>
      </div>
  
  
      <div class="input_box">
          <input type="text" id="user_pw" placeholder="비밀번호" class="input_box_input">
          <label class="input_box_label">비밀번호</label>
      </div>
  
      <div class="left_util_area">
          <div>
          <input type="checkbox" name="save_id" id="save_id">
          <label for="saveid" >아이디 저장하기</label><br>
        </div>
        <div>
            <input type="checkbox" name="save_idpw" id="save_idpw">
            <label  for="saveidpw" >자동로그인</label>
        </div>
  
      </div>
  
   
  
      <div class="login_btn_area">
      <input type="button" value="로그인" name="user_login" id="user_login" class="user_login">


      <a href="javascript:void(0)" onclick="kakaoLogin(); " class="user_login" >
        <span>
            <img src="https://cdn.discordapp.com/attachments/947836644889870356/950256282940616734/kakao_login_medium_narrow.png" width="100%" height="50px" alt="" ></span>
                  </a>
      </div>
      
  
      <hr width="80%" color="#ddd"> 
      <div class="right_util_area">
        <a href="${pageContext.request.contextPath}/app/jsp/member/memberFind.jsp" class="find_idpw">아이디/비밀번호 찾기</a><br>
        <a href ="${pageContext.request.contextPath}/app/jsp/member/memberJoin1.jsp" class="join_btn">회원가입</a>
    </div>
      <!-- <div class="kakao_login">
      <a href="javascript:void(0)" onclick="kakaoLogin();" >
      <span>
          <img src="https://cdn.discordapp.com/attachments/947836644889870356/949691479830450266/kakao_login_medium_wide.png"alt="" ></span>
                </a>
         
      </div> -->
  
  
      </form>
  
  
  
  
  </fieldset>
      
  
  
  <!-- 모바일 앱 -->
  <div id="mobile_menu" class="mobile_menu" >
           <div id="close_btn" style="position: absolute; top: 0px; right: 0px; margin-top: 10px; margin-right: 10px; cursor: pointer; ">
        <img src="data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' width='23' height='23'%3E%3Cg fill='%23333'%3E%3Cpath d='M0 2.09L2.09 0 23 20.907 20.91 23z'/%3E%3Cpath d='M20.91 0L23 2.09 2.09 23 0 20.91z'/%3E%3C/g%3E%3C/svg%3E" alt="">
    </div>
       
        <ul class="mobil_header_ul">
             <!-- 11 -->
            <li class="mobil_header_li"><span class="mobil_header_li_span">
                
        <a>신고 및 제보</a>
                <img width="30px"; id="upimg"   src="data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' width='114.5' height='89' viewBox='0 0 114.5 89'%3E%3Cpath fill='none' stroke='%23666' stroke-width='6' stroke-miterlimit='10' d='M101.455 67.405L57.113 23.062l-7.48 7.474-38.629 38.632'/%3E%3C/svg%3E" alt="">
            </span>
                <ul class="mobil_sub_ul">
                    <li class="mobil_sub_li"><a>목격제보</a></li>
                    <li class="mobil_sub_li"><a>보호</a></li>
                   
                </ul>
            </li>
             <!-- 11 -->
            <li class="mobil_header_li"><span class="mobil_header_li_span">
                
        <a> 동물 찾기</a>
                <img width="30px"; id="upimg"  src="data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' width='114.5' height='89' viewBox='0 0 114.5 89'%3E%3Cpath fill='none' stroke='%23666' stroke-width='6' stroke-miterlimit='10' d='M101.455 67.405L57.113 23.062l-7.48 7.474-38.629 38.632'/%3E%3C/svg%3E" alt="">
            </span>
                <ul class="mobil_sub_ul">
                    <li class="mobil_sub_li"><a>유기동물 조회</a></li>
                    <li class="mobil_sub_li"><a>유기동물 지도</a></li>
                
                </ul>
            </li>
             <!-- 11 -->
            <li class="mobil_header_li"><span class="mobil_header_li_span">
                
        <a>           커뮤니티</a>
                <img width="30px"; id="upimg" src="data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' width='114.5' height='89' viewBox='0 0 114.5 89'%3E%3Cpath fill='none' stroke='%23666' stroke-width='6' stroke-miterlimit='10' d='M101.455 67.405L57.113 23.062l-7.48 7.474-38.629 38.632'/%3E%3C/svg%3E" alt="">
            </span>
                <ul class="mobil_sub_ul">
                    <li class="mobil_sub_li"><a>입양후기</a></li>
                    <li class="mobil_sub_li"><a>동물자랑</a></li>
                  
                </ul>
            </li>
             <!-- 11 -->
            <li class="mobil_header_li"><span class="mobil_header_li_span">
                
        <a>            공지사항</a>
                <img width="30px"; id="upimg"  src="data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' width='114.5' height='89' viewBox='0 0 114.5 89'%3E%3Cpath fill='none' stroke='%23666' stroke-width='6' stroke-miterlimit='10' d='M101.455 67.405L57.113 23.062l-7.48 7.474-38.629 38.632'/%3E%3C/svg%3E" alt="">
            </span>
                <ul class="mobil_sub_ul">
                    <li class="mobil_sub_li"><a>자주하는 질문</a></li>
                    <li class="mobil_sub_li"><a>1대1 온라인 문의</a></li>
                
                </ul>
            </li>
            <li class="mobil_header_li"><span class="mobil_header_li_span">
                
        <a>   소개</a>
               
            </span>
              
            </li>
            <li class="mobil_header_li"><span class="mobil_header_li_span">
                
        <a>   </a>
               
            </span>
              
             </li>
            <li class="mobil_header_li"><span class="mobil_header_li_span">
               
        <a>   로그인</a>
               
            </span>
              
            </li>
            <li class="mobil_header_li"><span class="mobil_header_li_span">
               
        <a>   회원가입</a>
               
            </span>
              
            </li>
        </ul>
        
    
    


  </div>








  
  
  
  
        <script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
   <script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/header.js" ></script>	
        </body>
</html>