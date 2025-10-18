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

    <!-- MainAdmin.css 파일의 스타일을 적용하겠다. -->
   	<link rel="stylesheet"  href="/css/MainAdmin.css" />
   	<!-- Sidebar.css 파일의 스타일을 적용하겠다. -->
	<link rel="stylesheet"  href="/css/Sidebar.css" />
	<!-- 우빈 : 카카오 지도 SDK -->
	<script src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=b1fc2610a3c9415f64affd1fc92ced5b&autoload=false"></script>
	<!-- 우빈 : J Query 로드 -->
	<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
</head>
<body>

	<!-- 전체 컨테이너 -->
	<div class="mainadminjsp">
		
		<!-- 사이드 바 -->
		<!-- Sidebar.jsp 파일에서 작업하기! -->
  		<%@ include file="/WEB-INF/Sidebar.jsp" %>	

    		
    		
<!--=====================================   메인   ========================================= -->
  		
	   		   		
	<div class="div">
    	
    	<!-- 상단 관리자 프로필 -->
    	<!-- 클릭 시 ButtonAdmin5.jsp로 이동(관리자 정보 페이지) -->	   		
   		<button type="button" class="div95" onclick="location.href='/ButtonAdmin5'">
   			<!-- 프로필 이모티콘 -->
			<img class="icon13" src="/image/accountCircle.svg">
			
			<!-- 관리자 이름 : DB에서 adminName값 가져오기! -->
			<b class="search-here">${sessionScope.loginAdmin.adminName} 관리자</b>
     	</button>
     	
     	<!-- Zer0-Accident 텍스트 로고 -->
		<div class="div96">
			<div class="zer0-accident">
 				<div class="mainadminjsp-zer0-accident">Zer0-Accident</div>
			</div>
			<b class="b9">대중교통 안전 관제 시스템</b>
		</div>
    	
    	  		
    	<div class="notice-parent">   	   		
			<div class="notice">
			
<!--====================================== 날짜/시간 탭 =======================================-->
				
				
				<div class="div36">
					<div class="frame-parent">
					
						<!-- 현재 날짜 -->
						<div class="frame-group">
						
								<!-- 달력 아이콘 -->
 								<img class="frame-icon" src="/image/calender.svg">
 								
 								<!-- 실시간 표시로 변경 필요! -->
 								<div class="mainadminjsp-parent">
								    <div class="div37" id="dateDiv">
								        <span id="monthSpan"></span>
								        <span class="span5" id="daySpan"></span><span>일</span>
								    </div>
								    <div class="div38" id="weekdayDiv"></div>
								</div>
						</div>
 						
 						<!-- 현재 시간 -->	
						<div class="parent2">
							<!-- 구분선 -->
							<div class="div39">
							</div>
							
							<!-- 실시간 표시로 변경 필요! -->
							<div class="pm-wrapper">
 									<div class="search-here" id="currentTime"></div>
							</div>
						</div>
					</div>
				</div>
 					
 					
<!-- ======================================= 공지사항 탭 ===================================== -->	
				
				
				<div class="div40">
					<!-- 공지사항 1 -->
					<div class="div41">
						<img class="mainadminjsp-error-icon" src="/image/error.svg">
						
						<!-- 공지사항 contents -->
						<div class="search-here">
							<p class="p">졸음운전 취약 시간대입니다. </p>
							<p class="p">실시간 모니터링을 강화해주시기 바랍니다.</p>
						</div>
					</div>
					
					<!-- 공지사항 2 -->
					<div class="div41">
						<img class="mainadminjsp-error-icon" src="/image/Check2.svg">
						
						<!-- 공지사항 contents -->
						<div class="search-here">
							<p class="p">야간 시야 확보가 어려운 구간이 있으니,</p>
							<p class="p">전방 주시 상태를 지속적으로 점검해주시기 바랍니다.</p>
						</div>
					</div>
					
					<!-- 공지사항 3 -->
					<div class="div41">
						<img class="mainadminjsp-error-icon" src="/image/Check2.svg">
						
						<!-- 공지사항 contents -->
						<div class="search-here">
							<p class="p">운전 중 휴대전화 사용이 다수 감지되었습니다. </p>
							<p class="p">모니터링을 강화해주시기 바랍니다.</p>
						</div>
					</div>
					
				</div>
			</div>
			
			
