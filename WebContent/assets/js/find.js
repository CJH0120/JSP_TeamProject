/**
 * 
 */
 var emailRule = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
 var reg = /^[가-힣]{2,4}$/;
 var idReg = /^[a-zA-z0-9]{6,20}$/;
 var warning =  $('#warning')
 var warningg =  $('#warningg')
 var warninggg =  $('#warninggg')
 var warningggg =  $('#warningggg')
 
 
 $('#name').on("keyup" ,function(event) {
		
		if(!reg.test($("#name").val() ) ) {
			warning.css('color','red');
			warning.css('font-weight','bold');
			warning.css('font-size','10px');
			warning.html("<span class='none_text'> 한글만 입력해주세요 </span>" );      
	          } else {
	        warning.css('color','blue');
	        warning.html("<span class='none_text'> 확인되셧습니다 !</span>" );
	    	
	    }
	});
 
 $('#id_email').on("keyup" ,function(event) {
		
	 if(!emailRule.test($("#id_email").val() ) ) {
			warningg.css('color','red');
			warningg.css('font-weight','bold');
			warningg.css('font-size','10px');
			warningg.html("<span class='none_text'> 이메일만 입력해주세요 </span>" );      
	          } else {
	        warningg.css('color','blue');
	        warningg.html("<span class='none_text'> 확인되셧습니다 !</span>" );
	    	
	    }
	});
 
 ////
 $('#yourId').on("keyup" ,function(event) {
		
		if(!idReg.test($(this).val() ) ) {
			warninggg.css('color','red');
			warninggg.css('font-weight','bold');
			warninggg.css('font-size','10px');
			warninggg.html("<span class='none_text'> 아이디를 입력해주세요  </span>" );      
	          } else {
	        warninggg.css('color','blue');
	        warninggg.html("<span class='none_text'> 확인되셧습니다! </span>" );
	    	
	    }
	});

$('#pw_email').on("keyup" ,function(event) {
		
		if(!reg.test($('#pw_email').val() ) ) {
			warningggg.css('color','red');
			warningggg.css('font-weight','bold');
			warningggg.css('font-size','10px');
			warningggg.html("<span class='none_text'> 이메일만 입력해주세요  </span>" );      
	          } else {
	       warningggg.css('color','blue');
	       warningggg.html("<span class='none_text'> 확인되셧습니다!</span>" );
	    	
	    }
	});

 
 
 function find2Id(){	
		if(!reg.test( $('#name').val()  && !emailRule.test( $("#id_email").val()) ) ) {
			alert("다시 확인하세요");
		 	
	 }findPwForm.submit(); }
		 
 
function find2Pw(){
	 if( !emailRule.test( $("#pw_email").val() && !emailRule.test( $("#id_email").val()) ) ) {
		alert("다시 확인하세요");
	 }
	 findPwForm.submit();
}









