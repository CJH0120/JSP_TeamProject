
var slides1 =document.querySelector('.slides1'),
slide1 =document.querySelectorAll('.slides1 li'),
currentIdx1 =0;
slideCount1 = slide1.length,
slideWidth1 =200,
slideMargin1 =30,
prevBtn1 = document.querySelector('.prev1'),
nextBtn1 = document.querySelector('.next1');
makeClone1();

function makeClone1(){
    for(var i=0; i<slideCount1; i++){

          var cloneSlide1 =slide[i].cloneNode(true);
          cloneSlide1.classList.add('clone1');
          slides1.append(cloneSlide1);
    }
    for( i= slideCount1 -1; i>=0; i--){
        var cloneSlide1 =slide1[i].cloneNode(true);
        cloneSlide1.classList.add('clone1');
        slides1.prepend(cloneSlide1);
    }
    updataWidth1();
    setInitialPos1();
    setTimeout(function(){
        slides1.classList.add('animated1');
    },2000);
}
function updataWidth1(){
    var currentSlides1 = document.querySelectorAll('.slides1 li');
    var newSlideCount1 = currentSlides1.length;

    var newWidth1 =(slideWidth1 + slideMargin1)*newSlideCount1 - slideMargin1 + 'px';
    slides1.style.width = newWidth1;
}

function setInitialPos1(){
    var initialTranslateValue1 = -(slideWidth1 + slideMargin1)* slideCount1;
    slides1.style.transform= 'translateX('+initialTranslateValue1+'px)';
}

nextBtn1.addEventListener('click',function(){
    moveSlide(currentIdx1+1);
});
prevBtn1.addEventListener('click',function(){
    moveSlide(currentIdx1-1);
});

function moveSlide1(num){
  slides1.style.left = -num * (slideWidth1 + slideMargin1) +'px';
  currentIdx1 =num;

  if(currentIdx1 == slideCount1){

      setTimeout(function(){
          slides1.classList.remove('animated1');
          slides1.style.left='0px';
          currentIdx=0;
      },500);
      setTimeout(function(){
          slides1.classList.add('animated1');
      },600);
  }
}


