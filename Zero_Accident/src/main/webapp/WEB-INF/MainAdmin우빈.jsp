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
   	
	<!-- 카카오 지도 SDK -->
	<script src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=b1fc2610a3c9415f64affd1fc92ced5b&autoload=false"></script>
	
	
</head>
<body>

	<!-- 전체 컨테이너 -->
	<div class="mainadminjsp">
		
		
<!--===============================   사이드바   ======================================== -->
		
		
		<div class="div97">
		
			<!-- ZOA 로고 -->	
   			<div class="div98">
   				<div class="avatar">
   				</div>
     				<div class="small">
       					<div class="small-child">
       					</div>
       					<div class="z0a">
       						<span>Z</span>
       						<span class="span6">0</span>
       						<span class="a">A</span>
       					</div>
       					<img class="small-item" src="/image/Rectangle 212.svg">
       					
       					<img class="small-inner" src="/image/Rectangle 212.svg">       					
     				</div>
   			</div>
   			
   			<!-- 구분선 -->
   			<div class="div99">
   			</div>
   			   			
   			<div class="div100">
   				<div class="main">Main</div>
   				
   				<!-- 클릭 시 MainAdmin.jsp로 이동 -->
   				<button type="button" class="mainButton" onclick="location.href='/MainAdmin'">
   					<img class="icon14" src="/image/MainButton.svg">
   				</button>
   				
   				<!-- 클릭 시 ButtonAdmin2.jsp로 이동(운전자 관리 페이지) -->
   				<button type="button" class="driverInfo" onclick="location.href='/ButtonAdmin2'">
   					<img class="icon" src="/image/DriverButton.svg">
   				</button>
   				
   				<!-- 클릭 시 ButtonAdmin3.jsp로 이동(전체 로그 조회 페이지) -->
   				<button type="button" class="logButton" onclick="location.href='/ButtonAdmin3'">
   					<img class="icon14" src="/image/LogButton.svg">
   				</button>
   				
   				<!-- 클릭 시 ButtonAdmin4.jsp로 이동(실시간 블랙박스 모니터링 페이지) -->
   				<button type="button" class="blackbox" onclick="location.href='/ButtonAdmin4'">
   					<img class="icon" src="/image/BlackboxButton.svg">
   				</button>
   				
   				<!-- 클릭 시 ButtonAdmin5.jsp로 이동(관리자 정보 페이지) -->
   				<button type="button" class="adminInfo" onclick="location.href='/ButtonAdmin5'">
   					<img class="icon" src="/image/AdminButton.svg">
   				</button> 
   				    				
   			</div>
   			
   			<!-- 구분선 -->
   			<div class="div99">
   			</div>
   			
   			
   			<div class="div102">
   				<div class="main">Settings</div>
   				
   				<!-- 클릭 시 ButtonAdmin6.jsp로 이동(시스템 알림 페이지) -->
   				<button type="button" class="noti" onclick="location.href='/ButtonAdmin6'">
   					<img class="icon" src="/image/notifications.svg">
   				</button>
   				
   				<!-- 클릭 시 ButtonAdmin7.jsp로 이동(환경설정 페이지) -->
   				<button type="button" class="settings" onclick="location.href='/ButtonAdmin7'">
   					<img class="icon14" src="/image/Settings.svg">
   				</button>
   				     				
   			</div>
   			
   			<div class="div103">
   			
   				<!-- 로그아웃 버튼 -->
   				<!-- 로그아웃 시 ???.jsp로 이동 -->
   				<button type="button" class="logOut" onclick="location.href='logout'">
     				<img class="icon14" src="/image/Log-out.svg">
     			</button>
     			      				
   			</div>
   			
   		</div>
    		
    		
