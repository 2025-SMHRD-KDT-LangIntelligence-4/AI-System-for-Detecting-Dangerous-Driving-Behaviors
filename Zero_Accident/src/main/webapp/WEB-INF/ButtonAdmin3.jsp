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

    <!-- ButtonAdmin3.css 파일의 스타일을 적용하겠다. -->
	<link rel="stylesheet"  href="/css/ButtonAdmin3.css" />
	
	<!-- Sidebar.css 파일의 스타일을 적용하겠다. -->
	<link rel="stylesheet"  href="/css/Sidebar.css" />
	
	<!-- Datetime.css 파일의 스타일을 적용하겠다. -->
	<link rel="stylesheet"  href="/css/Datetime.css" />
	
</head>
<body>
	
  	<!-- 전체 컨테이너 -->
  	<div class="buttonadmin3jsp">
  		
  		<!-- 사이드 바 -->
  		<!-- Sidebar.jsp 파일에서 작업하기! -->
  		<%@ include file="/WEB-INF/Sidebar.jsp" %>
	
		
<!--=====================================   메인   ======================================== -->   		
  	
  	
    		
 		<div class="div">
   			<div class="buttonadmin3jsp-div">
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
   					<div class="buttonadmin3jsp-zer0-accident">Zer0-Accident</div>
 				</div>
   			</div>
   			
   			
<!--=====================================   검색   ======================================== -->   		
  			
  			 			
   			<div class="div50">
   			
   				<!-- 검색어 입력란 -->
   				<input 
				    type="text" 
				    class="div51" 			   
				    name="searchTxt"
				>
   				
   				<!-- 돋보기 아이콘 -->
   				<img class="item" src="/image/search.svg">   				
   			</div>
   			
   			
