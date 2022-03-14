<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	@import url("fonts.googleapis.com/earlyaccess/notosanskr.css");
	section#petSanctuaryMap{
	    width: 660px;
	    height: 570px;
	    padding: 0px 17px 17px 17px;
	    font-family: 'Noto Sans KR', sans-serif;
    }
    section#petSanctuaryMap #map{
    width: 100%;
    height: 320px;
    fill: none;
    }
    section#petSanctuaryMap h1{
    	font-size: 22px;
    }
    
    section#petSanctuaryMap p {
        font-size: 14px;
    	font-weight: bold;
    }
    section#petSanctuaryMap p.subText {
        font-size: 12px;
        font-weight: normal;
    }
</style>
</head>
<body>
	<c:set var="careAddr" value="${careAddr}"/>
	<section id="petSanctuaryMap">
		<div>
			<h1>보호소 위치</h1>
		</div>
		<hr>
		<p>보호소주소 : <span id="careAddr">${careAddr}</span></p>
		<div id="map" style="width:100%;height:350px;"></div>
		<p class="subText">*방문 전 반드시 전화상담을 먼저 진행해 주세요.</p>
	</section>
</body>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e8c046fffe25962d6ea1d0fbd0d4d7cf&libraries=services"></script>
<script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
<script>
const careAddr = document.querySelector('#careAddr').innerText;
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
mapOption = { 
    center: new kakao.maps.LatLng(37.5440862, 126.862360), // 지도의 중심좌표
    level: 3 // 지도의 확대 레벨
};


var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다


console.log(careAddr)




//주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();

// 주소로 좌표를 검색합니다
geocoder.addressSearch(careAddr, function(result, status) {

    // 정상적으로 검색이 완료됐으면 
     if (status === kakao.maps.services.Status.OK) {

        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

      //마커가 표시될 위치입니다 

        
        // 결과값으로 받은 위치를 마커로 표시합니다
        var marker = new kakao.maps.Marker({
            map: map,
            position: coords
        });
		
  
        


        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
    } 
});    



//일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
var mapTypeControl = new kakao.maps.MapTypeControl();

//지도에 컨트롤을 추가해야 지도위에 표시됩니다
//kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

//지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
var zoomControl = new kakao.maps.ZoomControl();
map.addControl(zoomControl, kakao.maps.ControlPosition.LEFT);

//마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);

//아래 코드는 지도 위의 마커를 제거하는 코드입니다
//marker.setMap(null);   
</script>
</html>