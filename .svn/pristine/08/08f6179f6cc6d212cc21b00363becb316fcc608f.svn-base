<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false" %>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.net.*"%>
<%
	//파일 기본경로
	String defaultPath = request.getSession().getServletContext().getRealPath("/");
	//파일 기본경로, 상세경로
	String filePath = defaultPath + "ckEimg" + File.separator;
%>
<html>
<head>
<meta charset="UTF-8">
<title>동물 자랑 작성</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/footer.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/header.css">
<style>
@import url('https://fonts.googleapis.com/css2?family=Varela+Round&display=swap');
@font-face {
    font-family: 'GangwonEdu_OTFBoldA';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2201-2@1.0/GangwonEdu_OTFBoldA.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
	body{
		margin: 0;
	    padding: 0;
	    border: 0;
	    outline: 0;
	    vertical-align: baseline;
	    background: transparent;
	}
	section{
	}
	table#write{
		width: 1200px;
		padding: 0;
		margin-top: 350px;
		margin-bottom: 25px;
		margin-left: 410px;
		margin-top: -51px;
		border-collapse: separate;
	    border-spacing: 0px;
    	max-width: 1050px;
    	font-family: 'Varela Round', sans-serif;
	}
	textarea{
		width: 850px;
		height: 350px;
	}
	textarea:focus{
		outline: none;
	}
	th{
		/* background-color: #fafafa; */
		background-color: #fafafa;
	    font-size: 15px;
	    color: #333;
	    font-weight: bold;
	    border-bottom: #e0e0e1 1px solid;
	    padding: 15px 30px;
	    text-align: left;
	    width: 150px;
	    vertical-align: middle;
        box-sizing: border-box;
    }       
	td{
		position: relative;
	    font-size: 14px;
	    color: #666;
	    font-weight: 400;
	    border-bottom: #e0e0e1 1px solid;
	    padding: 15px;	    
	}
	 .titleInput input:focus{
    	outline: 1px solid #a0a0a0;
    	border-radius: 3px; 
   	}
	.registerWrap{
		margin-left: 750px;
		margin-bottom: 120px;
		font-family: 'Varela Round', sans-serif;
	}
	.registerWrap input{
		width: 215px;
	    height: 50px;
	    border: none;
	    background-color: #EEC0DB;
	    color: white;
	    font-size: 16px;
	    font-weight: bold;
	   	cursor: pointer;
	   	transition: 0.3s;
	}
	.registerWrap input:hover{
		opacity: 0.7;
	}
	.registerWrap a{
		display: inline-block;
	    padding: 0 30px;
	    vertical-align: middle;
	    line-height: 48px;
	    margin: 0;
	    letter-spacing: -0.05em;
	    white-space: nowrap;
	    height: 49px;
	    color: #000;
	    border: #333 1px solid;
	    font-size: 16px;
	    text-align: center;
	    background-color: #fff;
	    margin-left: 8px;
	    margin-bottom:4px;
	    width: 153px;
	    text-decoration: none;
	    transition: 0.3s;
	    font-weight: bold;
	    }
	.registerWrap a:hover{
		background-color: #f5f5f5;
	}
	
	#petsBanner{
        margin-top: 230px;
        margin-bottom: 27px;
	    margin-left: 563px;
	    position: relative;
      }
    .petsText{
        position: absolute;
	    left: 220px;
	    top: 90px;
	    font-size: 16px;
	    font-family: 'GangwonEdu_OTFBoldA';
      }
      .petsImg{
        
      }
      .petsImg img{
         width: 760px;
      }
      .thickness{
      	text-decoration: none;
	    color: black;
	    font-weight: bolder;
      }
</style>
</head>
<body>
 <%@ include file="/app/jsp/fix/header.jsp" %> 
 <div class="main_page_section_wrap">
               <div class="main_visual">
                <section class="main_page_banner">
                   <span class="main_page_banner_text"> </span><a><img src="" alt=""></a>
                </section>
                </div>
           </div>
<!-- 배너 -->           
<div id="main_page_wrap">
 <section>
         <div class="content">
         
            <!--배너 사진-->
            <div id="petsBanner">
               <div class="petsText">
                   <h3>마이펫자랑하기</h3>
                   <p>소중한 반려동물의 사랑스러움을 마음껏 자랑해주세요!</p>
               </div>
               <div class="petsImg">
                   <img src="https://st4.depositphotos.com/1606449/25349/i/600/depositphotos_253492448-stock-photo-kitten-and-puppy-hanging-over.jpg">
               </div>
           </div>
 
 <!-- 작성폼 -->
 <div>
 <form action="#" method="post" enctype="multipart/form-data">
	<table id="write">
		<tbody>
			<tr>
				<th style="border-top: #ccc 1px solid">작성자</th>
				<td style="border-top: #ccc 1px solid">bamsoon1234</td>
			</tr>
			<tr>
				<th >제목</th>
				<td class="titleInput"><input type="text" style="width: 850px; height: 23px;" maxlength="13"></td>
			</tr>
			<tr>
				<th>썸네일이미지</th>
				<td style="font-size: 12px;"><input type="file" class="fileThumbnail" name="fileThumbnail"><br><br><b>(넓이 : 350px * 높이 : 350px)</b></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea name="content" id="editor"></textarea>
			</tr>
		</tbody>
	</table>
		<div class="registerWrap">
			<input type="submit" value="등록하기" onclick=""><a href="#">목록보기</a>
		</div>
</form>
</div>
</section>
</div>
</body>
    <!-- footer Include -->
 <%@ include file="/app/jsp/fix/footer.jsp" %>
        <script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/header.js" ></script> 
        <script src="${pageContext.request.contextPath}/assets/js/ckeditor/ckeditor.js"></script>
	<script>
	//게시판 에디터
    window.onload = function(){
       ck = CKEDITOR.replace("editor");
    };
    
    
    </script>
</html>