
$(document).ready(function(){
	$('.faq_best_li').click(function(){
		  // 대답이 보여지지않을때 
		  if(!$('.answer_wrap').is(':visible'))
		  {
			 // 대답
		  $(this).find('.answer_wrap').css('display','block')
		  // 사진
		  $(this).find('#qwe').css('transform', 'scaleY(-1)');
	   }else{
		  $(this).find('.answer_wrap').css('display','none')
		  $(this).find('#qwe').css('transform', 'scaleY(1)');
	   }
	})
	});