

// $(".nav_header_li").hover(function(){
//     if($(".nav_sub_header").is(":visible")){
//         $(".nav_sub_header").css("display","none");
//         $(".header_fixed").css("background-color","rgba(255,255,255,0)" );
//       $("nav_sub_header_li").css("display","none");

//     }
//     else{
//         $(".nav_sub_header").css("display","block");
//         $(".header_fixed").css("background-color","rgba(255,255,255,0.8)" );
       
        
//     }
// })
$(document).ready(function(){

	$(".nav_sub_header").hide();
  

	
	
	$('.nav_header').mouseover(function(){	
		$(".header_fixed").css("height","250px");
		$(".nav_header").css("height","170px");
		$('.nav_sub_header').show();
		
		
		

	});
	$('.nav_header').mouseleave(function(){
		$(".header_fixed").css("height","0px");
		$(".nav_header").css("height","50px");
		$('.nav_sub_header').hide();
		
	});


    $("#mobile_menu").hide();
    $('.media_btn').click(function(){
        $("#mobile_menu").show('slow');
    })
    $('#close_btn').click(function(){
        $("#mobile_menu").hide('slow');
    })
 
    
    
    
    
    
    
    
    
    
    
span1 = $('.mobil_header_li_span'); 
li1 = $('.mobil_sub_ul'); 
img1= $('#upimg');

$('.mobil_sub_ul').hide();


$.each(span1, function(index, item){
    $(item).click(function(){
        if(!$(li1).is(':visible')){  
    
        $(li1[index]).show();
        $(this).find('#upimg').css('transform', 'scaleY(-1)');
        }else{
            $(li1[index]).hide('nomal');
            $(this).find('#upimg').css('transform', 'scaleY(1)');
        }
    })

});





    // $.each($btns, function(index, item){
//     $(item).click(function(){
//         $($aw[index]).slideToggle();
//     })
    


    // if(!$('subul').is(':visible')){      
    //   $(item[index]).show('slow');
    // $(this).find('#upimg').css('transform', 'scaleY(-1)');
   
    
    // }else{
    //         console.log('ddd');
    //     $(item[index]).hide('slow');
    //       $(this).find('#upimg').css('transform', 'scaleY(1)');
         
    //     }
      
    
    // })});





    });
//     $('.mobil_header_li_span').eq(0).click(function(){
//      if(!$(subul).eq(0).is(':visible')){          
       
//         $(subul).eq(0).show('nomal');
//         $('#upimg').eq(0).css('transform', 'scaleY(-1)');
//             }else{
//                 $(subul).eq(0).hide('nomal');
//                 $('#upimg').eq(0).css('transform', 'scaleY(1)');
//       }

//   })

//     $('.mobil_header_li_span').eq(1).click(function(){
//      if(!$(subul).eq(1).is(':visible')){          
       
//         $(subul).eq(1).show('nomal')
//             }else{
//                 $(subul).eq(1).hide('nomal')
//       }

//   })
//     $('.mobil_header_li_span').eq(3).click(function(){
//      if(!$(subul).eq(3).is(':visible')){          
       
//         $(subul).eq(3).show('nomal')
//             }else{
//                 $(subul).eq(3).hide('nomal')
//       }

//   })

//     $('.mobil_header_li_span').eq(2).click(function(){
//      if(!$(subul).eq(2).is(':visible')){          
       
//         $(subul).eq(2).show('nomal')
//             }else{
//                 $(subul).eq(2).hide('nomal')
//       }

//   })










//
//
//   function mobile_open() {
    
//     document.getElementById('mobile_menu').style.display='block';
   

//   }
//   function mobile_close() {
    
//     document.getElementById('mobile_menu').style.display='none';
   

//   }




// 위는 네비바 왔다리갔다리



$(window).on("wheel", function (event){

 
    if (event.originalEvent.deltaY < 0) {
        $(".header_flex").css("display","flex");
     
    }
    else {
        $(".header_flex").css("display","none");
    }
  });



function modalOpen() {
    
  
    document.getElementById('model_back').style.display='block';
    document.getElementById('login_wrap').style.display='block';
    document.querySelector('body').style.overflow = 'hidden';

    
}
function modalClose() {
    
  document.getElementById('model_back').style.display='none'
  document.getElementById('login_wrap').style.display='none'
	  document.querySelector('body').style.overflow= 'auto';

  
}


// 카카오 로그인

Kakao.init('148955e36743d0ad9064bf7587cb7f18'); //발급받은 키 중 javascript키를 사용해준다.
console.log(Kakao.isInitialized()); // sdk초기화여부판단
//카카오로그인
function kakaoLogin() {
    Kakao.Auth.login({
      success: function (response) {
        Kakao.API.request({
          url: '/v2/user/me',
          success: function (response) {
        	  console.log(response)
          },
          fail: function (error) {
            console.log(error)
          },
        })
      },
      fail: function (error) {
        console.log(error)
      },
    })
  }