<!--=====================================   검색필터   ====================================== -->   		
  			
   			
			<div class="div37">
			
 				<div class="div38"> 					
   					<div class="wrapper5">
   						<div class="div39">검색필터</div>
   					</div>
   					
   					<!-- 구분선 -->
   					<div class="div40">
   					</div>
 				</div>
 				
 				
 				<div class="frame-container">
 				
 					<!-- 날짜 필터 -->
   					<div class="parent7">
 						<div class="div41">날짜</div>
 						
 						<div class="div42">
 						
						  <!-- 날짜 선택 결과 나타남 -->
						  <div class="pm-wrapper">
						    <input 
						      type="date" 
						      id="datePicker" 
						      class="date-input"
						      name="dateInput" 
						    >
						  </div>
						
						  <!-- 달력 아이콘 : 클릭 시 날짜 선택 가능한 달력 나타남 -->
						  <button type="button" class="calendar" id="calendarBtn">
						    <img class="buttonadmin3jsp-icon" src="/image/Calendar.svg">
						  </button>
						</div>

   					</div>
   					
   					<!-- 위험 행위 종류 필터 -->
   					<div class="div44">
 						<div class="div45">위험 행위 종류</div>
 						
 						<!-- 졸음 운전 -->
 						<div class="check-box-outline-blank-parent iconChange">
 						
 							<!-- 체크 박스 -->
 							<!-- 클릭 시 아이콘 변경됨 -->
   							<img class="check-box-outline-blank-icon checkBox" src="/image/checkBox.svg">					
   							<b class="b10">졸음 운전</b>
 						</div>
 						
 						<!-- 휴대폰 조작 -->
 						<div class="check-box-outline-blank-group iconChange">
   							
   							<!-- 체크 박스 -->
 							<!-- 클릭 시 아이콘 변경됨 -->
   							<img class="check-box-outline-blank-icon checkBox" src="/image/checkBox.svg">
   							<b class="b10">휴대폰 조작</b>
 						</div>
 						
 						<!-- 운전대 미제어 -->
 						<div class="check-box-outline-blank-container iconChange">
   							
   							<!-- 체크 박스 -->
 							<!-- 클릭 시 아이콘 변경됨 -->
   							<img class="check-box-outline-blank-icon checkBox" src="/image/checkBox.svg">
   							<b class="b10">운전대 미제어</b>
 						</div>
 						
 						<!-- 운전자 폭행 -->
 						<div class="buttonadmin3jsp-check-box-outline-blank-parent iconChange">
   							
   							<!-- 체크 박스 -->
 							<!-- 클릭 시 아이콘 변경됨 -->
   							<img class="check-box-outline-blank-icon checkBox" src="/image/checkBox.svg">
   							<b class="b10">운전자 폭행</b>
 						</div>
   					</div>
   					
   					<!-- 위험 등급 필터 -->
   					<div class="div46">
 						<div class="div47">위험 등급</div>
 						<div class="buttonadmin3jsp-frame-parent">
 						
 							<!-- 위험 등급 : 상 -->
   							<div class="frame-parent2 iconChange">
   							
   								<!-- 체크 박스 -->
 								<!-- 클릭 시 아이콘 변경됨 -->
   								<img class="frame-item checkBox" src="/image/checkBox.svg">
   								 								
   								<div class="wrapper7">
   									<b class="b14">상</b>
   								</div>
   								
   								<!-- 위험 등급 상 아이콘 -->
   								<img class="frame-item" src="/image/RedCircle.svg">    								
   							</div>
   							
   							
   							<!-- 위험 등급 : 중 -->
   							<div class="frame-parent2 iconChange">
     								
   								<!-- 체크 박스 -->
								<!-- 클릭 시 아이콘 변경됨 -->
								<img class="frame-item checkBox" src="/image/checkBox.svg">
   								 								
   								<div class="wrapper7">
   									<b class="b14">중</b>
   								</div>
   								
   								<!-- 위험 등급 중 아이콘 -->
   								<img class="frame-item" src="/image/YellowCircle.svg">    								
   							</div>
   							
   							
   							<!-- 위험 등급 : 하 -->
   							<div class="frame-parent2 iconChange">
 								
 								<!-- 체크 박스 -->
								<!-- 클릭 시 아이콘 변경됨 -->
								<img class="frame-item checkBox" src="/image/checkBox.svg">
 								
 								<div class="wrapper7">
   									<b class="b14">하</b>
 								</div>
 								
 								<!-- 위험 등급 하 아이콘 -->
 								<div class="ellipse-div">
 								</div>
   							</div>
 						</div>
   					</div>
   					  					
   					<!-- 조치 상태 필터 -->
   					<div class="parent8">
   					
 						<div class="pm-wrapper">
   							<div class="div41">조치 상태</div>
 						</div>
 						
 						<div class="frame-parent5">
 						
 							<!-- 조치 완료  -->
   							<div class="frame-parent2 iconChange">
 								
 								<!-- 체크 박스 -->
								<!-- 클릭 시 아이콘 변경됨 -->
								<img class="frame-item checkBox" src="/image/checkBox.svg">
								
 								<div class="wrapper10">
   									<b class="b14">조치 완료</b>
 								</div>
   							</div>
   							
   							
   							<!-- 조치 중 -->
   							<div class="frame-parent2 iconChange">
     								
   								<!-- 체크 박스 -->
								<!-- 클릭 시 아이콘 변경됨 -->
								<img class="frame-item checkBox" src="/image/checkBox.svg">
							
   								<div class="wrapper10">
   									<b class="b14">조치 중</b>
   								</div>
   							</div>
   							
   							
   							<!-- 미조치 -->
   							<div class="frame-parent2 iconChange">
 								
 								<!-- 체크 박스 -->
								<!-- 클릭 시 아이콘 변경됨 -->
								<img class="frame-item checkBox" src="/image/checkBox.svg">
 								
 								<div class="wrapper10">
   									<b class="b14">미조치</b>
 								</div>
   							</div>
 						</div>
   					</div>
 				</div>
			</div>
   			

<!--===================================   날짜 및 시간   ==================================== -->   		
   			
   			
   			<!-- Datetime.jsp 파일에서 작업하기! -->
	  		<%@ include file="/WEB-INF/Datetime.jsp" %>  	
   		
   			  			  			  			
