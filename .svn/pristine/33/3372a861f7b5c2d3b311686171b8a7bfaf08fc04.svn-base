  
//  슬라이드 배너

var slideIndex = 1;
showSlides(slideIndex);


function plusSlides(n) {
  showSlides(slideIndex += n);
}


function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
 
  if (n > slides.length) {slideIndex = 1}
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";
  }
 
  slides[slideIndex-1].style.display = "block";
 
}
// 1번째 배너 오버
// $(document).ready(function(){
//   var a = $(".section_one_slide").get();
//   $.each(a, function(index, item){
//     console.log(index)
//   }


  // $(sectone[0]).hover(function(){
  //   $(texta[0]).css('display','block');

  // });
  
  // 만약 이미지를 호버하면 텍스트가 보인다.
  $('.mySlides_s').hover(function(){
       
    $(this).find('.g_text').fadeIn(300);
   $(this).find('.mySlides_ss').css('display','block');
 },function(){
    $(this).find('.mySlides_ss').fadeOut();

 })





  
  // $('.hover_text').each(function(idx){
  //   console.log('$[idx]');
  //   var value = $(this).index();
  //   var eqValue = $(".hover_text:eq(" + idx + ")").val() ;
         
  //   console.log(value + ":" + eqValue) ;


  // });
     
     



    /////////2번째 배너///////////
    var autoslideIndex = 0;
    autoshowSlides();
    
    function autoshowSlides() {
      var y;
      var autoslides = document.getElementsByClassName("automySlides");
    
      for (y = 0; y < autoslides.length; y++) {
        autoslides[y].style.display = "none";  
      }
      autoslideIndex++;
      if (autoslideIndex > autoslides.length) {autoslideIndex = 1}    
    
      
      autoslides[autoslideIndex-1].style.display = "block";  
      
      setTimeout(autoshowSlides, 4000); 
    }
    ///////////////////////
    
    
    // 두번째 슬라이드
  
    // 0 : 10, 1 : 20, 2: 30 출력 })

   



// $(".section_one_slide_2").hover(function(){	
//   $(".hover_text2").css("display","block");
//   $(".hover_texta").css("display","flex");
// },function() {
//   $(".hover_text2").css("display","none");
//   $(".hover_texta").css("display","none");
// });

// $(".section_one_slide_3").hover(function(){	
//   $(".hover_text3").css("display","block");
//   $(".hover_texta").css("display","flex");
// },function() {
//   $(".hover_text3").css("display","none");
//   $(".hover_texta").css("display","none");
// });

// $(".section_one_slide_4").hover(function(){	
//   $(".hover_text4").css("display","block");
//   $(".hover_texta").css("display","flex");
// },function() {
//   $(".hover_text4").css("display","none");
//   $(".hover_texta").css("display","none");
// });
// 2번째 배너










 // 슬라이드 배너 마우스 오버

 





/////////////////퀵메뉴 ////////////////////

	$('.q_nav_ul li:nth-child(1)').mouseover(function(){	
		$(".q_nav_ul li:nth-child(1)").css("transform","scale(1.3)");
		$(".q_nav_ul li:nth-child(1)").css("z-index","9999");
	});
    $('.q_nav_ul li:nth-child(1)').mouseleave(function(){
		$(".q_nav_ul li:nth-child(1)").css("transform","scale(1.0)");
        $(".q_nav_ul li:nth-child(1)").css("z-index","0");
	});

	$('.q_nav_ul li:nth-child(2)').mouseover(function(){	
		$(".q_nav_ul li:nth-child(2)").css("transform","scale(1.3)");
    $(".q_nav_ul li:nth-child(2)").css("z-index","9999");
	});
    $('.q_nav_ul li:nth-child(2)').mouseleave(function(){
		$(".q_nav_ul li:nth-child(2)").css("transform","scale(1.0)");
        $(".q_nav_ul li:nth-child(2)").css("z-index","0");
	});

	$('.q_nav_ul li:nth-child(3)').mouseover(function(){	
		$(".q_nav_ul li:nth-child(3)").css("transform","scale(1.3)");
    $(".q_nav_ul li:nth-child(3)").css("z-index","9999");
	});
    $('.q_nav_ul li:nth-child(3)').mouseleave(function(){
		$(".q_nav_ul li:nth-child(3)").css("transform","scale(1.0)");
        $(".q_nav_ul li:nth-child(3)").css("z-index","0");
	});

	$('.q_nav_ul li:nth-child(4)').mouseover(function(){	
		$(".q_nav_ul li:nth-child(4)").css("transform","scale(1.3)");
    $(".q_nav_ul li:nth-child(4)").css("z-index","9999");
	});
    $('.q_nav_ul li:nth-child(4)').mouseleave(function(){
		$(".q_nav_ul li:nth-child(4)").css("transform","scale(1.0)");
        $(".q_nav_ul li:nth-child(4)").css("z-index","0");
	});

	$('.q_nav_ul li:nth-child(5)').mouseover(function(){	
		$(".q_nav_ul li:nth-child(5)").css("transform","scale(1.3)");
    $(".q_nav_ul li:nth-child(5)").css("z-index","9999");
	});
    $('.q_nav_ul li:nth-child(5)').mouseleave(function(){
		$(".q_nav_ul li:nth-child(5)").css("transform","scale(1.0)");
        $(".q_nav_ul li:nth-child(5)").css("z-index","0");
	});
  