<!-- ========================== 실시간 블랙박스 영상 및 경고 전송 버튼 ============================  -->


			<div class="div47">
			
				<!-- 슬라이드 바 -->
				<div class="div48">
					<div class="div49">
					</div>
					
					<!-- 해당 슬라이드 선택 시 색상 변경 -->
					<div class="dots">
						<img class="dots-child" src="/image/slideDot.svg">
						
						<img class="dots-child" src="/image/slideDot.svg">
						
						<img class="dots-child" src="/image/slideDot.svg">
						
						<img class="dots-child" src="/image/slideDot.svg">
						
						<img class="dots-child" src="/image/slideDot.svg">						
					</div>
				</div>
				
				
				<div class="div50">
				<c:forEach var="v" items="${videoList}">
					<!-- 블랙박스 1 -->
					<div class="div51">
					
						<!-- 상태바 -->
						<div class="div52">
						
							<!-- 위험 등급 표시 아이콘 -->
							<!-- eventLevel에 따라 색상 변경되어야 함 -->
							<div class="${v.eventColor}">
							</div>
							<div class="s101-parent">
							
								<!-- 운전자ID : DB에서 driverCode값 가져오기! -->
								<div class="search-here">${v.driverCode}</div>
								<!-- 구분선 -->
								<div class="line-div">
								</div>
								<!-- 차량번호 : DB에서 carNumber값 가져오기! -->
								<div class="search-here">${v.carNumber}</div>
								<!-- 구분선 -->
								<div class="line-div">
								</div>
								<!-- 위험 행위 종류 : DB에서 eventType값 가져오기! -->
								<!-- eventLevel에 따라 색상 변경되어야 함 -->
								<div class="${v.eventTypeColor}">${v.eventType}</div>
							</div>
						</div>
						
						<!-- 실시간 블랙박스 영상 -->
						<div class="div55">
						    <c:choose>
						        <c:when test="${not empty v.eventVideo}">
						            <video
						                src="${cpath}${v.eventVideo}"
						                class="blackbox-video"
						                style="width:100%; height:100%; object-fit:cover; border-radius:8px;"
						                controls
						                muted
						                autoplay
						                loop
						                playsinline
						                preload="metadata"
						            >
						                브라우저가 video 태그를 지원하지 않습니다.
						            </video>
						        </c:when>
						        <c:otherwise>
						            <div class="search-here">동영상 준비 중</div>
						        </c:otherwise>
						    </c:choose>
						</div>
						
						<!-- 경고 전송 버튼 -->
						<!-- 버튼 클릭 시 운전자에게 해당 위험 단계에 맞는 경고 발송 -->
						<button type="button" class="alert-btn">
							<div class="div57">
								<div class="alert-triangle">
									<!-- 경고 아이콘 -->
									<img class="icon5" src="/image/Danger.svg">									
								</div>
							</div>
						</button>
						
					</div> <!-- 블랙박스 끝 -->
					</c:forEach>
				</div>
			</div>
      	</div>
    	

<!-- ============================= 실시간 차량 위치 모니터링(지도) ==============================  -->

   	
    	<div class="div81"> <!-- (구)지도가 있던 공간 div -->
    	
    		<b class="b7" >실시간 차량 위치 모니터링</b>
    		
    		<!-- 우빈 : (신)카카오 지도 들어갈 공간 div
    		따로 css 빼지말고 독립적이게 인라인으로 넣는게 좋은 거 같음 -->
    		
   		  	<div id="mapContainer"
		       style="
		         top:35px;				/* 지도시작하는 부분 얼마나 내릴지 */
		         min-height: 95.5%;		/* 세로 */
		         width: 100%;			/* 가로 */
		         border-radius: 10px;	/* 꼭지점 둥글게 */
		         overflow: hidden;		/* 뭔지모름 gpt가 해줌 */
		         background: #2f2f36;	/* 로딩 중 배경 확인용. 뭔지모름 gpt가 해줌 */
		    "></div>
    			
      	</div>
      	
   	<div class="parent">
   			
   			