<!--====================================   로그 리스트  ===================================== -->   		   			
   			
   			
   			<!-- LOG 타이틀 -->
   			<div class="log">LOG</div>
   			
   			<!-- 헤더 -->
   			<div class="div5">
 				<div class="child">
 				</div>
 				<div class="div6">
 				</div>
 				
 				<div class="wrapper">
   					<div class="div7">순번</div>
 				</div>
 				
 				<div class="container">
   					<div class="b">발생일시</div>
 				</div>
 				
 				<div class="frame">
   					<div class="b">차량번호</div>
 				</div>
 				
 				<div class="frame-div">
   					<div class="div10">운전자</div>
 				</div>
 				
 				<div class="buttonadmin3jsp-wrapper">
   					<div class="b">위험 행위 종류</div>
 				</div>
 				
 				<div class="wrapper2">
   					<div class="b">위험 등급</div>
 				</div>
 				
 				<div class="wrapper3">
   					<div class="b">상태</div>
 				</div>
   			
   			
  <!-- ============== 로그 리스트 ================ -->
	   			<div class="div5999">
	   			
	    			<!-- 반복문으로 20개의 동일한 로그 출력됨 -->
	    			<c:forEach var="i" begin="1" end="20">
						<div class="div60">
							<div class="frame-parent9">
							
								<!-- 순번 : 자동 증가 -->
								<div class="pm-wrapper">
									<div class="b">${i}</div>
								</div>
								
								<!-- 발생 일시 : DB에서 createdAt값 가져오기! -->
								<div class="pm-wrapper">
									<div class="b">
										<!-- 로그 발생 일자 -->
										<p class="p">2025-10-29</p>
										<!-- 로그 발생 시각 -->
										<p class="p">15:01:33</p>
									</div>
								</div>
								
								<!-- 차량 번호 : DB에서 carNumber값 가져오기! -->
								<div class="wrapper15">
									<div class="b">
										<!-- 차량 번호 앞 5자리 -->
										<p class="p">서울 72자</p>
										<!-- 차량 번호 뒤 4자리 -->
										<p class="p">4183</p>
									</div>
								</div>
								
								<!-- 운전자 이름 : DB에서 driverName값 가져오기! -->
								<div class="pm-wrapper">
									<div class="b">김도훈</div>
								</div>
								
								<!-- 위험 행위 종류 : DB에서 eventType값 가져오기! -->
								<div class="pm-wrapper">
									<div class="b">휴대폰 조작</div>
								</div>
														
								<!-- 위험 등급 표시 아이콘 -->
								<!-- eventLevel에 따라 색상 변경되어야 함 -->							
								<div class="circle-yellow"></div>
								
								
								<!-- 조치 상태 -->
								<!-- 조치완료 / 조치 중 / 미조치 -->
								<!-- 아래 코드는 '조치 중'에 해당 -->
								<div class="pm-wrapper">
									<div class="b">
																		
										<!-- 조치 방법 -->
										<p class="p">경고 발송</p>
										
										<p class="p">
											
											<!-- 조치 횟수 -->
											<span>1회(</span>
											
											<!-- 조치 유무 -->
											<span class="span">조치중</span>
											<span class="span4">)</span>
										</p>
									</div>
								</div>
								
							</div>
						</div>
					</c:forEach>
	      			
	    		</div>
   			</div>
    		
    		
