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
    <!-- ButtonAdmin2.css 파일의 스타일을 적용하겠다. -->
	<link rel="stylesheet"  href="/css/ButtonAdmin2_0.css" />
	<!-- Sidebar.css 파일의 스타일을 적용하겠다. -->
	<link rel="stylesheet"  href="${cpath}/css/Sidebar.css" />
	<!-- Datetime.css 파일의 스타일을 적용하겠다. -->
	<link rel="stylesheet"  href="/css/Datetime.css" />
	<!-- 우빈 : 카카오 지도 SDK -->
	<script src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=b1fc2610a3c9415f64affd1fc92ced5b&libraries=services"></script>
	<!-- 우빈 : buttonAdmin2_4 통계 차트 불러오기 밑의 style까지 세트-->
	<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

</head>
<body>

  	<!-- 전체 컨테이너 -->
  	<div class="buttonadmin2jsp">
  		
  		<!-- 사이드 바 -->
  		<!-- Sidebar.jsp 파일에서 작업하기! -->
  		<%@ include file="/WEB-INF/Sidebar.jsp" %>


    		
    		
<!--=====================================   메인   ======================================== -->   		
    		
        		
 		<div class="div">
 			
   			<div class="buttonadmin2jsp-div">
   			</div>
   			<div class="div2">
   			</div>
   			
   			<!-- 상단 관리자 프로필 -->
    		<!-- 클릭 시 ButtonAdmin5.jsp로 이동(관리자 정보 페이지) -->	   		
	   		<button type="button" class="div3" onclick="location.href='/ButtonAdmin5'">
	   			<!-- 프로필 이모티콘 -->
				<img class="icon" src="/image/accountCircle.svg">
				
				<!-- 관리자 이름 : DB에서 adminName값 가져오기! -->
				<b class="b">${sessionScope.loginAdmin.adminName} 관리자</b>
	     	</button>
   			
   			<!-- Zer0-Accident 텍스트 로고 -->  			
   			<div class="div4">
   				<b class="b2">대중교통 안전 관제 시스템</b>
   				<div class="zer0-accident">
   					<div class="buttonadmin2jsp-zer0-accident">Zer0-Accident</div>
   				</div>
   			</div>
   			
   			
<!--======================================== 메뉴 탭 ========================================-->   			
   			
   			 			
 			<div class="div5">
   				<div class="div6">
 					<div class="menu">
 						<!-- menu 타이틀 -->
   						<div class="buttonadmin2jsp-menu"> menu</div>
   						<!-- 구분선 -->
   						<div class="div7">
   						</div>
 					</div>
 					
 					
 					<div class="navigation">
 						
 						<!-- 운전자 관리 버튼 -->
 						<!-- 버튼 클릭 시 ButtonAdmin2_1.jsp로 이동(운전자 관리 페이지) -->
 						<!-- 버튼 클릭 시 div 색상 변경 link:회색(선택), link2:흰색(미선택)-->
   						<button type="button" class="link"
   						onclick="loadPage('${cpath}/ButtonAdmin2_1'); setActive(this);">
   							<!-- 아이콘 -->
   							<img class="groups-icon" src="/image/groups.svg">							
   							<div class="label">운전자 관리</div>
   						</button>
   						
   						<!-- 운전자 등록 버튼 -->
 						<!-- 버튼 클릭 시 ButtonAdmin2_2.jsp로 이동(운전자 등록 페이지) -->
 						<!-- 버튼 클릭 시 div 색상 변경 -->
   						<button type="button" class="link2"
   						onclick="loadPage('${cpath}/ButtonAdmin2_2'); setActive(this);">
   							<div class="user-plus">
   								<!-- 아이콘 -->
   								<img class="buttonadmin2jsp-icon" src="/image/regist.svg">    								
   							</div>
   							<div class="label">운전자 등록</div>
   						</button>
   						
   						<!-- 메시지 보내기 버튼 -->
 						<!-- 버튼 클릭 시 ButtonAdmin2_3.jsp로 이동(메시지 보내기 페이지) -->
 						<!-- 버튼 클릭 시 div 색상 변경 -->
   						<button type="button" class="link2"
   						onclick="loadPage('${cpath}/ButtonAdmin2_3'); setActive(this);">
   							<div class="user-plus">
   								<!-- 아이콘 -->
   								<img class="icon2" src="/image/Message.svg">    								
   							</div>
   							<div class="label">메시지 보내기</div>
   						</button>
   						
   						<!-- 통계 버튼 -->
 						<!-- 버튼 클릭 시 ButtonAdmin2_4.jsp로 이동(통계 페이지) -->
 						<!-- 버튼 클릭 시 div 색상 변경 -->
   						<button type="button" class="link2"
   						onclick="loadPage('${cpath}/ButtonAdmin2_4'); setActive(this);">
   							<div class="user-plus">
   								<!-- 아이콘 -->
								<img class="icon3" src="/image/Trending.svg">  								
   							</div>
   							<div class="label">통계</div>
   						</button>  												
 					</div>
   				</div>
 			</div>
   			
   			
