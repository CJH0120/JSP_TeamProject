<!DOCTYPE html>
<html>
    <head>
        <title>게시판 목록</title>
        <link href="${pageContext.request.contextPath}/assets/css/Protecting.css" rel="stylesheet"  type="text/css">

   	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    </head>
    <body>
    <%@ include file="/app/jsp/fix/header.jsp" %> 
    
    <div class="board_list_wrap">
        <table class="protect_board_list">
            <caption>게시판 목록</caption>
            <thead>
            
                <!-- <div style="text-align: right;">
                    <input type="button"   id="topbtn" value="글쓰기">
                     </div> -->
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




                <tr class="protect_board_tr">
                    <td class="protect_board_td"><input type="button" value="진행중" id="protect_ing_btn"></td>
                    <td class="protect_board_td"    id="tit">
                        <a href="#">집나간 강아지 찾아주세요</a>
                    </td>
                    <td class="protect_board_td" >김말숙</td>
                    <td class="protect_board_td">2022-03-01</td>
                    <td class="protect_board_td">111</td>
                </tr>
                <tr class="protect_board_tr">
                    <td class="protect_board_td"><input type="button" value="완료·찾음"id="protect_find_btn" ></td>
                    <td class="protect_board_td"   id="tit">
                        <a href="#">찾아주세요....</a>
                    </td>
                    <td class="protect_board_td">박순자</td>
                    <td class="protect_board_td">2022-02-29</td>
                    <td class="protect_board_td">222</td>
                </tr>
                <tr class="protect_board_tr">
                    <td class="protect_board_td"><input type="button" value="진행중" id="protect_ing_btn"></td>
                    <td class="protect_board_td"    id="tit">
                        <a href="#">돌아와,,,,,,//</a>
                    </td>
                    <td class="protect_board_td">김국만</td>
                    <td class="protect_board_td">2022-02-22</td>
                    <td class="protect_board_td">123</td>
                </tr>
                <tr class="protect_board_tr">
                    <td class="protect_board_td"><input type="button" value="완료·찾음"id="protect_find_btn" ></td>
                    <td class="protect_board_td"   id="tit">
                        <a href="#">저 울어요 ㅜ_ㅜ</a>
                    </td>
                    <td class="protect_board_td">박으뜸</td>
                    <td class="protect_board_td">2021-12-31</td>
                    <td class="protect_board_td">432</td>
                </tr>
                <tr class="protect_board_tr">
                    <td class="protect_board_td"><input type="button" value="완료·찾음"id="protect_find_btn" ></td>
                    <td class="protect_board_td"   id="tit">
                        <a href="#">저 울어요 ㅜ_ㅜ</a>
                    </td>
                    <td class="protect_board_td">박으뜸</td>
                    <td class="protect_board_td">2021-12-31</td>
                    <td class="protect_board_td">432</td>
                </tr>
                <tr class="protect_board_tr">
                    <td class="protect_board_td"><input type="button" value="완료·찾음"id="protect_find_btn" ></td>
                    <td class="protect_board_td"   id="tit">
                        <a href="#">저 울어요 ㅜ_ㅜ</a>
                    </td>
                    <td class="protect_board_td">박으뜸</td>
                    <td class="protect_board_td">2021-12-31</td>
                    <td class="protect_board_td">432</td>
                </tr>
                <tr class="protect_board_tr">
                    <td class="protect_board_td"><input type="button" value="완료·찾음"id="protect_find_btn" ></td>
                    <td class="protect_board_td"   id="tit">
                        <a href="#">저 울어요 ㅜ_ㅜ</a>
                    </td>
                    <td class="protect_board_td">박으뜸</td>
                    <td class="protect_board_td">2021-12-31</td>
                    <td class="protect_board_td">432</td>
                </tr>
                <tr class="protect_board_tr">
                    <td class="protect_board_td"><input type="button" value="완료·찾음"id="protect_find_btn" ></td>
                    <td class="protect_board_td"   id="tit">
                        <a href="#">저 울어요 ㅜ_ㅜ</a>
                    </td>
                    <td class="protect_board_td">박으뜸</td>
                    <td class="protect_board_td">2021-12-31</td>
                    <td class="protect_board_td">432</td>
                </tr>
                <tr class="protect_board_tr">
                    <td class="protect_board_td"><input type="button" value="완료·찾음"id="protect_find_btn" ></td>
                    <td class="protect_board_td"   id="tit">
                        <a href="#">저 울어요 ㅜ_ㅜ</a>
                    </td>
                    <td class="protect_board_td">박으뜸</td>
                    <td class="protect_board_td">2021-12-31</td>
                    <td class="protect_board_td">432</td>
                </tr>
                <tr class="protect_board_tr">
                    <td class="protect_board_td"><input type="button" value="완료·찾음"id="protect_find_btn" ></td>
                    <td class="protect_board_td"   id="tit">
                        <a href="#">저 울어요 ㅜ_ㅜ</a>
                    </td>
                    <td class="protect_board_td">박으뜸</td>
                    <td class="protect_board_td">2021-12-31</td>
                    <td class="protect_board_td">432</td>
                </tr>
                <tr class="protect_board_tr">
                    <td class="protect_board_td"><input type="button" value="완료·찾음"id="protect_find_btn" ></td>
                    <td class="protect_board_td"   id="tit">
                        <a href="#">저 울어요 ㅜ_ㅜ</a>
                    </td>
                    <td class="protect_board_td">박으뜸</td>
                    <td class="protect_board_td">2021-12-31</td>
                    <td class="protect_board_td">432</td>
                </tr>
                <tr class="protect_board_tr">
                    <td class="protect_board_td"><input type="button" value="완료·찾음"id="protect_find_btn" ></td>
                    <td class="protect_board_td"   id="tit">
                        <a href="#">저 울어요 ㅜ_ㅜ</a>
                    </td>
                    <td class="protect_board_td">박으뜸</td>
                    <td class="protect_board_td">2021-12-31</td>
                    <td class="protect_board_td">432</td>
                </tr>
                <tr class="protect_board_tr">
                    <td class="protect_board_td"><input type="button" value="완료·찾음"id="protect_find_btn" ></td>
                    <td class="protect_board_td"   id="tit">
                        <a href="#">저 울어요 ㅜ_ㅜ</a>
                    </td>
                    <td class="protect_board_td">박으뜸</td>
                    <td class="protect_board_td">2021-12-31</td>
                    <td class="protect_board_td">432</td>
                </tr>
        
            </tbody>
        </table>
        <div class="under_num">
            <div><a></a></div>
            <div>
            <a href="#" class="num on">1</a>
            <a href="#" class="num">2</a>
            <a href="#" class="num">3</a>
            </div>
            <div><input type="button" value="글쓰기" id="writebtn"></div>
        </div>
    </div>
        
        <%@ include file="/app/jsp/fix/footer.jsp" %>
    </body>
</html>