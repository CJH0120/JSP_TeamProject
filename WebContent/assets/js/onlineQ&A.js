var form = document.inputForm

function agreeCheck(){
    var chk = form.check_privacy.checked;

    if(!form.userName.value){
    	alert("이름을 입력해주세요")
        form.userName.focus();
        return false;
    }
    if(!form.userEmail.value){
    	alert("이메일을 입력해주세요")
        form.userEmail.focus();
        return false;
    }

    if(!form.userContent.value){
    	alert("문의내용을 입력해주세요")
        form.userContent.focus();
        return false;
    }

    if(!chk){
        alert("약관에 동의해주세요.");
    }else{
        form.submit();
    }
}

$(document).ready(function(){
var e_reg = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])/; //이메일
var n_reg = /^[가-힣]{2,15}$/; //이름 유효성검사 정규식


//이름
$('#userName').on("keyup", function(event) {
	if(!n_reg.test($('#userName').val() ) ) {
        $('#list1').html("한글만 입력해주세요.");
        $('#list1').css('font-size','13px');
        $('#list1').css('color','red');
        }else{
        	$('#list1').html("확인되었습니다.");
        	$('#list1').css('font-size','13px');
        	$('#list1').css('color','blue');
        }
 });

//이메일
$('#userEmail').on("keyup", function(event) {
	if(!e_reg.test($('#userEmail').val())){
		$('#list2').html("영어와 숫자만 입력해주세요.");
        $('#list2').css('font-size','13px');
        $('#list2').css('color','red');
	}else{
    	$('#list2').html("확인되었습니다.");
    	$('#list2').css('font-size','13px');
    	$('#list2').css('color','blue');
    }
});
});
	