<!-- ======================================= 검색창 =======================================  -->   			
   			
   			
   				<div class="mainadminjsp-div">
   					<!-- 돋보기 아이콘 -->
   					<img class="child" src="/image/search.svg">
   					<!-- 검색바 클릭 시 검색창 나타나기 -->   					
   					<div class="div2">
   						<div class="search-here">Search here...</div>
   					</div>
   				</div>     				     				     				
   				
   				<!-- 검색창 클릭 시 나올 창 -->  				  			
   				<div class="div111">
	    			<div class="div222">
	    				<!-- 돋보기 아이콘 -->
		      			<img class="child11" src="/image/VectorBlue.svg">
		      			
		      			<!-- 검색어 입력란 -->
		      			<!-- name="searchTxt" : searchTxt가 포함된 운전자 정보 불러오기 -->
		      			<!-- DB에서 driverImg, driverIdx, driverName, carNumber, carType 가져오기 -->
		      			<input
		      			type="text"
		      			id="searchTxt"
		      			name="searchTxt"
		      			class="div333"
		      			>        				
		      			
						<!-- 창 닫기 버튼 -->		      			
		      			<button class="closeBtn">
		      			<img class="inner111" src="/image/close.svg">     			
		      			</button>
	      			
	    			</div>
	    			
	    			<!-- 검색 결과창 -->
		    		<div class="search-content">
		    			<!-- 검색 결과 리스트 -->
		      			<div class="div666">
		      				
		      				<!-- 반복문으로 동일한 검색 결과 4개 출력됨 -->
		      				<c:forEach var="i" begin="1" end="4">
		      					
		      					<!-- 검색 결과 -->
		        				<div class="searchResult">
		        					<!-- 운전자 사진 : DB에서 driverImg값 가져오기!  -->
		          					<img class="avatar-icon11" src="/image/driver1.png">
		          							          					
		          					<div class="div888">
		          					
		          						<!-- 운전자 ID -->
	            						<div class="frame-div11">
	              							<div class="s001-wrapper">
	              								
	              								<!-- DB에서 driverIdx값 가져오기! -->
                								<div class="s001">S001</div>
	              							</div>
	            						</div>
	            						
	            						<!-- 운전자 이름 -->
	            						<div class="div-inner11">
	              							<div class="div-inner11">
	              							
	              								<!-- DB에서 driverName값 가져오기! -->
                								<div class="s001">김영호</div>
	              							</div>
	            						</div>
	            						
	            						<!-- 차량 번호 -->
	            						<div class="inner22">
	              							<div class="s001-wrapper">
	              								
	              								<!-- DB에서 carNumber값 가져오기! -->
                								<div class="s001">서울 12아 3456</div>
	              							</div>
	            						</div>
	            						
	            						<!-- 차량 종류 -->
	            						<div class="inner33">
	              							<div class="s001-wrapper">
	              							
	              								<!-- DB에서 carType값 가져오기! -->
                								<div class="s001">택시</div>
	              							</div>
	            						</div>
		          					</div>
		        				</div>
		        			</c:forEach>		 				
		        				
		      			</div> <!-- 검색 결과 리스트 끝 -->
		      			
		    		</div> <!-- 검색 결과창 끝 -->
		    		
  				</div> <!-- 검색창 전체 컨테이너 끝 -->


