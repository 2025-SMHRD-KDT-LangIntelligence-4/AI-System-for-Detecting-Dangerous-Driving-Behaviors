<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<!-- 웹 폰트 url(나눔 스퀘어 네오) -->
    <link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square-neo.css" rel="stylesheet">
    <!-- MainDriver.css 파일의 스타일을 적용하겠다. -->
	<link rel="stylesheet"  href="/css/MainDriver.css" />
	

</head>
<body>
	
	
  	<!-- 전체 컨테이너 -->
  	<div class="maindriverjsp">
  	
  		<!-- 상단 바 -->
		<!-- DriverHeader.jsp 파일에서 작업하기 -->
		<%@ include file="/WEB-INF/DriverHeader.jsp" %>
    	
    	<!-- 로고 -->	
    	<div class="div14">
			<div class="small">
  				<div class="maindriverjsp-small">
					<div class="small-child">
					</div>
					<div class="z0a">
  						<span>Z</span>
  						<span class="span2">0</span>
  						<span class="a">A</span>
					</div>
					<img class="small-item" src="/image/Rectangle 212.svg">
					<img class="small-inner" src="/image/Rectangle 212.svg"> 					
  				</div>
			</div>
    	</div>
    		
    			
 		<div class="maindriverjsp-div">
 		
 			<!-- Zer0-Accident 텍스트 로고 -->
   			<div class="div2">
				<div class="zer0-accident">
  					<div class="maindriverjsp-zer0-accident">
  						<p class="zer0-">         Zer0-</p>
  						<p class="accidentTitle">Accident</p>
  					</div>
				</div>
   			</div>
   			
   			
<!-- ====================================== 메인 ======================================= -->   			
   			
   			
   			<div class="parent">
   			
   				<!-- 타이틀 -->
 				<div class="div3">
   					<div class="div4">
   					
   						<!-- 운전자 이름 -->
   						<span class="driverName">위험 운전 경고 알림</span>
   					</div>
 				</div>
     			
     			<!-- 메시지 창 전체 컨테이너-->	
     			<div class="alert-card">
				    <img class="alert-icon" src="/image/alert.png">
				
				    <div class="alert-content">
				    
				        <div class="alert-inner">
				            <div class="alert-text-group">
				            
				                <div class="alert-title-wrapper">
				                    <b class="alert-title">[경고 알림]</b>
				                </div>
				                
				                <div class="alert-message-wrapper">
				                    <b class="alert-line">
				                    	
				                    	
				                    	<!-- 메시지 content -->
				                        <p class="alert-message">졸음 운전이 감지되었습니다. 
				                        창문을 열거나 근처 졸음쉼터에서 잠시 휴식을 취하세요.</p>
				                    </b>
				                </div>
				            </div>
				        </div>
				
				        <img class="alert-bg" src="/image/messagePop.svg">
				    </div>
				</div>
     				
 				
   			</div>
   			
   			<!-- 저작권 -->
   			<div class="copyright-2025">Copyright ⓒ 2025 Zo-A Co. All rights reserved.</div>
 			</div>
    		
  	</div> <!-- 전체 컨테이너 -->
  		
<!-- 우빈 : logIdx가지고 로그 상세 조회 -->
<script>
function viewLog(logIdx) {
  document.getElementById("logIdxInput").value = logIdx; // 값 주입
  document.getElementById("logForm").submit();           // POST 전송
}
</script>
	<!-- 우빈 역지오코딩 (위도경도를 지역명으로) -->
	<script>
	  // (그대로 사용) 조각 JSP가 들어간 뒤 .region-text들을 행정동명으로 치환
	  function fillRegionsInDiv8() {
	    if (!window.kakao || !kakao.maps || !kakao.maps.services) return;
	    const geocoder = new kakao.maps.services.Geocoder();
	    const cache = new Map();
	
	    document.querySelectorAll('.region-text').forEach(function(el) {
	      const lat = parseFloat(el.dataset.lat);
	      const lng = parseFloat(el.dataset.lng);
	
	      if (!Number.isFinite(lat) || !Number.isFinite(lng)) {
	        el.textContent = '(좌표 없음)';
	        return;
	      }
	
	      const key = lat.toFixed(6) + ',' + lng.toFixed(6);
	      const setText = (txt) => el.textContent = txt || '(지역정보 없음)';
	
	      if (cache.has(key)) {
	        setText(cache.get(key));
	        return;
	      }
	
	      // Kakao: x=경도(lng), y=위도(lat)
	      geocoder.coord2RegionCode(lng, lat, function(result, status) {
	        if (status === kakao.maps.services.Status.OK && result && result.length) {
	          const h = result.find(r => r.region_type === 'H') || result[0];
	          cache.set(key, h.address_name);
	          setText(h.address_name); // 예: "전남 순천시 조례동"
	        } else {
	          setText('(지역정보 없음)');
	        }
	      });
	    });
	  }
	  document.addEventListener("DOMContentLoaded", fillRegionsInDiv8);
	</script>
	
	
	
<!-- 소리 재생 -->	
<audio id="alertSound" src="${cpath}/sound/alert.mp3" preload="auto"></audio>

<script>
document.addEventListener("DOMContentLoaded", () => {
  if (localStorage.getItem("playSound") === "true") {
    const sound = document.getElementById("alertSound");
    sound.currentTime = 0;
    sound.play().catch(err => console.log("재생 실패:", err));
    localStorage.removeItem("playSound");
  }
});
</script>
</body>
</html>