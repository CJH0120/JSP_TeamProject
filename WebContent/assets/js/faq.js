// const $btns = $('.button');
// const $aw = $('.answer_wrap');

// //$('.grid').hover(function(){
// //    
// //    $(this).find('.g_text').fadeIn(300);
// //   $(this).find('.g_text').css('display','flex');
// // },function(){
// //    $(this).find('.g_text').fadeOut();
// //
// // })

// $.each($btns, function(index, item){
//     $(item).click(function(){
//         $($aw[index]).slideToggle();
//     })
// });

// $("img[name='toggle_control1']").click(function(){
// 	$("img[name='toggle_control1']").toggle();
// })
// $("img[name='toggle_control2']").click(function(){
// 	$("img[name='toggle_control2']").toggle();
// })
// $("img[name='toggle_control3']").click(function(){
// 	$("img[name='toggle_control3']").toggle();
// })
// $("img[name='toggle_control4']").click(function(){
// 	$("img[name='toggle_control4']").toggle();
// })
// $("img[name='toggle_control5']").click(function(){
// 	$("img[name='toggle_control5']").toggle();
// })



// $('.button1').click(function(){
//     if($('.answer_wrap1').css("display") == "none"){
//         $('.answer_wrap1').show();
//         }else{
//         $('.answer_wrap1').hide();
//     }
// })
// $('.button2').click(function(){
//     if($('.answer_wrap2').css("display") == "none"){
//         $('.answer_wrap2').show();
//     }else{
//         $('.answer_wrap2').hide();
//     }
// })
// $('.button3').click(function(){
//     if($('.answer_wrap3').css("display") == "none"){
//         $('.answer_wrap3').show();
//     }else{
//         $('.answer_wrap3').hide();
//     }
// })
// $('.button4').click(function(){
//     if($('.answer_wrap4').css("display") == "none"){
//         $('.answer_wrap4').show();
//     }else{
//         $('.answer_wrap4').hide();
//     }
// })
// $('.button5').click(function(){
//     if($('.answer_wrap5').css("display") == "none"){
//         $('.answer_wrap5').show();
//     }else{
//         $('.answer_wrap5').hide();
//     }
// })


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