<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/notification.css">
</head>
<body>
	   
	   <%@ include file="/app/jsp/fix/header.jsp" %> 
	   
    <div id="all_wrap">
        
        <!-- 페이지 네비게이션 -->
        <div class="pageNavigation">
            <div class="location">
                <a href="index.jsp" class="home"><span>홈 ></span></a>
                <a href="Q&A.jsp"><span>공지사항</span></a>
            </div>
        </div>

        <!-- 공지사항 타이틀 -->
        <div class="title">
            <span>공지사항</span>
        </div>
    
        <!-- 검색 -->
        <div class="search_area">
            <span class="input_txt">
                <select class="srchColumn">
                    <option label="제목">제목</option>
                    <option label="작성자">작성자</option>
                    <option laberl="내용">내용</option>
                </select>
                <input type="text" id="search_text_val">
                <button type="button" class="btn" onclick=""><span onclick="">검색</span></button>
            </span>
        </div>
    

        <!-- 게시판 -->
        <div class="board_list_wrap">
        <table class="protect_board_list">
            <caption>게시판 목록</caption>
            <thead>
                <tr class="protect_board_tr">
                    <th class="protect_board_th">분류</th>
                    <th class="protect_board_th">제목</th>
                    <th class="protect_board_th">글쓴이</th>
                    <th class="protect_board_th">작성일</th>
                    <th class="protect_board_th">조회</th>
                </tr>
            </thead>

            <tbody>
                <tr class="protect_notice_tr">
                    <td class="protect_notice_td"><input type="button" value="공지" id="protect_notice_btn"></td>
                    <td class="protect_notice_td"    id="tit">
                        <a href="#">※게시글 작성 방법 안내※</a>
                    </td>
                    <td class="protect_notice_td" >관리자</td>
                    <td class="protect_notice_td">2022-03-04</td>
                    <td class="protect_notice_td">456</td>
                </tr>
                <tr class="protect_notice_tr">
                    <td class="protect_notice_td"><input type="button" value="공지" id="protect_notice_btn"></td>
                    <td class="protect_notice_td"    id="tit">
                        <a href="#">『동물보호법』 견주 안전조치 의무 강화</a>
                    </td>
                    <td class="protect_notice_td" >관리자</td>
                    <td class="protect_notice_td">2022-03-04</td>
                    <td class="protect_notice_td">456</td>
                </tr>
                <tr class="protect_notice_tr">
                    <td class="protect_notice_td"><input type="button" value="공지" id="protect_notice_btn"></td>
                    <td class="protect_notice_td"    id="tit">
                        <a href="#">2021 동물등록 자진신고 및 집중단속 운영</a>
                    </td>
                    <td class="protect_notice_td" >관리자</td>
                    <td class="protect_notice_td">2022-03-04</td>
                    <td class="protect_notice_td">456</td>
                </tr>
                <tr class="protect_notice_tr">
                    <td class="protect_notice_td"><input type="button" value="공지" id="protect_notice_btn"></td>
                    <td class="protect_notice_td"    id="tit">
                        <a href="#">※게시글 작성 방법 안내※</a>
                    </td>
                    <td class="protect_notice_td" >관리자</td>
                    <td class="protect_notice_td">2022-03-04</td>
                    <td class="protect_notice_td">456</td>
                </tr>
                <tr class="protect_notice_tr">
                    <td class="protect_notice_td"><input type="button" value="공지" id="protect_notice_btn"></td>
                    <td class="protect_notice_td"    id="tit">
                        <a href="#">※게시글 작성 방법 안내※</a>
                    </td>
                    <td class="protect_notice_td" >관리자</td>
                    <td class="protect_notice_td">2022-03-04</td>
                    <td class="protect_notice_td">456</td>
                </tr>
                <tr class="protect_notice_tr">
                    <td class="protect_notice_td"><input type="button" value="공지" id="protect_notice_btn"></td>
                    <td class="protect_notice_td"    id="tit">
                        <a href="#">※게시글 작성 방법 안내※</a>
                    </td>
                    <td class="protect_notice_td" >관리자</td>
                    <td class="protect_notice_td">2022-03-04</td>
                    <td class="protect_notice_td">456</td>
                </tr>
            </tbody>
        </table>
        <div class="under_num">
           
            <a href="#" class="num on">1</a>
            <a href="#" class="num">2</a>
            <a href="#" class="num">3</a>
       
        </div>
    </div>
    
    <%@ include file="/app/jsp/fix/footer.jsp" %>
</body>
</html>