<!--=====================================   메인   ========================================= -->
  		
	   		   		
	<div class="div">
    	
    	<!-- 상단 관리자 프로필 -->
    	<!-- 클릭 시 ButtonAdmin5.jsp로 이동(관리자 정보 페이지) -->	   		
   		<button type="button" class="div95" onclick="location.href='/ButtonAdmin5'">
   			<!-- 프로필 이모티콘 -->
			<img class="icon13" src="/image/accountCircle.svg">
			
			<!-- 관리자 이름 : DB에서 adminName값 가져오기! -->
			<b class="search-here">강우희 관리자</b>
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
   									<div class="div37">
   										<span>10월 </span>
   										<span class="span5">29</span>
   										<span>일</span>
   									</div>
   									<div class="div38">수요일</div>
 								</div>
						</div>
 						
 						<!-- 현재 시간 -->	
						<div class="parent2">
							<!-- 구분선 -->
							<div class="div39">
							</div>
							
							<!-- 실시간 표시로 변경 필요! -->
							<div class="pm-wrapper">
 									<div class="search-here">15:19PM</div>
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
				
					<!-- 블랙박스 1 -->
					<div class="div51">
					
						<!-- 상태바 -->
						<div class="div52">
						
							<!-- 위험 등급 표시 아이콘 -->
							<!-- eventLevel에 따라 색상 변경되어야 함 -->
							<div class="frame-item">
							</div>
							<div class="s101-parent">
							
								<!-- 운전자ID : DB에서 driverIdx값 가져오기! -->
								<div class="search-here">S101</div>
								<!-- 구분선 -->
								<div class="line-div">
								</div>
								<!-- 차량번호 : DB에서 carNumber값 가져오기! -->
								<div class="search-here">11바 9653</div>
								<!-- 구분선 -->
								<div class="line-div">
								</div>
								<!-- 위험 행위 종류 : DB에서 eventType값 가져오기! -->
								<!-- eventLevel에 따라 색상 변경되어야 함 -->
								<div class="div54">운전자 폭행</div>
							</div>
						</div>
						
						<!-- 실시간 블랙박스 영상 -->
						<div class="div55">
							<!-- 영상 삽입 후 삭제 -->
							<div class="search-here">블랙박스 영상</div>
						</div>
						
						<!-- 경고 전송 버튼 -->
						<!-- 버튼 클릭 시 운전자에게 해당 위험 단계에 맞는 경고 발송 -->
						<button type="button" class="wrapper10">
							<div class="div57">
								<div class="alert-triangle">
									<!-- 경고 아이콘 -->
									<img class="icon5" src="/image/Danger.svg">									
								</div>
							</div>
						</button>
						
					</div>
 						
 					<!-- 블랙박스 2 -->	
					<div class="div51">
					
						<!-- 상태바 -->
						<div class="div52">
						
								<!-- 위험 등급 표시 아이콘 -->
								<!-- eventLevel에 따라 색상 변경되어야 함 -->
 								<div class="inner">
 								</div>
 								<div class="s101-parent">
 									
 									<!-- 운전자ID : DB에서 driverIdx값 가져오기! -->
   									<div class="search-here">S049</div>
   									<!-- 구분선 -->
   									<div class="line-div">
   									</div>
   									<!-- 차량번호 : DB에서 carNumber값 가져오기! -->
   									<div class="search-here">45사 8291</div>
   									<!-- 구분선 -->
   									<div class="line-div">
   									</div>
   									<!-- 위험 행위 종류 : DB에서 eventType값 가져오기! -->
									<!-- eventLevel에 따라 색상 변경되어야 함 -->
   									<div class="div61">휴대폰 조작</div>
 								</div>
						</div>
						
						<!-- 실시간 블랙박스 영상 -->
						<div class="div55">
							<!-- 영상 삽입 후 삭제 -->
							<div class="search-here">블랙박스 영상</div>
						</div>
						
						<!-- 경고 전송 버튼 -->
						<!-- 버튼 클릭 시 운전자에게 해당 위험 단계에 맞는 경고 발송 -->
						<button type="button" class="wrapper10">
							<div class="div64">
								<div class="alert-triangle">
									<!-- 스피커 아이콘 -->
									<img class="icon6" src="/image/Volume.svg">										
								</div>
							</div>
						</button>
				    </div>
 						
 					<!-- 블랙박스 3 -->	
					<div class="div51">
					
							<!-- 상태바 -->
 							<div class="div52">
 								
 								<!-- 위험 등급 표시 아이콘 -->
								<!-- eventLevel에 따라 색상 변경되어야 함 -->
   								<div class="inner">
   								</div>  								
   								<div class="s101-parent">
   								
   									<!-- 운전자ID : DB에서 driverIdx값 가져오기! -->
   									<div class="search-here">S032</div>
   									<!-- 구분선 -->
   									<div class="line-div">
   									</div>
   									<!-- 차량번호 : DB에서 carNumber값 가져오기! -->
   									<div class="search-here">63아 4720</div>
   									<!-- 구분선 -->
   									<div class="line-div">
   									</div>
   									<!-- 위험 행위 종류 : DB에서 eventType값 가져오기! -->
									<!-- eventLevel에 따라 색상 변경되어야 함 -->
   									<div class="div61">졸음 운전 </div>
   								</div>
 							</div>
 							
 							<!-- 실시간 블랙박스 영상 -->
 							<div class="div55">
 								<!-- 영상 삽입 후 삭제 -->
   								<div class="search-here">블랙박스 영상</div>
 							</div>
 							
 							<!-- 경고 전송 버튼 -->
							<!-- 버튼 클릭 시 운전자에게 해당 위험 단계에 맞는 경고 발송 -->
 							<button type="button" class="wrapper10">
   								<div class="div64">
   									<div class="alert-triangle">
   										<!-- 스피커 아이콘 -->
   										<img class="icon6" src="/image/Volume.svg">   										
   									</div>
   								</div>
 							</button>
					</div>
 						
 					<!-- 블랙박스 4 -->	
					<div class="div51">
					
						<!-- 상태바 -->
						<div class="div73">
						
							<!-- 위험 등급 표시 아이콘 -->
							<!-- eventLevel에 따라 색상 변경되어야 함 -->
							<div class="inner">
							</div>
							<div class="s101-parent">
									
									<!-- 운전자ID : DB에서 driverIdx값 가져오기! -->
 									<div class="search-here">S006</div>
 									<!-- 구분선 -->
 									<div class="line-div">
 									</div>
 									<!-- 차량번호 : DB에서 carNumber값 가져오기! -->
 									<div class="search-here">88사 2107</div>
 									<!-- 구분선 -->
 									<div class="line-div">
 									</div>
 									<!-- 위험 행위 종류 : DB에서 eventType값 가져오기! -->
									<!-- eventLevel에 따라 색상 변경되어야 함 -->
 									<div class="div61">운전대 미제어 </div>
							</div>
						</div>
 							
 						<!-- 실시간 블랙박스 영상 -->	
						<div class="div55">
							<!-- 영상 삽입 후 삭제 -->
							<div class="search-here">블랙박스 영상</div>
						</div>
						
						<!-- 경고 전송 버튼 -->
						<!-- 버튼 클릭 시 운전자에게 해당 위험 단계에 맞는 경고 발송 -->
						<button type="button" class="wrapper10">
							<div class="div64">
								<div class="alert-triangle">
									<!-- 스피커 아이콘 -->
									<img class="icon6" src="/image/Volume.svg">										
								</div>
							</div>
						</button>						
					</div>
					
				</div>
			</div>
      	</div>
    	