<!-- ========================================= 통계 =======================================  -->   			

   				<div class="div3">
   					
   					<!-- 타이틀 -->
   					<div class="title">
   						<img class="vector-icon" src="/image/Vector.svg">  						
   						<div class="mainadminjsp-log">위험 운전 유형별 발생 건수</div>
     				</div>
     				
   					<div class="div4">
   						
						<!-- 연간 통계 버튼 -->
						<button type="button" class="div7" data-period="year"
						        >
						  <b class="search-here">연간</b>
						</button>
						
						<!-- 월간 통계 버튼 -->
						<button type="button" class="div5" data-period="month"
						        >
						  <b class="search-here">월간</b>
						</button>
						
						<!-- 주간 통계 버튼 -->
						<button type="button" class="div5" data-period="week"
						        >
						  <b class="search-here">주간</b>
						</button>
   						
   					</div>
     					
     <!-- ============ 위험 행위 발생 그래프 ============= -->	
   					<div id="div8" class="div8"> <!-- 그래프 감싸는 검정 div -->
   					
   						<div class="div9"> <!-- 그래프 좌우정렬 div -->
   						
   							<c:forEach var="e" items="${eventList }">
   							<!-- 운전자 폭행, 총 4개 그래프 반복문으로  -->
   							<div class="div10">
   								<div class="component-1-wrapper">
   									<div class="component-1">
   									
   										<!-- background bar -->
   										<div class="component-1-child">
   										</div>
   										
   										<div class="component-1-inner">
   											<!-- 실제 막대그래프 -->
   											<!-- 발생 횟수에 따라 height 자동 조절 -->
   											<div class="wrapper">
   												<!-- 일간 운전자 폭행 발생 횟수 : DB에서 가져오기! -->
   												<div class="div11">${e.cnt }</div>
   											</div>
   										</div>
   									</div>
   								</div>
   								
   								<!-- 라벨 -->
   								<div class="container">
   									<div class="div12">${e.eventType }</div>
   								</div>
   							</div> <!-- 4개 유형 그래프 중 1개 끝 -->
   							</c:forEach>

   						</div> <!-- 그래프 좌우 정렬 끝 -->
   					</div> <!-- 그래프 검정 배경 끝 -->   					
   				</div> <!-- 전체 그래프 회색 배경 끝 -->
     				
     				
<!-- ==================================== 운행 차량 대수 =====================================  -->   		     				
     			
     			
     			<div class="div34">
     				<!-- 대중교통 아이콘 -->
 					<img class="error-icon" src="/image/car.svg">
 					
 					<div class="search-here">
 					
 						<!-- 현재 운행 차량 대수 : DB에서 가져오기! -->
 						<!-- 차량 운행 유무 컬럼 없음 -->
   						<span class="span">${count}</span>
   						<span class="span4">대 운행중</span>
 					</div>
     			</div>
     				
     				
<!-- ================================ 위험 행위 발생 횟수(일간) ================================  -->   			     				     				
     					
     			<div class="div32">
     				<!-- 경고 아이콘 -->
 					<img class="error-icon" src="/image/error2.svg">
 					
 					<div class="search-here">
   						<span class="span">총 </span>
   						
   						<!-- 일간 위험 행위 발생 횟수 : DB에서 가져오기!  -->
   						<span class="mainadminjsp-span">${totalCount}</span>
   						<span class="span">건 발생</span>
 					</div>
     			</div>
     				
     				
