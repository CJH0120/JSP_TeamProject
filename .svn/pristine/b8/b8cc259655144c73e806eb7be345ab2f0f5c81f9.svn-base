<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1:1 온라인 문의</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/onlineQ&A.css">
<script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
</head>
<body>


	<!-- header -->
<%@ include file="/app/jsp/fix/header.jsp" %>

    <!-- Top -->
    <header>
        <div class="img">
            <div class="inner_txt">
                <h2>1:1 온라인 문의</h2> 
                <p>문의사항을 남겨주시면 빠른 시간에 답변드리겠습니다.</p>
            </div>
        </div>
    </header>

<!-- 페이지 네비게이션 -->
        <div class="pageNavigation">
            <div class="location">
                <a href="../jsp/index.jsp" class="home"><span>홈 ></span></a>
                <a href="Q&A.jsp">공지사항 ></a>
                <a href="Q&A.jsp"><span>1:1 온라인 문의</span></a>
            </div>
        </div>


    <!-- Middle -->
    <form class="wrap" name="inputForm">
        <div class="wrap_mid">
            <strong class="tit">연락 받으실 정보를 남겨주세요.
                <span class="necessary"><b>*필수</b>
                    입력 정보
                </span>
            </strong>
            <table class="info">
                <tr class="line">
                    <td class="col1"><label for="userName" class="userName" >이름</label></td>
                    <p id="nameCheck"></p>
                    <td class="col2">
                        <input type="text" name="input" class="input" id="userName" >
                        <em id="list1"></em>
                    </td>
                </tr>
                <tr>
                    <td class="col1"><label for="userEmail"  class="userEmail"></label>이메일</td>
                    <p id="emailCheck"></p>
                    <td class="col2">
                        <input type="text" name="input" class="input" id="userEmail" ><span>@</span>
                        <div class="selectset" style="width: 150px;">
                            <select class="emailSelect" name="emailSelect" title="이메일선택">
                                <option value="">메일선택</option>
                                <option value="naver.com">naver.com</option>
                                <option value="daum.net">daum.net</option>
                                <option value="hanmail.net">hanmail.net</option>
                                <option value="nate.com">nate.com</option>
                                <option value="gmail.com">gmail.com</option>
                                <option value="직접입력">직접입력</option>
                            </select>
                            	<em id="list2"></em>
                    </td>
                </tr>
                <tr>
                    <td class="col1"><label for="userTitle"></label>제목</td>
                    <td class="col2">
                        <input type="text" name="input" class="input">
                    </td>
                </tr>
                <tr>
                    <td class="col1"><label for="userContent" class="userContent"></label>문의내용</td>
                    <p id="contentCheck"></p>
                    <td class="col2">
                        <textarea placeholder="1000자 이내로 입력하세요." name="userContent" id="userContent" ></textarea>
                    </td>
                </tr>
            </table>
            <br>
            <div class="check_wrap">
                <p class="agree_check">
                    <input type="checkbox" class="input_check" name="check_privacy" id="check_privacy" value="Y" >
                    <label for="check_privacy">개인정보 수집 및 이용에 동의합니다.
                        <span class="color_red">(필수)</span>
                    </label>
                </p>
                <div class="agree_info">
                    <textarea class="agree_privacy2" name="agree_privacy2" cols="30" rows="10" readonly="readonly" disabled>
㈜헬프펫(이하＂회사＂라 한다.) 는 고객 상담과 서비스 문의 등을 위하여 아래와 같은 개인정보를 수집하고 있습니다.

1. 수집하는 개인정보 항목
필수 항목 :이름, 이메일,

2. 개인정보 수집 및 이용 목적
상담, 문의 신청 접수 및 결과 통보, 기타 민원 응대

3. 개인정보 보유 및 이용 기간
– 회사는 수집 이용 목적이 달성된 때에는 고객의 개인정보를 지체없이 파기합니다. 다만 상법, 전자상거래등에서의 소비자보호에 관한 법률 등 법령의 규정에 의하여 보존할 필요성이 있는 경우에는 아래의 예시와 같이 고객의 개인정보를 보관할 수 있습니다.
관계법령에 의한 보존 사유(예시)
이 경우 회사는 보관하는 정보를 그 보관의 목적으로만 이용하며 보존기간은 아래와 같습니다.
1) 계약 또는 청약철회 등에 관한 기록 : 5년
2) 대금결제 및 재화 등의 공급에 관한 기록 : 5년
3) 소비자의 불만 또는 분쟁처리에 관한 기록 : 3년

4. 동의를 거부할 권리와 거부에 따른 불이익
고객님께서 개인정보의 수집 및 이용에 동의하지 않을 권리가 있으며 미동의 시 서비스를 이용하실 수 없습니다.
                    </textarea>
                </div>
            </div>

            <div class="btn">
                <input type="button" class="submit_btn" value="확인" onclick="agreeCheck()">
            </div>

        </div>
    </form>

    <!-- footer Include -->
 <%@ include file="/app/jsp/fix/footer.jsp" %>
</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/onlineQ&A.js" ></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/index.jsjs" ></script>
</html>

