<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자주 하는 질문</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/faq.css">
<script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
</head>
<body>

	<!-- header -->
<%@ include file="/app/jsp/fix/header.jsp" %>

<!-- middle -->
<div id="contentsWrap">
    <div id="contents">
        <div class="location_wrap"></div>
        <div class="location">
            <a onclick="location.href='${pageContext.request.contextPath}/app/jsp/index.jsp';" class="home"><span>홈 ></span></a>
            <a href="faq.jsp">공지사항 ></a>
            <a href="faq.jsp"><span>자주 하는 질문</span></a>
        </div>
        <div class="location_header">
            <h1>자주 하는 질문</h1>
            <p>Help_pet에 관한 궁금하신 사항을 확인하세요.</p>
        </div>
        <div class="location_area">
            <div class="center_wrap">
                <div class="search_area">
                    <span class="input_txt">
                        <input type="text" id="search_text_val" placeholder="검색어를 입력해주세요">
                        <button type="button" class="btn" onclick=""><span onclick="">검색</span></button>
                    </span>
                </div>
                <div class="faq_best">
                    <ul >
                        <li class="faq_best_li">
                            <p class="question_wrap" id="top">
                                <span class="icon"><img src="http://www.cjone.com/cjmweb/images/cscenter/ico_q.png"></span>
                                <span class="category">질문</span>
                                <button type="button" class="button" onclick="">
                                    <span class="title">입양신청은 공고기간 지난 동물들만 할 수 있나요?</span>
                                    <span class="underbtn">
                                        <img id="qwe" src="data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' width='114.5' height='89' viewBox='0 0 114.5 89'%3E%3Cpath fill='none' stroke='%23666' stroke-width='6' stroke-miterlimit='10' d='M101.455 67.405L57.113 23.062l-7.48 7.474-38.629 38.632'/%3E%3C/svg%3E" name="toggle_control1" style="width:30px; height:30px;">
                                       
                                </button>
                            </p>
                            <div class="answer_wrap">
                                <div class="cont">
                                    <span class="icon"><img src="http://www.cjone.com/cjmweb/images/cscenter/ico_a.png"></span>
                                    <div class="answer">
                                        <p>공고 기간 중에도 센터에서 대면상담을 통하여 입양 신청서 작성이 가능합니다.</p>
                                        <br>
                                        <p>입양절차는 공고기간이 끝난 후에 진행이 됩니다.</p>
                                    </div>
                                </div>
                            </div>
                        </li>




                        <li class="faq_best_li">
                            <p class="question_wrap">
                                <span class="icon"><img src="http://www.cjone.com/cjmweb/images/cscenter/ico_q.png"></span>
                                <span class="category">질문</span>
                                    <button type="button" class="button"><span class="title">유기동물을 발견하였을때는 어떻게 해야할까요?</span>
                                    <span class="underbtn">
                                        <img  id="qwe" src="data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' width='114.5' height='89' viewBox='0 0 114.5 89'%3E%3Cpath fill='none' stroke='%23666' stroke-width='6' stroke-miterlimit='10' d='M101.455 67.405L57.113 23.062l-7.48 7.474-38.629 38.632'/%3E%3C/svg%3E" name="toggle_control2" style="width:30px; height:30px;">
                                   </span></button>
                            </p>
                            <div class="answer_wrap">
                                <div class="cont">
                                    <span class="icon"><img src="http://www.cjone.com/cjmweb/images/cscenter/ico_a.png"></span>
                                    <div class="answer">
                                        <p>용인시 관내에서 유기동물을 구조하였을 경우에는 센터로 문의하여 주시거나, 동물구조과(031-324-3468)로 전화주시기 바랍니다.</p>
                                        <br>
                                        <p>- 공공장소를 떠돌거나 버려진 동물을 발견한 경우 관할 구청과 해당 유기동물 보호시설에 신고해야 합니다.</p>
                                        <br>
                                        <p>- 유기동물을 주인 없는 동물이라 여겨 마음대로 잡아서 팔거나 죽이면 1년 이하의 징역 또는 1천만원 이하의 벌금을 내게 됩니다.</p>
                                        <br>
                                        <p>- 구청·시청은 관내에서 발견된 유기동물이 보호받을 수 있도록 필요한 조치를 하고, 주인을 찾을 수 있도록 그 사실을 10일 이상 공고합니다.</p>
                                        <br>
                                        <p>- 공고 후 10일이 지나도 주인을 찾지 못한 경우, 해당 구청·시청이 동물의 소유권을 갖게 되어 개인에게 기증하거나 분양할 수 있습니다.</p>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="faq_best_li" >
                            <p class="question_wrap">
                                <span class="icon"><img src="http://www.cjone.com/cjmweb/images/cscenter/ico_q.png"></span>
                                <span class="category">질문</span>
                                    <button type="button" class="button" ><span class="title">입양후 파양이 가능한가요?</span><span class="underbtn">
                                    <img  id="qwe"src="data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' width='114.5' height='89' viewBox='0 0 114.5 89'%3E%3Cpath fill='none' stroke='%23666' stroke-width='6' stroke-miterlimit='10' d='M101.455 67.405L57.113 23.062l-7.48 7.474-38.629 38.632'/%3E%3C/svg%3E" name="toggle_control3" style="width:30px; height:30px;">
                                  </span></button>
                            </p>
                            <div class="answer_wrap">
                                <div class="cont">
                                    <span class="icon"><img src="http://www.cjone.com/cjmweb/images/cscenter/ico_a.png"></span>
                                    <div class="answer">
                                        <p>입양후 파양은 절대적으로 불가하므로 온가족의 동의하에 신중히 결정하셔야 합니다.</p>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="faq_best_li">
                            <p class="question_wrap">
                                <span class="icon"><img src="http://www.cjone.com/cjmweb/images/cscenter/ico_q.png"></span>
                                <span class="category">질문</span>
                                    <button type="button" class="button"><span class="title">후원 가능할까요?</span><span class="underbtn">
                                    <img  id="qwe" src="data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' width='114.5' height='89' viewBox='0 0 114.5 89'%3E%3Cpath fill='none' stroke='%23666' stroke-width='6' stroke-miterlimit='10' d='M101.455 67.405L57.113 23.062l-7.48 7.474-38.629 38.632'/%3E%3C/svg%3E" name="toggle_control4" style="width:30px; height:30px;">
                                   </span></button>
                            </p>
                            <div class="answer_wrap">
                                <div class="cont">
                                    <span class="icon"><img src="http://www.cjone.com/cjmweb/images/cscenter/ico_a.png"></span>
                                    <div class="answer">
                                        <p>물품으로 후원 받고 있습니다!</p>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="faq_best_li">
                            <p class="question_wrap">
                                <span class="icon"><img src="http://www.cjone.com/cjmweb/images/cscenter/ico_q.png"></span>
                                <span class="category">질문</span>
                                    <button type="button" class="button"><span class="title">후원 가능할까요?</span>
                                    <span class="underbtn">
                                        <img  id="qwe" src="data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' width='114.5' height='89' viewBox='0 0 114.5 89'%3E%3Cpath fill='none' stroke='%23666' stroke-width='6' stroke-miterlimit='10' d='M101.455 67.405L57.113 23.062l-7.48 7.474-38.629 38.632'/%3E%3C/svg%3E" name="toggle_control5" style="width:30px; height:30px;">
                                   </span></button>
                            </p>
                            <div class="answer_wrap">
                                <div class="cont">
                                    <span class="icon"><img src="http://www.cjone.com/cjmweb/images/cscenter/ico_a.png"></span>
                                    <div class="answer">
                                        <p>동물보호센터에서 보호중인 유기동물을 입양하면서 발생되는 비용은 없습니다.</p>
                                        <br>
                                        <p>그러나, 보호자님께서 입양 후, 반려동물을 위한 사료, 용품, 예방접종 등 정기적인 비용이 발생하므로, 
                                            경제적인 비용에 대해 신중히 생각하고 입양을 결정해주세요.</p>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
</div>
 
<!-- footer Include -->
 <%@ include file="/app/jsp/fix/footer.jsp" %>
 
</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/faq.js" ></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/header.js" ></script>
</html>