<!--====================================== 날짜/시간 탭 =======================================-->
   			
   			<!-- Datetime.jsp 파일에서 작업하기! -->
	  		<%@ include file="/WEB-INF/Datetime.jsp" %>   			
   		
   			

<!-- ======================================= 메인 ========================================  -->   				
	 				
	 			
	   			<div class="div8">
						<!-- 우빈 : 현재 div8만 비통기통신되게 만듬. -->
	 			</div>
 			
 			</div>		
   		

   		<!-- 저작권 -->
   		<div class="copyright">
   			<div class="b">Copyright ⓒ 2025 Zo-A Co. All rights reserved.</div>
    	</div>
   			
 	</div>    		   		   		
  </div>
  
  	
<!-- 우빈 : 비동기 페이지 로드 함수 -->
<script>
  // div8 영역에 조각 JSP를 로드
  function loadPage(url) {
    fetch(url, { headers: { 'X-Requested-With': 'XMLHttpRequest' }})
      .then(res => res.text())
      .then(html => {
        const target = document.querySelector('.div8');
        target.innerHTML = html;

        // ✅ 추가: 삽입된 조각의 <script>들을 재주입하여 실행
        executeInlineScripts(target);

        // 기존 기능 유지
        if (typeof fillRegionsInDiv8 === 'function') {
          fillRegionsInDiv8();
        }
      })
      .catch(err => console.error(err));
  }

  // ✅ 삽입된 DOM 안의 <script>를 실행시키는 최소 유틸
  function executeInlineScripts(container) {
    const scripts = container.querySelectorAll('script');
    scripts.forEach((oldScript) => {
      const s = document.createElement('script');
      // src, type 등 속성 유지
      for (const {name, value} of oldScript.attributes) {
        s.setAttribute(name, value);
      }
      // inline 스크립트는 텍스트 복사
      if (!oldScript.src) s.text = oldScript.textContent;
      // 교체하면서 실행
      oldScript.parentNode.replaceChild(s, oldScript);
    });
  }

  // 버튼 색상 토글 함수 (원본 그대로)
  function setActive(clickedBtn) {
    document.querySelectorAll('.navigation button').forEach(btn => {
      btn.classList.remove('link', 'link2');
      btn.classList.add('link2');
    });
    clickedBtn.classList.remove('link2');
    clickedBtn.classList.add('link');
  }

  // 페이지 최초 로드 시 기본 탭(2_1) 자동 로드 (원본 그대로)
  document.addEventListener('DOMContentLoaded', function() {
    loadPage('${cpath}/ButtonAdmin2_1');
    const firstBtn = document.querySelector('.navigation button');
    if (firstBtn) firstBtn.classList.add('active');
  });
</script>

	
	<!-- 우빈 역지오코딩 (위도경도를 지역명으로) -->
	<script>
	  // (그대로 사용) 조각 JSP가 들어간 뒤 .region-text들을 행정동명으로 치환
	  function fillRegionsInDiv8() {
	    if (!window.kakao || !kakao.maps || !kakao.maps.services) return;
	    const geocoder = new kakao.maps.services.Geocoder();
	    const cache = new Map();
	
	    document.querySelectorAll('.div8 .region-text').forEach(function(el) {
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
	</script>
	
</body>
</html>