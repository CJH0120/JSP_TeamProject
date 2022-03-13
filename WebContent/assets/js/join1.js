/**
 * 
 */
//체크박스 중복 차단
//const $agree = $("#agree");
//const $disagree = $("#disagree");
//const $agree2 = $("#agree2");
//const $disagree2 = $("#disagree2");
//
//$agree.on('click', function(){
//    if($(this).is(":checked")){
//        $disagree.prop('checked', false);
//    }
//});
//
//$disagree.on('click', function(){
//	if($agree.is(":checked")){
//		$agree.prop('checked', false);
//	}
//    if(!$(this).is(":checked")){
//        $agree.prop('checked', false);
//    }
//});
//$agree2.on('click', function(){
//	if($(this).is(":checked")){
//		$disagree2.prop('checked', false);
//	}
//});
//
//$disagree2.on('click', function(){
//	if($agree2.is(":checked")){
//		$agree2.prop('checked', false);
//	}
//	if(!$(this).is(":checked")){
//		$agree2.prop('checked', false);
//	}
//});

//동의여부 검사
//는 아직 안됩니다
const form = document.joinForm;
//
//function checkAgree(){
//	var agree = form.agree.checked;
//	var agree2 = form.agree2.checked;
//	var disagree = form.disagree.checked;
//	var disagree2 = form.disagree2.checked;
//	if(!agree){
//		alert("동의해주세요.");
//	}
//}

//function checkAgree(){
//	if(!$agree.is(":checked") || !$agree2.is(":checked")){
//		alert("동의하셔야 합니다.");
//		$agree.focus();
//		return;
//	}
//	
//	if($disagree.is(":checked") || $disagree2.is(":checked")){
//		alert("동의하세요.");
//		return;
//	}
//	form.submit();
//}


// 이용약관 동의 유효성
function  checkradio() {
		var radioCheck= document.getElementById('checkAgree').checked;
		var radioCheck2= document.getElementById('checkAgree2').checked;
		
		if(!radioCheck==true || !radioCheck2==true){
				alert("약관에 동의 하셔야합니다.");
				return false ;
			}
		
	
			document.join_form.submit();{
				
			}
			
}