<!-- ============================= 실시간 차량 위치 모니터링(지도) ==============================  -->

   	
    	<div class="div81"> <!-- (구)지도가 있던 공간 div -->
		    	<b class="b7" >실시간 차량 위치 모니터링</b>
    	
    		<!-- (신)카카오 지도 들어갈 공간 div : 우빈 div id="mapContrainer 만듦-->
    		  <div id="mapContainer"
		       style="
		         top:35px;				/* 지도시작하는 부분 얼마나 내릴지 */
		         min-height: 95%;		/* 세로 */
		         width: 100%;			/* 가로 */
		         border-radius: 10px;	/* 꼭지점 둥글게 */
		         overflow: hidden;		/* 뭔지모름 gpt가 해줌 */
		         background: #2f2f36;	/* 로딩 중 배경 확인용. 뭔지모름 gpt가 해줌 */
		       "></div>
    	
      	</div>
				
	    	<!-- 타이틀 -->
    	
    		
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
   				

<!-- ========================================= 통계 =======================================  -->   			


   				<div class="div3">
   					
   					<!-- 타이틀 -->
   					<div class="title">
   						<img class="vector-icon" src="/image/Vector.svg">  						
   						<div class="mainadminjsp-log">위험 운전 유형별 발생 건수</div>
     				</div>
     				
     				
   					<div class="div4">
   					
   						<!-- 월간 통계 버튼 -->
   						<button type="button" class="div5">
   							<b class="search-here">월간</b>
   						</button>
   						
   						<!-- 주간 통계 버튼 -->
   						<button type="button" class="div5">
   							<b class="search-here">주간</b>
   						</button>
   						
   						<!-- 일간 통계 버튼 -->
   						<button type="button" class="div7">
   							<b class="search-here">일간</b>
   						</button>
   						
   					</div>
     					
     <!-- ============ 일간 위험 행위 발생 그래프 ============= -->	
   					<div class="div8">
   						<div class="div9">
   						
   							<!-- 운전자 폭행  -->
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
   												<div class="div11">1</div>
   											</div>
   										</div>
   									</div>
   								</div>
   								
   								<!-- 라벨 -->
   								<div class="container">
   									<div class="div12">운전자 폭행</div>
   								</div>
   							</div>
     							
     						<!-- 졸음운전  -->	
   							<div class="div13">   							
   								<div class="component-1-wrapper">
   									<div class="component-1">
   										
   										<!-- background bar -->
   										<div class="component-1-child">
   										</div>
   										  										
   										<div class="frame-div">
   											<!-- 실제 막대그래프 -->
   											<!-- 발생 횟수에 따라 height 자동 조절 -->
   											<div class="wrapper">
   												<!-- 일간 졸음 운전 발생 횟수 : DB에서 가져오기! -->
   												<div class="div11">12</div>
   											</div>
   										</div>
   									</div>
   								</div>
   								
   								<!-- 라벨 -->
   								<div class="container">
     									<div class="div12">졸음운전</div>
   								</div>
   							</div>
     							
     						<!-- 운전대 미제어  -->		
   							<div class="div16">
   								<div class="component-1-wrapper">
   									<div class="component-1">
   									
   										<!-- background bar -->
   										<div class="component-1-child">
   										</div>
   										  										
   										<div class="mainadminjsp-component-1-inner">
   											<!-- 실제 막대그래프 -->
   											<!-- 발생 횟수에 따라 height 자동 조절 -->
   											<div class="wrapper">
   												<!-- 일간 운전대 미제어 발생 횟수 : DB에서 가져오기! -->
   												<div class="div11">8</div>
   											</div>
   										</div>
   									</div>
   								</div>
   								
   								<!-- 라벨 -->
   								<div class="container">
     									<div class="div12">운전대 미제어</div>
   								</div>
   							</div>
     							
     						<!-- 휴대폰 조작  -->		
   							<div class="div19">
   								<div class="component-1-wrapper">
   									<div class="component-1">
   										
   										<!-- background bar -->
   										<div class="component-1-child">
   										</div>
   										  										
   										<div class="component-1-inner2">
   											<!-- 실제 막대그래프 -->
   											<!-- 발생 횟수에 따라 height 자동 조절 -->
   											<div class="wrapper">
   												<!-- 일간 휴대폰 조작 발생 횟수 : DB에서 가져오기! -->
   												<div class="div11">23</div>
   											</div>
   										</div>
   									</div>
   								</div>
   								
   								<!-- 라벨 -->
   								<div class="container">
     									<div class="div12">휴대폰 조작</div>
   								</div>
   							</div>
   						</div>
   					</div>    					
   				</div>
     				
     				
