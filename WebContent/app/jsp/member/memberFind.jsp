<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/find.css">
</head>
<body>

<%@ include file="/app/jsp/fix/header.jsp" %>

<!-- 전체 부분 -->
	<div id="wrap">
	
	
	<!-- 페이지 네비게이션 -->
        <div class="pageNavigation">
            <div class="location" style="text-align: left;">
	               	<a href="index.jsp" class="home"><span>홈 ></span></a>
	                <a href="find.jsp"><span>아이디/패스워드찾기</span></a>
            </div>
        </div>
  
        
  
        <!-- 아이디 패스워드찾기 -->
        <div id="title_wrap">
        	<h1 class="idPw_title">아이디/비밀번호 찾기</h1>
        </div>
		<div id="wrapper">
			<div id="contents">
				<h3 id="id">아이디 찾기</h3>
			<form action="#" name="findIdForm" id="findIdForm">
				<div class="id_find_wrap">
					<input type="text" id="name" placeholder="이름" maxlength="10">
				
				</div>
						<div><a id="warning" ></a></div>
					
					
				<div>
					<label for="email"></label> 
					<input type="text" id="id_email" name="email" placeholder="가입메일주소">
				</div>
					
					
				<br>
				
				<div><a id="warningg" ></a></div>
				
				<div>
					<input type="button" id="findId" value="아이디 찾기 이메일 전송" onclick="find2Id()">
				
				</div>
				
				
				
				
			</form>
			</div>
			<div id="contents">
				<h3>비밀번호 찾기</h3>
			<form action="#" name="findPwForm" id="findPwForm">
				<div>
					<input type="text" id="yourId" placeholder="아이디" maxlength="16">
						
				</div>
				<div><a id="warninggg" ></a></div>
				
				
				
				
				
				<div>
					 <input type="text"
						id="pw_email" name="email" placeholder="가입메일주소">
				</div>
				<div><a id="warningggg" ></a></div>
				
				
				<br>
				<div>
					<input type="button" id="findPassword" value="비밀번호 찾기 이메일 전송" onclick="find2Pw()">
				</div>
			</form>
			</div>
		</div>
	</div>
</body>
<!-- footer Include -->
 <%@ include file="/app/jsp/fix/footer.jsp" %>
        <script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
      
        <script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/find.js" ></script>
         
</html>