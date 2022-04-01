  
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



  