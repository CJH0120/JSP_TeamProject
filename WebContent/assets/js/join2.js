// 정규식 존
var check = false;
// 아이디 정규식
var regid = /^[a-z]+[a-z0-9]{5,19}$/m;
var regname = /^[가-힣]{3,6}$/m;
var regnick =/^([a-zA-Z0-9ㄱ-ㅎ|ㅏ-ㅣ|가-힣]){2,10}$/


var regExp = /^\d{3}\d{3,4}\d{4}$/;

var regpw =  /^(?=.*[a-zA-z])(?=.*[0-9])(?=.*[$`~!@$!%*#^?&\\(\\)\-_=+]).{7,16}$/;
var regemail =  /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;





$("#userid").blur(function () {
	
  $.ajax({
    url:
      contextPath + "/member/MemberCheckIdOk.me?UserId=" + $("#userid").val(),
    type: "get",
    dataType: "json",
    success: function (us) {
      if (us.status == "ok" && regid.test($("#userid").val())) {
        $("#list1").text("사용 가능한 아이디입니다.");
        $("#list1").css("color", "blue");
        check = true;
      } else {
        $("#list1").text("사용할수없거나 중복된 아이디입니다.");
        $("#list1").css("color", "red");
       check = false;
      }
    },
    error: function () {
      console.log("중복검사 오류");
    },
  });
});



$("#usernick").blur(function () {
	  $.ajax({
	    url:
	      contextPath + "/member/MemberCheckNickOk.me?userNickN=" + $("#usernick").val(),
	    type: "get",
	    dataType: "json",
	    success: function (us) {
	      if (us.status == "ok"  && regnick.test($("#usernick").val())) {
	        $("#list5").text("사용 가능한 닉네임입니다.");
	        $("#list5").css("color", "blue");
	        check = true;
	      } else {
	        $("#list5").text("사용할수없거나 중복된 닉네임입니다.");
	        $("#list5").css("color", "red");
	        check = false;
	      }
	      
	    },
	    error: function () {
	      console.log("중복검사 오류");
	    },
	  });
	});




$("#useremail").blur(function () {
	  $.ajax({
	    url:
	      contextPath + "/member/MemberCheckMailOk.me?UserEm=" + $("#useremail").val(),
	    type: "get",
	    dataType: "json",
	    success: function (us) {
	      if (us.status == "ok" &&regemail.test($("#useremail").val())) {
	        $("#list6").text("사용 가능한 이메일입니다.");
	        $("#list6").css("color", "blue");
	        check = true;
	      } else {
	        $("#list6").text("사용할수없거나 중복된 이메일입니다.");
	        $("#list6").css("color", "red");
	        check = false;
	      }
	    },
	    error: function () {
	      console.log("중복검사 오류");
	    },
	  });
	});

$("#userpw").blur(function () {
	if(!regpw.test($("#userpw").val())){
		  $("#list3").text("규정에 맞지않는 비밀번호입니다.");
	        $("#list3").css("color", "red");
	        return false;
	}
	else{
		$("#list3").text("확인되었습니다");
        $("#list3").css("color", "blue");
        
	}
});






$("#reuserpw").blur(function () {
	if(($("#reuserpw").val())  !==($("#userpw").val()) ){
		  $("#list4").text("비밀번호가 일치하지 않음");
	        $("#list4").css("color", "red");
	        return false;
	}
	else{
		$("#list4").text("확인되었습니다");
        $("#list4").css("color", "blue");
        
	}
});






$("#userphone").blur(function () {
	if(!regExp.test($("#userphone").val())){
		  $("#list7").text("하이픈(-)없이 숫자만입력해주세요");
	        $("#list7").css("color", "red");
	        return false;
	}
	else{
		$("#list7").text("확인되었습니다");
        $("#list7").css("color", "blue");
        
	}
});



$("#username").blur(function () {
	if(!regname.test($("#username").val())){
		  $("#list2").text("한글만 입력");
	        $("#list2").css("color", "red");
	        return false;
	}
	else{
		$("#list2").text("확인되었습니다");
        $("#list2").css("color", "blue");
        
	}
});










function send(){

	
	if(!check ){
		alert("놓친부분이있나 확인해보세요!");
		return;
	}
	if(!regid.test($("#userid").val())){
		alert("놓친부분이있나 확인해보세요!");
		return false;
	}
	
	if(!regnick.test($("#usernick").val())){
		alert("놓친부분이있나 확인해보세요!");
		return false;
	}
	if(!regemail.test($("#useremail").val())){
		alert("놓친부분이있나 확인해보세요!");
		return false;
		
	}if(!regpw.test($("#userpw").val())){
		alert("놓친부분이있나 확인해보세요!");
		return false;
	}if(($("#reuserpw").val())  !==($("#userpw").val()) ){
		alert("놓친부분이있나 확인해보세요!");
		return false;
		
	}if(!regExp.test($("#userphone").val())){
		alert("놓친부분이있나 확인해보세요!");
		
		return false;
	}
		
	
	

	join1form.submit();
}





