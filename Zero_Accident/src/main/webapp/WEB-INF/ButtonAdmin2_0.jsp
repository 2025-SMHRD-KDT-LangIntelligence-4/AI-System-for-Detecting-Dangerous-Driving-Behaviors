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
   			
   			 			
   			<div class="div89">
   				<div class="div90">  				  					
 					<div class="frame-parent">
 					
 				<!-- =============현재 날짜 ===============-->
   						<div class="frame-group">
   						
   							<!-- 달력 아이콘 -->
   							<img class="frame-child" src="/image/calender.svg">
   							
   							<!-- 실시간 표시로 변경 필요! -->
   							<div class="parent17">
 								<div class="div91" id="dateDiv">
   									<span id="monthSpan"></span>
   									<span class="span2" id="daySpan"></span>
   									<span>일</span>
 								</div>
 								<div class="div92" id="weekdayDiv"></div>
   							</div>
   						</div>
   						
   			   <!-- =============현재 시간 =============-->	
   						<div class="parent18">
   							<!-- 구분선 -->
 							<div class="div93">
 							</div>
 							
 							<!-- 실시간 표시로 변경 필요! -->
 							<div class="pm-wrapper">
   								<div class="b" id="currentTime"></div>
 							</div>
   						</div>
 					</div>
   				</div>
   			</div>
   			
<!-- 비동기통신용 여기부터 감싸는 div 만들어야함 -->   			
<!-- ======================================= 검색 ========================================  -->   			

   			
   			<!-- 검색바 -->
   			<div class="div94">
   				<!-- 돋보기 아이콘 -->
   				<img class="child" src="/image/search.svg">
   				 				
   			  	<!-- 검색어 입력란 -->				
   				<input 
				    type="text" 
				    class="search-input" 
				    placeholder="검색어를 입력하세요."
				    name="searchText"
				>
   			</div>
   			
   			 			
   			<div class="parent16">
   				
   				<!-- 검색 필터 버튼 -->
 				<button type="button" class="div85">
   					<div class="user-plus">
   						<!-- 필터 아이콘 -->
   						<img class="buttonadmin2jsp-icon" src="/image/filter.svg">    						
   					</div>
   					<div class="b">검색 필터</div>
 				</button>
 				
 				<!-- 운전자 삭제 버튼 -->				
 				<button type="button" class="div87">
 					<!-- 삭제 아이콘 -->
   					<img class="cancel-icon" src="/image/cancel.svg">					
   					<div class="b">운전자 삭제</div>
 				</button>
   			</div>
   				
<!-- ======================================= 메인 ========================================  -->   				
 					
   			<div class="div8">
					<!-- 우빈 : 현재 div8만 비통기통신되게 만듬. -->
 			</div>
   		</div>
<!-- 비동기통신용 여기까지 감싸는 div 만들어야함 -->

   		<!-- 저작권 -->
   		<div class="copyright">
   			<div class="b">Copyright ⓒ 2025 Zo-A Co. All rights reserved.</div>
    	</div>
   			
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
  	
	<!-- 우빈 : 비동기 페이지 로드 함수 -->
	<script>
	  // div8 영역에 조각 JSP를 로드
	  function loadPage(url) {
	    fetch(url, { headers: { 'X-Requested-With': 'XMLHttpRequest' }})
	      .then(res => res.text())
	      .then(html => {
	        document.querySelector('.div8').innerHTML = html;
	      })
	      .catch(err => console.error(err));
	  }
	  
	  // 버튼 색상 토글 함수
	  function setActive(clickedBtn) {
	    // 1. 모든 navigation 버튼을 흰색(link2)으로 초기화
	    document.querySelectorAll('.navigation button').forEach(btn => {
	      btn.classList.remove('link');
	      btn.classList.remove('link2');
	      btn.classList.add('link2'); // 기본은 흰색
	    });

	    // 2. 클릭한 버튼은 회색(link)으로 변경
	    clickedBtn.classList.remove('link2');
	    clickedBtn.classList.add('link');
	  }
	
	  // 페이지 최초 로드 시 기본 탭(2_1) 자동 로드
	  document.addEventListener('DOMContentLoaded', function() {
	    loadPage('${cpath}/ButtonAdmin2_1');
	    // 첫 버튼을 active로
	    const firstBtn = document.querySelector('.navigation button');
	    if (firstBtn) firstBtn.classList.add('active');
	  });
	</script>

</body>
</html>