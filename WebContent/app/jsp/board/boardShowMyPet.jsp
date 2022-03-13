<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>동물 자랑 게시판</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/footer.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/header.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css">
<style>
@font-face {
    font-family: 'GangwonEdu_OTFBoldA';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2201-2@1.0/GangwonEdu_OTFBoldA.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
	.content{
         width: 1200px;
         height: auto;
         margin: 0 auto;
         margin-top: 340px;
         padding-bottom: 110px;
      }
   .contentHeader, .wrapForm{
         width: 50%;
         margin: 0 auto;
      }

      .contentHeader{
         text-align: center;
         font-size: 28px;
      }

      .contentHeader div{
         font-size: 46px;
         font-weight: 100;
      }
      .bgForm{
         
            height: 150px;
            padding: 50px;
            margin-top: 50px;
            background: #fafafa;
      }
      ul{
         list-style: none;
         margin: 0;
         margin: 0;
         padding: 0;
         border: 0;
      }
      body {
         margin: 0px;
         padding: 0px;
      }
      .grid{
      border: 1px solid #e6e6e6;
      width: 380px;
      height: 400px;
      margin-bottom: 30px;
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
      .gridContainer{
         width: 100%;
         margin-top: -100px;
         margin-bottom: 70px;
         display: grid;
         grid-template-columns: repeat(4, 1fr);
          /* display: inline-block;  */
          grid-column-gap: 17.5px;
         grid-row-gap: 30px;
         
      }
      
       .gridContainer li{
         width: 300px;
         margin-top : 120px;
          /* float: left; */
      } 
      .gridContainer  li:nth-child(3n+1){margin-left: 0;}


      .g_img{
         width: 284px;
         height: 221px;
         position: relative;
         text-align: center;
      }

      .g_img img {
         width: 300px;
         height: 135%;
         margin-right: 81px;
      }
      /* .g_img > p{
         position: absolute;
         top: -4px;
            left: 12px;
         background-color: #4486bc;
         border-radius: 30px;
         padding: 5px 10px;
         color: #fff;
         font-size: 14px;
         font-weight: 600;
      } */

      .wrapForm .dateIntput{
         width: 160px;
         height: 40px; 
         margin-bottom: 25px;
      }
      .wrapForm select{
         width: 129px;
            height: 40px;

      }
      .dateDiv{
         display: inline-block;
         
      }
      .dateDivWrap{
      text-align: center;
      }
      .selectWrap{
         text-align: center;
      }
      .btnWrap{
         text-align: center;
         margin-top: 15px;
      }
      .btnWrap button{
         width: 196px;
            height: 40px;
      }
      .g_text{
         padding: 79px 15px;
      }
      .g_text p{
        
            min-width: 70px;
            font: normal normal 14px/1.6 "Gulim"; 
            color: #111111; 
            margin: 8px 0px 8px 0px;
      }
      .paging{
         width: 100%;
         text-align: center;
         margin-left: 70px;
         
      }
      .paging a{
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
      button img{
         width: 20px;
         height: 20px;
         margin-bottom: 3px;
      }
      .clockPicture{
         width: 20px;
         height: 20px;
      }
      button{ 
         padding: 0;
         border: 0;
         background: none;
         cursor: pointer;
         display: inline;
      }
      #petsBanner{
         position: relative;
         margin-left: 95px;
         margin-top: -120px;
      }
      .petsText{
         position: absolute;
	    font-size: 23px;
	    left: 300px;
  	  	top: 125px;
	    font-family: 'GangwonEdu_OTFBoldA';
      }
      .petsImg{
        margin-left: -98px;
      }
      .petsImg img{
        width: 105%;
         /* opacity: 0.8; */
      }
        @font-face {
    font-family: 'ONE-Mobile-Title';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2105_2@1.0/ONE-Mobile-Title.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
	.g_text p{
	 font-family: 'ONE-Mobile-Title';
	}
	
	.main_page_banner a img{
	    width: 100%;
	    height: 800px !important;
	    opacity: 0.8;
    }
    #pageAndWrite{
		display: flex;
	    justify-content: center;
    }
    .writeBtn { 
    	    display: inline-block;
		    width: 50px;
		    height: 25px;
		    padding: 15px 20px 10px 20px;
		    text-decoration: none;
		    text-align: center;
		    margin-left: 1165px;
		    font-family: 'GangwonEdu_OTFBoldA';
		    font-size: 18px;
		    font-weight: bold;
		    color: white;
		    background: #EEC0DB;
		    border-style: solid;
		    border-radius: 3px;
		    border-width: 2px;
		    border-color: #EEC0DB;
    }
    .writeBtn:active{
    	border-color: #FF69B4;
    }
    .writeWrap{
    }
    section{
    	margin-right: 55px;
    }
    .date{
    	margin-left: 125px;
    	font-family: 'GangwonEdu_OTFBoldA';
    }
	.hitNum{
		font-family: 'GangwonEdu_OTFBoldA';
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

.title {
	display: inline;
}

.boardNum{
	visibility: hidden;
}
/* 페이징처리 css종료*/
</style>
</head>
<body>
<body>

<%@ include file="/app/jsp/fix/header.jsp" %> 

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
           
           <!-- 글쓰기 버튼 -->
           <div class="writeWrap">
         		<a class="writeBtn" href="${pageContext.request.contextPath}/app/jsp/board/showMyPetWrite.jsp">글쓰기</a>
         		</div>
             
           <!--동물 자랑 사진 게시판-->
            <ul class="gridContainer">
               <li class="grid" onclick="">                  
                     <div class="g_img">
                       <a href="#"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9Jd9_hPQz28nsMLeZiWsLPJdf_wogGhYMgQ&usqp=CAU" height="221px"></a>
                        <p></p>
                     </div>
                     <div class="g_text">
                        <p class="title"><span>밤순이 카페왔어용~ </span></p><span class="boardNum">번호:26</span>
                        <p> bamsoon1234</p>
                        <button type="submit"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3Y69Ohb8f9aXl6IsFFODFd4OxwkDO6gaE-A&usqp=CAU"></button>
                      	  									<span class=hitNum>5</span><span class="date"><img src="https://png.pngtree.com/element_our/png/20181113/wall-clock-logo-icon-design-template-vector-illustration-png_236712.jpg" class="clockPicture">2022-03-05</span>
                     </div>
               
               </li>
               <li class="grid" onclick="">
                  
                     <div class="g_img">
                        <a href="#"><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/6/6e/Golde33443.jpg/280px-Golde33443.jpg" height="221px"></a>
                        <p></p>
                     </div>
                     <div class="g_text">
                        <p class="title"><span>우리강아지에용</span></p><span class="boardNum">26</span>
                        <p>myPet1234</p>
                        <button type="submit"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3Y69Ohb8f9aXl6IsFFODFd4OxwkDO6gaE-A&usqp=CAU"></button>
                        									<span class="hitNum">6</span><span class="date"><img src="https://png.pngtree.com/element_our/png/20181113/wall-clock-logo-icon-design-template-vector-illustration-png_236712.jpg" class="clockPicture">2022-03-04</span>
                     </div>
                  
               </li>
               <li class="grid" onclick="">
                  
                     <div class="g_img">
                        <a href="#"><img src="https://blog.kakaocdn.net/dn/bTEhUV/btqECug9iOs/mxgZUk4MLJVCK3xtcNe6NK/img.jpg" height="221px"></a>
                        <p></p>
                     </div>
                     <div class="g_text">
                        <p class="title"><span>우리강아지에용</span></p><span class="boardNum">26</span>
                        <p>myPet1234</p>
                        <button type="submit"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3Y69Ohb8f9aXl6IsFFODFd4OxwkDO6gaE-A&usqp=CAU"></button>
                        									<span class="hitNum">7</span><span class="date"><img src="https://png.pngtree.com/element_our/png/20181113/wall-clock-logo-icon-design-template-vector-illustration-png_236712.jpg" class="clockPicture">2022-03-03</span>
                     </div>
                  
               </li>
               <li class="grid" onclick="">
                  
                     <div class="g_img">
                        <a href="#"><img src="https://post-phinf.pstatic.net/MjAxNzAyMjhfOTMg/MDAxNDg4MjYxODA4ODYz.8HZ-zLSPF_nIzsSyYi8x7aSd29aLo6AJmIoaHL1GHBog.DIz1kZtGy-8Tj_hVyTTGCoHtuA58PKzB7zAYqK4slVcg.JPEG/3.jpg?type=w1200" height="221px"></a>
                        <p></p>
                     </div>
                     <div class="g_text">
                        <p class="title"><span>우리강아지에용</span></p><span class="boardNum">26</span>
                        <p> myPet1234</p>
                        <button type="submit"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3Y69Ohb8f9aXl6IsFFODFd4OxwkDO6gaE-A&usqp=CAU"></button>
                        									<span class="hitNum">12</span><span class="date"><img src="https://png.pngtree.com/element_our/png/20181113/wall-clock-logo-icon-design-template-vector-illustration-png_236712.jpg" class="clockPicture">2022-03-01</span>
                     </div>
                  
               </li>
               <li class="grid" onclick="">
                  
                     <div class="g_img">
                        <a href="#"><img src="https://blog.kakaocdn.net/dn/bTEhUV/btqECug9iOs/mxgZUk4MLJVCK3xtcNe6NK/img.jpg" height="221px"></a>
                        <p></p>
                     </div>
                     <div class="g_text">
                        <p class="title"><span>우리강아지에용</span></p><span class="boardNum">26</span>
                        <p> myPet1234</p>
                        <button type="submit"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3Y69Ohb8f9aXl6IsFFODFd4OxwkDO6gaE-A&usqp=CAU"></button>
                        									<span class="hitNum">5</span><span class="date"><img src="https://png.pngtree.com/element_our/png/20181113/wall-clock-logo-icon-design-template-vector-illustration-png_236712.jpg" class="clockPicture">2022-03-05</span>
                     </div>
                  
               </li>
               <li class="grid" onclick="">
                  
                     <div class="g_img">
                        <a href="#"><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/6/6e/Golde33443.jpg/280px-Golde33443.jpg" height="221px"></a>
                        <p></p>
                     </div>
                     <div class="g_text">
                        <p class="title"><span>우리강아지에용</span></p><span class="boardNum">26</span>
                        <p>myPet1234</p>
                        <button type="submit"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3Y69Ohb8f9aXl6IsFFODFd4OxwkDO6gaE-A&usqp=CAU"></button>
                        									<span class="hitNum">5</span><span class="date"><img src="https://png.pngtree.com/element_our/png/20181113/wall-clock-logo-icon-design-template-vector-illustration-png_236712.jpg" class="clockPicture">2022-03-05</span>
                     </div>
                  
               </li>
               <li class="grid" onclick="">
                  
                     <div class="g_img">
                        <a href="#"><img src="https://blog.kakaocdn.net/dn/bTEhUV/btqECug9iOs/mxgZUk4MLJVCK3xtcNe6NK/img.jpg" height="221px"></a>
                        <p></p>
                     </div>
                     <div class="g_text">
                        <p class="title"><span>우리강아지에용</span></p><span class="boardNum">26</span>
                        <p>myPet1234</p>
                        <button type="submit"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3Y69Ohb8f9aXl6IsFFODFd4OxwkDO6gaE-A&usqp=CAU"></button>
                        									<span class="hitNum">5</span><span class="date"><img src="https://png.pngtree.com/element_our/png/20181113/wall-clock-logo-icon-design-template-vector-illustration-png_236712.jpg" class="clockPicture">2022-03-05</span>
                     </div>
                  
               </li>
               <li class="grid" onclick="">
                  
                     <div class="g_img">
                        <a href="#"><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/6/6e/Golde33443.jpg/280px-Golde33443.jpg" height="221px"></a>
                        <p></p>
                     </div>
                     <div class="g_text">
                        <p class="title"><span>우리강아지에용</span></p><span class="boardNum">26</span>
                        <p>myPet1234</p>
                        <button type="submit"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3Y69Ohb8f9aXl6IsFFODFd4OxwkDO6gaE-A&usqp=CAU"></button>
                        									<span class="hitNum">5</span><span class="date"><img src="https://png.pngtree.com/element_our/png/20181113/wall-clock-logo-icon-design-template-vector-illustration-png_236712.jpg" class="clockPicture">2022-03-05</span>
                     </div>
                  
               </li>
            </ul>


                  <!--페이징 -->
       <div id="pageAndWrite">
       
              <div class="under_num">

                        <a href="#" class="num on">1</a>
                        <a href="#" class="num">2</a>
                        <a href="#" class="num">3</a>

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
      </div>



   
         

   </section>
   <hr>
   <!-- content 종료-->


   <!-- 푸터 영역 -->
</body>
  <!-- footer Include -->
 <%@ include file="/app/jsp/fix/footer.jsp" %>
        <script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/header.js" ></script> 
</html>