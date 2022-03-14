// 정규식 존
var check = false;
// 아이디 정규식
var regid = /^[a-z]+[a-z0-9]{5,19}$/m;
var regphone = /^01(?:0|1|[6-9])-(?:\d{3}|\d{4})-\d{4}$/;
var regpw =
  /^(?=.*[a-zA-z])(?=.*[0-9])(?=.*[$`~!@$!%*#^?&\\(\\)\-_=+]).{8,16}$/;
var regemail =
  /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;

var id = document.getElementById("userid");
var name = document.getElementById("username");
var pw = document.getElementById("userpw");
var repw = document.getElementById("reuserpw");
var nickname = document.getElementById("usernick");
var phone = document.getElementById("userphone");
var userpet = document.getElementById("userpet");
var listtext = document.getElementById("list1");


// 시간나면 변경 js
$("#userid").blur(function () {
	

  $.ajax({
    url:
      contextPath +
      "/member/MemberCheckIdOk.me?UserId=" + $("#userid").val(),
    type: "get",
    dataType: "json",
    success: function (us) {
    	
    	
      if ( us.status == "ok" && regid.test($("#userid").val()) ) {
      
        $("#list1").text("사용 가능한 아이디입니다.");
        $("#list1").css("color", "blue");
        check = true;
      } else {
    	  console.log('패스');
        $("#list1").text("사용할수없거나 중복된 아이디입니다.");
        $("#list1").css("color", "red");
     
      }
    },
    error: function () {
      console.log("중복검사 오류");
    },
  });
});