<!--====================================  개별 상세 로그  ==================================== -->   		   			

   			
   			<!-- 로그 리스트에서 특정 로그 클릭 시 해당 로그의 세부 정보를 DB에서 가져온다. -->
   			<div class="div14">
   			
   				<!-- 블랙박스 영상 클립 -->
 				<div class="div15">
 					<!-- 영상 삽입 후 삭제-->
   					<div class="b">블랙박스 영상</div>
 				</div>
 				
 				<!-- 상세 로그 카테고리 -->
				<div class="log-title">
  					<div class="id-parent">
  						<b class="id">로그 ID</b>
  						<b class="id">발생 일시</b>
  						<b class="id">차량 번호</b>
  						<b class="id">운전자(운전자 ID)</b>
  						<b class="id">위험 행위 종류(지속시간)</b>
  						<b class="id">위험 등급</b>
  						<b class="id">발생 위치</b>
  						<b class="id">관리자</b>
  						<b class="id">조치 사항</b>
  					</div>
				</div>
				
				
				<!-- 실제 로그 정보 -->
 				<div class="log-contents">
 				
 					<!-- 로그 ID -->	
   					<div class="l00000212-parent">
   						
   						<!-- DB에서 logIdx값 가져오기! -->
   						<div class="l00000212">L00000212</div>
   						
   						<!-- 구분선 -->
   						<div class="div17">
   						</div>
   					</div>
   					
   					<!-- 발생 일시 -->	
   					<div class="l00000212-parent">
   					
 						<!-- DB에서 createdAt값 가져오기! -->
   						<div class="l00000212">2025-10-29 15:01:33</div>
   						
   						<!-- 구분선 -->
   						<div class="div17">
   						</div>
   					</div>
   					
   					<!-- 차량 번호 -->	
   					<div class="l00000212-parent">
   					
   						<!-- DB에서 carNumber값 가져오기! -->
   						<div class="l00000212">서울 72자 4183</div>
   						
   						<!-- 구분선 -->
   						<div class="div17">
   						</div>
   					</div>
   					
   					<!-- 운전자 이름 + 운전자 ID -->	
   					<div class="l00000212-parent">
   					
   						<!-- DB에서 driverName, driverIdx값 가져오기! -->
   						<div class="l00000212">김도훈(S062)</div>
   						
   						<!-- 구분선 -->
   						<div class="div17">
   						</div>
   					</div>
   					
   					<!-- 위험 행위 종류 + 지속시간 -->	
   					<div class="l00000212-parent">
   					
   						<!-- DB에서 eventType, 지속시간 값 가져오기! -->
   						<div class="l00000212">휴대폰 조작(12초)</div>
   						
   						<!-- 구분선 -->
   						<div class="div17">
   						</div>
   					</div>
   					
   					<!-- 위험 등급 표시 아이콘 -->
					<!-- eventLevel에 따라 색상 변경되어야 함 -->	
   					<div class="circle-yellow">
   					</div>
   					
   					<!-- 구분선 -->
   					<div class="wrapper4">
   						<div class="div17">
   						</div>
   					</div>
   					
   					<!-- 발생 위치 -->
   					<div class="l00000212-parent">
   						
   						<!-- DB에서 로그 위치 가져오기! -->
   						<div class="l00000212">전라남도 순천시 서면 선평리 1045 </div>
   						
   						<!-- 구분선 -->
   						<div class="div17">
   						</div>
   					</div>
   					
   					<!-- 담당 관리자 -->
   					<div class="l00000212-parent">
   						
   						<!-- DB에서 adminName값 가져오기! -->
   						<div class="l00000212">강우희</div>
   						
   						<!-- 구분선 -->
   						<div class="div17">
   						</div>
   					</div>
   					
   					<!-- 조치 상태 -->
   					<div class="l00000212-parent">
   					
 						<div class="l00000212">
 						
 							<!-- 조치 방법, 조치 횟수 -->
   							<span>경고 발송 1회(</span>
   							
   							<!-- 조치 유무 -->
   							<span class="span">조치 중</span>
   							<span>)</span>
 						</div>
 						
 						<!-- 구분선 -->
 						<div class="div17">
 						</div>
   					</div>
 				</div>
   			</div>  			  			
 		</div>
    	
    	
    	<!-- 저작권 -->	
    	<div class="copyright">
   			<div class="b">Copyright ⓒ 2025 Zo-A Co. All rights reserved.</div>
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
	
	<!-- 날짜 필터의 달력 아이콘 클릭 시 달력 열기 -->
	<script>
		const calendarBtn = document.getElementById('calendarBtn');
		const datePicker = document.getElementById('datePicker');
	
		calendarBtn.addEventListener('click', () => {
		  datePicker.showPicker(); // ✅ 브라우저 기본 달력 열기
		});
	</script>
	
	<!-- 검색 필터 네모 박스 클릭 시 체크 박스로 변경 -->
	<script>
			document.querySelectorAll('.iconChange').forEach(item => {
			  	item.addEventListener('click', () => {
			    const img = item.querySelector('.checkBox');
			    const checked = img.classList.toggle('checked');
			    img.src = checked ? '/image/checkBoxR.svg' : '/image/checkBox.svg';
			  });
			});
	</script>
	
  	
  	

</body>
</html>