<!-- ===================================== 로그 리스트 ======================================  -->   			     				     				     				
     				
     				     				     					
 				<div class="div23">
 					<!-- 로그 아이콘 -->
 					<img class="icon4" src="/image/log.svg">
 					
   					<!-- 타이틀 -->
   					<div class="log">
   						<div class="mainadminjsp-log">LOG</div>
   					</div>
   					
   					<!-- 로그 리스트 -->
   					<!-- 최신 로그 발생 시 자동 업데이트 -->
   					<div class="group">
   					<c:forEach var="log" items="${logList}">
   						<!-- 로그 1 -->
 						<div class="div24">
   							<div class="ellipse-parent">
   							
   								<!-- 위험 등급 표시 아이콘 --> 
								<!-- eventLevel에 따라 색상 변경되어야 함 frame-item -->
   								<div class="${log.eventColor}">
   								</div>
   								
   								<!-- 로그 정보 -->
   								<div class="wrapper6">
   									<!-- 위험 행위 발생 시각, 운전자 고유 ID, 위험 행위 종류
   									     : DB에서 createdAt, dirverIdx, eventType 값 가져오기 -->
   									<div class="div25">[${log.regDate}]  ${log.carNumber}  ${log.eventTypeKo}</div>
   								</div>
   							</div>
   							
   							<!-- 캠 버튼 클릭 시 블랙박스 영상 클립 띄워주기 -->
   							<button type="button" class="videoclip" onclick="location.href='#'">
   								<img class="icon" src="/image/videocam.svg">
   							</button>												
 						</div>
 						</c:forEach>
   					</div>  					
 				</div>   						  				
   			</div>
   			
   			<div class="div79">
   			</div>
   			<div class="div80">
   			</div>
      			      			
    	</div>
    	
    	<!-- 저작권 -->	
 		<div class="copyright">
   			<div class="search-here">Copyright ⓒ 2025 Zo-A Co. All rights reserved.</div>
 		</div>    	
  	</div>
	<script>
	    function updateTime() {
	        const now = new Date();
	
	        // 시, 분 가져오기
	        let hours = now.getHours();
	        let minutes = now.getMinutes();
	        let ampm = hours >= 12 ? 'PM' : 'AM';
	
	        // 12시간제 변환
	        hours = hours % 12;
	        hours = hours ? hours : 12; // 0시 → 12시
	
	        // 두 자리 숫자로 표시
	        hours = hours < 10 ? '0' + hours : hours;
	        minutes = minutes < 10 ? '0' + minutes : minutes;
	
	        // 표시
	        document.getElementById('currentTime').textContent = hours + ':' + minutes + ampm;
	    }
	
	    // 페이지 로드 시 바로 실행
	    updateTime();
	
	    // 1초마다 갱신
	    setInterval(updateTime, 1000);
	</script>
	<script>
	    function updateDateTime() {
	        const now = new Date();
	
	        // 월, 일
	        const month = now.getMonth() + 1; // 0~11 -> +1
	        const day = now.getDate();
	
	        // 요일
	        const weekdays = ["일요일", "월요일", "화요일", "수요일", "목요일", "금요일", "토요일"];
	        const weekday = weekdays[now.getDay()];
	
	        // 화면에 반영
	        document.getElementById("monthSpan").textContent = month + "월 ";
	        document.getElementById("daySpan").textContent = day;
	        document.getElementById("weekdayDiv").textContent = weekday;
	    }
	
	    // 페이지 로드 시 바로 실행
	    updateDateTime();
	
	    // 1분마다 업데이트 (자정 넘어가면 날짜가 바뀌도록)
	    setInterval(updateDateTime, 60000);
	</script>
	
	<!-- 카카오지도 JS -->
	<script>
	  kakao.maps.load(function() {
	    // 지도 표시할 div
	    const container = document.getElementById('mapContainer');
	
	    // 지도 중심 (기본 서울시청)
	    const center = new kakao.maps.LatLng(37.5665, 126.9780);
	    const map = new kakao.maps.Map(container, { center: center, level: 7 });
	
	    // 서버에서 받아온 운전자 데이터 (컨트롤러에서 model.addAttribute("drivers", drivers))
	    const drivers = [
	      <c:forEach var="d" items="${drivers}" varStatus="s">
	        {
	          name: "${d.driverName}",
	          contact: "${d.driverContact}",
	          lat: Number("${d.driverLat}"),
	          lng: Number("${d.driverLon}")
	        }<c:if test="${!s.last}">,</c:if>
	      </c:forEach>
	    ];
	
	    const bounds = new kakao.maps.LatLngBounds();
	    const infowindow = new kakao.maps.InfoWindow({ zIndex: 1 });
	
	    drivers.forEach(d => {
	      if (isNaN(d.lat) || isNaN(d.lng)) return;
	      const pos = new kakao.maps.LatLng(d.lat, d.lng);
	      bounds.extend(pos);
	
	      const marker = new kakao.maps.Marker({ position: pos, map });
	
	      const content = `
	        <div style="padding:8px; min-width:180px">
	          <b>${d.name || '운전자'}</b><br>
	          ${d.contact || '-'}
	        </div>`;
	      kakao.maps.event.addListener(marker, 'click', function() {
	        infowindow.setContent(content);
	        infowindow.open(map, marker);
	      });
	    });
	
	    if (drivers.length > 0) map.setBounds(bounds);
	  });
	</script>
	
	<!-- 검색창 토글 기능 -->
	
	<script>
	document.addEventListener("DOMContentLoaded", function() {
	  const searchBar = document.querySelector(".div2");       // 검색바
	  const searchPopup = document.querySelector(".div111");   // 검색창
	  const closeBtn = document.querySelector(".closeBtn");   // 닫기 버튼
	
	  // 검색창 열기 / 닫기 (검색바 클릭)
	  searchBar.addEventListener("click", function() {
	    searchPopup.style.display =
	      searchPopup.style.display === "block" ? "none" : "block";
	  });
	
	  // 닫기 버튼 클릭 시 검색창 닫기
	  closeBtn.addEventListener("click", function() {
	    searchPopup.style.display = "none";
	  });
	
	  // 외부 클릭 시 닫기
	  document.addEventListener("click", function(e) {
	    if (
	      !searchBar.contains(e.target) &&
	      !searchPopup.contains(e.target)
	    ) {
	      searchPopup.style.display = "none";
	    }
	  });
	});
	</script>
	
	<script>
	  function setStatsActive(selectedPeriod) {
	    // 모든 버튼 가져오기
	    const buttons = document.querySelectorAll('[data-period]');
	
	    buttons.forEach(btn => {
	      // 현재 버튼의 period 값
	      const period = btn.getAttribute('data-period');
	
	      if (period === selectedPeriod) {
	        // 선택된 버튼: 활성화 스타일(div7)
	        btn.classList.remove('div5');
	        btn.classList.add('div7');
	      } else {
	        // 나머지 버튼: 비활성화 스타일(div5)
	        btn.classList.remove('div7');
	        btn.classList.add('div5');
	      }
	    });
	  }
	</script>

	<script>
	  // 버튼 클릭 핸들러
	  $(document).on('click', '[data-period]', function () {
	    const period = $(this).data('period'); // year|month|week
	    loadStats(period);
	    setStatsActive(period);
	  });
	
	// 통계 로딩 (jQuery AJAX)
	  function loadStats(period) {

	    $.ajax({
	      url: '/api/stats',
	      method: 'GET',
	      data: { period },     // ?period=year
	      dataType: 'json',
	      success: function (data) {

	        // 1) 최대값 계산 (0 나눗셈 방지)
	        const maxCnt = Math.max(1, ...data.map(d => d.cnt || 0));

	        // 2) 숫자/라벨 업데이트
	        const cntEls   = document.querySelectorAll('.div11');
	        const labelEls = document.querySelectorAll('.div12');
	        for (let i = 0; i < data.length; i++) {
	          if (cntEls[i])   cntEls[i].textContent   = data[i].cnt ?? 0;
	          if (labelEls[i]) labelEls[i].textContent = data[i].eventType ?? '-';
	        }

	        // 3) 막대 높이 설정 (최대값 = 90%)
	        const bars = document.querySelectorAll('.component-1 .component-1-inner');
	        for (let i = 0; i < bars.length; i++) {
	          const cnt = (data[i]?.cnt ?? 0);
	          const pct = Math.round((cnt / maxCnt) * 90);
	          bars[i].style.height = pct + '%';
	          // (선택) 값 확인용
	          bars[i].dataset.value = cnt;
	        }
	      },
	      error: function (xhr, status, err) {
	        console.error('❌ AJAX 실패:', status, err, xhr?.responseText);
	        alert('데이터를 불러오지 못했습니다.');
	      }
	    });
	  }
	
	  // 통계버튼 디폴트값 year
	  $(function () {
	    loadStats('year');
	    setStatsActive('year'); // 선택버튼 스타일 표시
	  });
	</script>
		
</body>
</html>