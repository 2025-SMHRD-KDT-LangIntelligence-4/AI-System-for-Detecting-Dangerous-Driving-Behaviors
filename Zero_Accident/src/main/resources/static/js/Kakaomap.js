// Kakaomap.js

window.onload = function () {
    var mapContainer = document.getElementById('map'),
        mapOption = {
            center: new kakao.maps.LatLng(34.933149, 127.492672),
            level: 3
        };

    var map = new kakao.maps.Map(mapContainer, mapOption);

    // 부모 마커 (파란색 마커)
    var markerPosition = new kakao.maps.LatLng(34.933149, 127.492672);
    var marker = new kakao.maps.Marker({
        position: markerPosition
    });
    marker.setMap(map);

    // 돌보미 마커들
	var positions = [
	    { title: '정세린 돌보미', latlng: new kakao.maps.LatLng(34.933685, 127.491927) },
	    { title: '오하영 돌보미', latlng: new kakao.maps.LatLng(34.933581, 127.493986) },
	    { title: '조지민 돌보미', latlng: new kakao.maps.LatLng(34.934613, 127.491843) },
	    { title: '김유라 돌보미', latlng: new kakao.maps.LatLng(34.931855, 127.492635) },
	    { title: '임윤아 돌보미', latlng: new kakao.maps.LatLng(34.933700, 127.493373) },

	    // 아래는 순천 전역에 퍼져 있는 추가 돌보미들
	    { title: '박지우 돌보미', latlng: new kakao.maps.LatLng(34.955100, 127.504200) },
	    { title: '최예린 돌보미', latlng: new kakao.maps.LatLng(34.987300, 127.538900) },
	    { title: '이하윤 돌보미', latlng: new kakao.maps.LatLng(34.975600, 127.480200) },
	    { title: '한소희 돌보미', latlng: new kakao.maps.LatLng(34.910800, 127.562300) },
	    { title: '유하나 돌보미', latlng: new kakao.maps.LatLng(34.921500, 127.458700) },
	    { title: '서지민 돌보미', latlng: new kakao.maps.LatLng(34.965200, 127.591600) },
	    { title: '장다윤 돌보미', latlng: new kakao.maps.LatLng(34.984700, 127.547200) },
	    { title: '김민서 돌보미', latlng: new kakao.maps.LatLng(34.926600, 127.470100) },
	    { title: '노윤서 돌보미', latlng: new kakao.maps.LatLng(34.944400, 127.588800) },
	    { title: '홍지아 돌보미', latlng: new kakao.maps.LatLng(34.969000, 127.520000) },
	    { title: '윤소이 돌보미', latlng: new kakao.maps.LatLng(34.905500, 127.575500) },
	    { title: '배지우 돌보미', latlng: new kakao.maps.LatLng(34.993800, 127.490900) },
	    { title: '이수빈 돌보미', latlng: new kakao.maps.LatLng(34.958200, 127.454800) },
	    { title: '정다인 돌보미', latlng: new kakao.maps.LatLng(34.972300, 127.563900) },
	    { title: '문서현 돌보미', latlng: new kakao.maps.LatLng(34.947100, 127.473300) },
	    { title: '백예진 돌보미', latlng: new kakao.maps.LatLng(34.951400, 127.582700) },
	    { title: '고서윤 돌보미', latlng: new kakao.maps.LatLng(34.913200, 127.494500) },
	    { title: '이다연 돌보미', latlng: new kakao.maps.LatLng(34.999900, 127.509900) },
	    { title: '양서연 돌보미', latlng: new kakao.maps.LatLng(34.962600, 127.560000) },
	    { title: '권민지 돌보미', latlng: new kakao.maps.LatLng(34.936800, 127.570500) },
		
		// 추가된 20명
	    { title: '이서윤 돌보미', latlng: new kakao.maps.LatLng(34.951700, 127.496000) },
	    { title: '박예은 돌보미', latlng: new kakao.maps.LatLng(34.951200, 127.492000) },
	    { title: '정민지 돌보미', latlng: new kakao.maps.LatLng(34.949500, 127.490000) },
	    { title: '강하은 돌보미', latlng: new kakao.maps.LatLng(34.950800, 127.488500) },
	    { title: '최지아 돌보미', latlng: new kakao.maps.LatLng(34.949700, 127.493300) },
	    { title: '배윤서 돌보미', latlng: new kakao.maps.LatLng(34.951000, 127.495700) },
	    { title: '이수현 돌보미', latlng: new kakao.maps.LatLng(34.948500, 127.494200) },
	    { title: '문예린 돌보미', latlng: new kakao.maps.LatLng(34.947900, 127.491800) },
	    { title: '윤하늘 돌보미', latlng: new kakao.maps.LatLng(34.950300, 127.489400) },
	    { title: '정서윤 돌보미', latlng: new kakao.maps.LatLng(34.952500, 127.490600) },
	    { title: '조유진 돌보미', latlng: new kakao.maps.LatLng(34.949300, 127.489900) },
	    { title: '김소윤 돌보미', latlng: new kakao.maps.LatLng(34.948000, 127.492500) },
	    { title: '하예림 돌보미', latlng: new kakao.maps.LatLng(34.950600, 127.496800) },
	    { title: '강서아 돌보미', latlng: new kakao.maps.LatLng(34.951900, 127.488800) },
	    { title: '이하은 돌보미', latlng: new kakao.maps.LatLng(34.949800, 127.496500) },
	    { title: '장하율 돌보미', latlng: new kakao.maps.LatLng(34.947700, 127.495200) },
	    { title: '서다온 돌보미', latlng: new kakao.maps.LatLng(34.947400, 127.489300) },
		
		
		{ title: '박지우 돌보미', latlng: new kakao.maps.LatLng(34.936192, 127.494488) },
		{ title: '김서윤 돌보미', latlng: new kakao.maps.LatLng(34.926354, 127.493420) },
		{ title: '이하준 돌보미', latlng: new kakao.maps.LatLng(34.932946, 127.488676) },
		{ title: '최지아 돌보미', latlng: new kakao.maps.LatLng(34.937715, 127.490718) },
		{ title: '윤도윤 돌보미', latlng: new kakao.maps.LatLng(34.939907, 127.495342) },
		{ title: '장하은 돌보미', latlng: new kakao.maps.LatLng(34.941220, 127.485281) },
		{ title: '백민준 돌보미', latlng: new kakao.maps.LatLng(34.943544, 127.484118) },
		{ title: '서예린 돌보미', latlng: new kakao.maps.LatLng(34.939380, 127.503833) }

		
	];
	
	



    var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png";

    for (var i = 0; i < positions.length; i++) {
        var imageSize = new kakao.maps.Size(24, 35);
        var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize);

        var marker = new kakao.maps.Marker({
            map: map,
            position: positions[i].latlng,
            title: positions[i].title,
            image: markerImage
        });
		
		// 클릭 시 sitterdetail로 이동
		(function(marker, title) {
		    kakao.maps.event.addListener(marker, 'click', function() {
		        window.location.href = '/SitterDetail/sitter6@naver.com';
		    });
		})(marker, positions[i].title);
    }
};