<!-- ==================================== 운행 차량 대수 =====================================  -->   			     				
     			
     			
     			<div class="div34">
     				<!-- 대중교통 아이콘 -->
 					<img class="error-icon" src="/image/car.svg">
 					
 					<div class="search-here">
 					
 						<!-- 현재 운행 차량 대수 : DB에서 가져오기! -->
 						<!-- 차량 운행 유무 컬럼 없음 -->
   						<span class="span">121</span>
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
   						<span class="mainadminjsp-span">43</span>
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
   					
   						<!-- 로그 1 -->
 						<div class="div24">
   							<div class="ellipse-parent">
   							
   								<!-- 위험 등급 표시 아이콘 -->
								<!-- eventLevel에 따라 색상 변경되어야 함 -->
   								<div class="frame-child">
   								</div>
   								
   								<!-- 로그 정보 -->
   								<div class="wrapper6">
   								
   									<!-- 위험 행위 발생 시각, 운전자 고유 ID, 위험 행위 종류
   									     : DB에서 createdAt, dirverIdx, eventType 값 가져오기 -->
   									<div class="div25">[12:31:44]  S032  졸음 운전</div>
   								</div>
   							</div>
   							
   							<!-- 캠 버튼 클릭 시 블랙박스 영상 클립 띄워주기 -->
   							<button type="button" class="videoclip" onclick="location.href='#'">
   								<img class="icon" src="/image/videocam.svg">
   							</button>												
 						</div>
 						
 						<!-- 로그 2 -->
						<div class="div24">
  							<div class="ellipse-parent">
  							
  								<!-- 위험 등급 표시 아이콘 -->
								<!-- eventLevel에 따라 색상 변경되어야 함 -->
 								<div class="frame-item">
 								</div>
 								
 								<!-- 로그 정보 -->
 								<div class="wrapper6">
 								
 									<!-- 위험 행위 발생 시각, 운전자 고유 ID, 위험 행위 종류
   									     : DB에서 createdAt, dirverIdx, eventType 값 가져오기 -->
   									<div class="div25">[14:42:31]  S101  운전자 폭행</div>
 								</div>
  							</div>
  							 							
  							<!-- 캠 버튼 클릭 시 블랙박스 영상 클립 띄워주기 -->
   							<button type="button" class="videoclip" onclick="location.href='#'">
   								<img class="icon" src="/image/videocam.svg">
   							</button>							
						</div>
     						
     					<!-- 로그 3 -->	
   						<div class="div24">
 							<div class="ellipse-parent">
 							
 								<!-- 위험 등급 표시 아이콘 -->
								<!-- eventLevel에 따라 색상 변경되어야 함 -->
   								<div class="frame-child">
   								</div>
   								
   								<!-- 로그 정보 -->
   								<div class="wrapper6">
   								
   									<!-- 위험 행위 발생 시각, 운전자 고유 ID, 위험 행위 종류
   									     : DB에서 createdAt, dirverIdx, eventType 값 가져오기 -->
   									<div class="div25">[12:04:39]  S006  운전대 미제어</div>
   								</div>
 							</div>
 							
 							<!-- 캠 버튼 클릭 시 블랙박스 영상 클립 띄워주기 -->
   							<button type="button" class="videoclip" onclick="location.href='#'">
   								<img class="icon" src="/image/videocam.svg">
   							</button>   							
   						</div>
     						
     					<!-- 로그 4 -->		
   						<div class="div24">
 							<div class="ellipse-parent">
 							
 								<!-- 위험 등급 표시 아이콘 -->
								<!-- eventLevel에 따라 색상 변경되어야 함 -->
   								<div class="frame-child">
   								</div>
   								
   								<!-- 로그 정보 -->
   								<div class="wrapper6">
   								
   									<!-- 위험 행위 발생 시각, 운전자 고유 ID, 위험 행위 종류
   									     : DB에서 createdAt, dirverIdx, eventType 값 가져오기 -->
   									<div class="div25">[11:29:58]  S049  휴대폰 조작</div>
   								</div>
 							</div>
 														
 							<!-- 캠 버튼 클릭 시 블랙박스 영상 클립 띄워주기 -->
   							<button type="button" class="videoclip" onclick="location.href='#'">
   								<img class="icon" src="/image/videocam.svg">
   							</button>  							
   						</div>
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

</body>
</html>