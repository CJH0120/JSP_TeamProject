<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입 정보입력</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/join2.css">
    	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
</head>
<body>

<%@ include file="/app/jsp/fix/join_header.jsp" %> 
   
    <div class="step_img">
        <img src="https://cdn.discordapp.com/attachments/947836644889870356/949744730646913104/unknown.png" alt="">
    </div>
    <div class="wapper_join">
        <div class="join_step2"> </div>

        <p class="text_join">회원정보 입력<span><em>(필수)</em> <a class="text_join_a">입력사항을 꼭 써주시기 바랍니다.</a></span></p>
        <form action="${pageContext.request.contextPath }/member/MemberJoinOk.me" method="post" name="join1form" id="join1form"  >
        
            <div class="form_join">
                <ul class="form_join_ul">
                    <li class="form_join_li">
                        <div class="inputbox _btn">
                             
                             <input type="text" name="userId" id="userid" class="input_join" maxlength="15" placeholder="영문자로 시작하는 6~20자 영문자 또는 숫자로 입력해주세요" > 
                            <label class="inputbox_label">아이디<em id="list1">(필수)</em></label>
                          	</div>
                          	</li>

            		     <li class="form_join_li">
                        <div class="inputbox _btn">
                            <input type="text" name="userName" id="username" class="input_join" maxlength="6" placeholder="이름" > 
                            
                            <label class="inputbox_label">이름<em id="list2" >(필수)</em></label>
						</div>
					</li>
					
					
					
                    <li class="form_join_li">
                        <div class="inputbox _btn">
                            <input type="password" name="userPw" id="userpw" class="input_join" maxlength="20" placeholder="문자 숫자를 포함해 8자 이상입력해주세요" > 
                            <label class="inputbox_label">비밀번호<em id="list3">(필수)</em></label>
						</div>
					</li>
					
					 <li class="form_join_li">
                        <div class="inputbox _btn">
                            <input type="password" name="userRePw" id="reuserpw" class="input_join" maxlength="20" placeholder="비밀번호확인" > 
                            <label class="inputbox_label">비밀번호 확인<em id="list4">(필수)</em></label>
						</div>
					</li>
					
					   
                   
                   
                    <li class="form_join_li">
                        <div class="inputbox _btn">
                            <input type="text" name="userNickName" id="usernick" class="input_join" maxlength="10" placeholder="닉네임" > 
                            <label class="inputbox_label">닉네임<em id="list5">(필수)</em></label>
					</div>
					</li>
                    <li class="form_join_li">
                        <div class="inputbox _btn">
                            <input type="email" name="userEmail" id="useremail" class="input_join"  placeholder="이메일" > 
                            <label class="inputbox_label">이메일<em id="list6">(필수)</em></label>
                     </div>
                    </li>


                    <li class="form_join_li">
                        <div class="inputbox _btn">
                            <input type="tel" name="userHandPhone" id="userphone" class="input_join"  placeholder="하이픈(-)없이 입력해주세요" > 
                            <label class="inputbox_label">핸드폰<em id="list7">(필수)</em></label>
                         </div>
                    </li>
                    

                    <li class="form_join_li">
                        <div class="inputbox _btn">
                            <input type="text" name="userAnimalType" id="userpet" class="input_join"  placeholder="견종/묘종" > 
                            <label class="inputbox_label">견종/묘종</em></label>
                     </div>
                     
                    </li>

                </ul>

            </div>
            <div class="form_joinbtn">
                    <input  type="button" value="회원가입" class="form_joinbtn_button" onclick= "send()") >
                </div>


        </form>



    </div>
<script>
var contextPath = "${pageContext.request.contextPath }";

</script>
    
</body>

<%@ include file="/app/jsp/fix/footer.jsp" %> 
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/join2.js" ></script>
</html>