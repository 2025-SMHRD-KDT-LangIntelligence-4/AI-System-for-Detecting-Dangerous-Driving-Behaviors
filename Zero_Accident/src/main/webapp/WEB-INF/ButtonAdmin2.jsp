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
	<link rel="stylesheet"  href="/css/ButtonAdmin2.css" />
	
</head>
<body>

  	<!-- 전체 컨테이너 -->
  	<div class="buttonadmin2jsp">
  		

<!--==================================   사이드바   ======================================== -->

  		 		
  		<div class="div95">
  		
  			<!-- ZOA 로고 -->	
   			<div class="div96">
   				<div class="avatar">
   				</div>
   				<div class="small">
   					<div class="small-child">
   					</div>
   					<div class="z0a">
   						<span>Z</span>
   						<span class="span3">0</span>
   						<span class="a">A</span>
   					</div>
   					<img class="small-item" src="/image/Rectangle 212.svg">
   					
   					<img class="small-inner" src="/image/Rectangle 212.svg">  					
   				</div>
   			</div>
      			
   			<!-- 구분선 -->
   			<div class="div97">
   			</div>
   			
   			
 			<div class="div98">
   				<div class="main">Main</div>
   				
   				<!-- 클릭 시 MainAdmin.jsp로 이동 -->
   				<button type="button" class="mainButton" onclick="location.href='/MainAdmin'">
   					<img class="icon5" src="/image/MainButton.svg">
   				</button>
   				
   				<!-- 클릭 시 ButtonAdmin2.jsp로 이동(운전자 관리 페이지) -->
   				<button type="button" class="driverInfo" onclick="location.href='/ButtonAdmin2'">
   					<img class="icon6" src="/image/DriverButton.svg">
   				</button>
   				
   				<!-- 클릭 시 ButtonAdmin3.jsp로 이동(전체 로그 조회 페이지) -->
   				<button type="button" class="logButton" onclick="location.href='/ButtonAdmin3'">
   					<img class="icon5" src="/image/LogButton.svg">
   				</button>
   				
   				<!-- 클릭 시 ButtonAdmin4.jsp로 이동(실시간 블랙박스 모니터링 페이지) -->
   				<button type="button" class="blackbox" onclick="location.href='/ButtonAdmin4'">
   					<img class="icon6" src="/image/BlackboxButton.svg">
   				</button>
   				
   				<!-- 클릭 시 ButtonAdmin5.jsp로 이동(관리자 정보 페이지) -->
   				<button type="button" class="adminInfo" onclick="location.href='/ButtonAdmin5'">
   					<img class="icon6" src="/image/AdminButton.svg">
   				</button> 
   				
 			</div>
 			
 			<!-- 구분선 -->
   			<div class="div97">
   			</div>
   			
   			
 			<div class="div100">
   				<div class="main">Settings</div>
   				
  				<!-- 클릭 시 ButtonAdmin6.jsp로 이동(시스템 알림 페이지) -->
  				<button type="button" class="noti" onclick="location.href='/ButtonAdmin6'">
  					<img class="icon6" src="/image/notifications.svg">
  				</button>
  				
  				<!-- 클릭 시 ButtonAdmin7.jsp로 이동(환경설정 페이지) -->
  				<button type="button" class="settings" onclick="location.href='/ButtonAdmin7'">
  					<img class="icon5" src="/image/Settings.svg">
  				</button>  				
 			</div>			
 			
   			<div class="div101">
   			
   				<!-- 로그아웃 버튼 -->
   				<!-- 로그아웃 시 StartPage.jsp or LoginAdmin.jsp로 이동 -->
   				<button type="button" class="logOut" onclick="location.href='#'">
     				<img class="icon5" src="/image/Log-out.svg">
     			</button>
     				
   			</div>
   			
    	</div>
    		
    		
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
				<b class="b">강우희 관리자</b>
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
 						<!-- 버튼 클릭 시 ButtonAdmin2.jsp로 이동(운전자 관리 페이지) -->
 						<!-- 버튼 클릭 시 div 색상 변경 -->
   						<button type="button" class="link" onclick="location.href='/ButtonAdmin2'">
   							<!-- 아이콘 -->
   							<img class="groups-icon" src="/image/groups.svg">							
   							<div class="label">운전자 관리</div>
   						</button>
   						
   						<!-- 운전자 등록 버튼 -->
 						<!-- 버튼 클릭 시 ButtonAdmin2_1.jsp로 이동(운전자 등록 페이지) -->
 						<!-- 버튼 클릭 시 div 색상 변경 -->
   						<button type="button" class="buttonadmin2jsp-link" onclick="location.href='/ButtonAdmin2_1'">
   							<div class="user-plus">
   								<!-- 아이콘 -->
   								<img class="buttonadmin2jsp-icon" src="/image/regist.svg">    								
   							</div>
   							<div class="label">운전자 등록</div>
   						</button>
   						
   						<!-- 메시지 보내기 버튼 -->
 						<!-- 버튼 클릭 시 ButtonAdmin2_2.jsp로 이동(메시지 보내기 페이지) -->
 						<!-- 버튼 클릭 시 div 색상 변경 -->
   						<button type="button" class="link2" onclick="location.href='/ButtonAdmin2_2'">
   							<div class="user-plus">
   								<!-- 아이콘 -->
   								<img class="icon2" src="/image/Message.svg">    								
   							</div>
   							<div class="label">메시지 보내기</div>
   						</button>
   						
   						<!-- 통계 버튼 -->
 						<!-- 버튼 클릭 시 ButtonAdmin2_3.jsp로 이동(통계 페이지) -->
 						<!-- 버튼 클릭 시 div 색상 변경 -->
   						<button type="button" class="link2" onclick="location.href='/ButtonAdmin2_3'">
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
   			
   				<!-- 등록된 전체 운전자 수 -->
 				<div class="div9">					
   					<div class="wrapper">
 						<div class="div10">
   							<span>TOTAL </span>
   							
   							<!-- 전체 운전자 수 : DB에서 조회할 값! -->
   							<span class="span">153</span>
   							<span class="buttonadmin2jsp-span">명   </span>
 						</div>
   					</div>
   					
   					<!-- 구분선 -->
   					<div class="div11">
   					</div>
 				</div>
     				
     				
   <!-- =============== 운전자 리스트 ================ -->	
 				<div class="div12">
 				
 					<!-- 운전자 1 -->
   					<div class="div13">						
   						<div class="radio-button-unchecked-parent">
   						
   							<!-- 운전자 선택 버튼 -->
   							<!-- 클릭 시 아이콘 변경됨 -->
   							<img class="radio-button-unchecked-icon" src="/image/select.svg">
   							
   							<!-- 운행 유무 표시 -->
   							<!-- 운행 시 '운행'으로 표시 -->
   							<!-- 미운행 시 '미운행'으로 표시 -->
   							<div class="s021">미운행</div>
     					</div>
     					 					
 						<div class="avatar-parent">
 						
 							<!-- 운전자 증명사진 -->							
   							<div class="avatar-icon">
   								<!-- image 삽입 공간 : DB에서 이미지 url 가져오기! -->
   								<img class="avatar-img" src="/image/driver1.png">  								
   							</div> 
   							 							 							
   							<div class="s021">
   							  							
   								<!-- 운전자 이름 : DB에서 driverName값 가져오기! -->  								
   								<p class="p">강우진</p>
   								
   								<!-- 운전자 고유 ID : DB에서 driverIdx값 가져오기! --> 
   								<p class="buttonadmin2jsp-s021">(s021)</p>
   							</div>
 						</div> 												
     					
     					<!-- 운전자 세부 정보 -->	
 						<div class="parent">
   							<div class="div15">
 								<div class="title-parent">
 									
 									<!-- 카테고리 -->
   									<div class="title">
 										<b class="b3">
   											<p class="p">연락처</p>
   											<p class="p">생년 월일</p>
   											<p class="p">근무 지역</p>
   											<p class="p">관리자</p>
   											<p class="p">차량 번호 </p>
   											<p class="p">등록 일자 </p>
   											<p class="p">총 위험 행위 건수</p>
 										</b>
   									</div>   									
   									
   									<!-- 실제 운전자 세부 정보 -->
   									<div class="container">
 										<b class="b4">
 										
 											<!-- 운전자 연락처 : DB에서 driverContact값 가져오기! -->  	
   											<p class="p">010-3908-9546</p>
   											<!-- 운전자 생년월일 : DB에서 driverBirthdate값 가져오기! -->
   											<p class="p">1989-08-09</p>
   											<!-- 운전자 근무 지역 : DB에서 driverRegion값 가져오기! -->
   											<p class="p">전남 순천</p>
   											<!-- 담당 관리자 이름 : DB에서 adminName값 가져오기! -->
   											<p class="p">강우희</p>
   											<!-- 운전자 차량번호 : DB에서 carNumber값 가져오기! -->
   											<p class="p">16사 4268</p>
   											<!-- 등록 일자 : DB에서 createdAt값 가져오기! -->
   											<p class="p">2023-12-02</p>
   											<!-- 총 위험 행위 건수 : DB에서 조회하기! -->
   											<p class="p">0건</p>
 										</b>
   									</div>
   									
 								</div>
   							</div>				
   							
   							<!-- 정보 수정하기 버튼 -->
   							<!-- 클릭 시 정보 수정 페이지로 이동(미정) -->  							
   							<button type="button" class="div16" onclick="location.href='#'">
   								<b class="b5">정보 수정하기</b>
   							</button>
   							  							
 						</div>
   					</div>
   					
   					<!-- 운전자 2 -->
   					<div class="div13">  						
   						<div class="radio-button-unchecked-group">
   						
   							<!-- 운전자 선택 버튼 -->
   							<!-- 클릭 시 아이콘 변경됨 -->
   							<img class="radio-button-unchecked-icon" src="/image/select.svg">
   							
   							<!-- 운행 유무 표시 -->
   							<!-- 운행 시 '운행'으로 표시 -->
   							<!-- 미운행 시 '미운행'으로 표시 -->
   							<div class="s021">운행</div>
     					</div>    					     					
     					
   						<div class="avatar-parent">
   						
   							<!-- 운전자 증명사진 : DB에서 불러오기! -->							 							
 							<div class="avatar-icon">
 								<!-- image 삽입 공간 : DB에서 이미지 url 가져오기! -->
   								<img class="avatar-img" src="/image/driver2.png"> 
 							</div>
 							
 							<div class="s021">
 							
 								<!-- 운전자 이름 : DB에서 driverName값 가져오기! --> 
   								<p class="p">김태진</p>
   								
   								<!-- 운전자 고유 ID : DB에서 driverIdx값 가져오기! --> 
   								<p class="buttonadmin2jsp-s021">(s053)</p>
 							</div>
   						</div>
     					
     					<!-- 운전자 세부 정보 -->	
 						<div class="parent">
   							<div class="div15">
 								<div class="title-parent">
 								
 									<!-- 카테고리 -->
   									<div class="title">
 										<b class="b3">
   											<p class="p">연락처</p>
   											<p class="p">생년 월일</p>
   											<p class="p">근무 지역</p>
   											<p class="p">관리자</p>
   											<p class="p">차량 번호 </p>
   											<p class="p">등록 일자 </p>
   											<p class="p">총 위험 행위 건수</p>
 										</b>
   									</div>
   									
   									<!-- 실제 운전자 세부 정보 -->
   									<div class="container">
 										<b class="b4">
 										
 											<!-- 운전자 연락처 : DB에서 driverContact값 가져오기! -->  
   											<p class="p">010-8435-7136</p>
   											<!-- 운전자 생년월일 : DB에서 driverBirthdate값 가져오기! -->
   											<p class="p">1980-01-01</p>
   											<!-- 운전자 근무 지역 : DB에서 driverRegion값 가져오기! -->
   											<p class="p">서울 강남</p>
   											<!-- 담당 관리자 이름 : DB에서 adminName값 가져오기! -->
   											<p class="p">심우빈</p>
   											<!-- 운전자 차량번호 : DB에서 carNumber값 가져오기! -->
   											<p class="p">32사 9876</p>
   											<!-- 등록 일자 : DB에서 createdAt값 가져오기! -->
   											<p class="p">2023-03-15</p>
   											<!-- 총 위험 행위 건수 : DB에서 조회하기! -->
   											<p class="p">2건</p>
 										</b>
   									</div>
 								</div>
   							</div>
   							
   							<!-- 정보 수정하기 버튼 -->
   							<!-- 클릭 시 정보 수정 페이지로 이동(미정) --> 
   							<button type="button" class="div16" onclick="location.href='#'">
   								<b class="b5">정보 수정하기</b>
   							</button>
 						</div>												
   					</div>
   					
   					<!-- 운전자 3 -->
   					<div class="div13">						
   						<div class="radio-button-unchecked-parent">
   						
   							<!-- 운전자 선택 버튼 -->
   							<!-- 클릭 시 아이콘 변경됨 -->
   							<img class="radio-button-unchecked-icon" src="/image/select.svg">
   							
   							<!-- 운행 유무 표시 -->
   							<!-- 운행 시 '운행'으로 표시 -->
   							<!-- 미운행 시 '미운행'으로 표시 -->
   							<div class="s021">미운행</div>
     					</div>
   						
   						
 						<div class="avatar-parent">
 						
 							<!-- 운전자 증명사진 : DB에서 불러오기! -->
   							<div class="avatar-icon">
   								<!-- image 삽입 공간 : DB에서 이미지 url 가져오기! -->
   								<img class="avatar-img" src="/image/driver3.png">  
							</div> 
   							
   							<div class="s021">
   							
   								<!-- 운전자 이름 : DB에서 driverName값 가져오기! --> 
   								<p class="p">박지영</p>
   								
   								<!-- 운전자 고유 ID : DB에서 driverIdx값 가져오기! -->
   								<p class="buttonadmin2jsp-s021">(s031)</p>
   							</div>
 						</div>
     						    						   						
     					<!-- 운전자 세부 정보 -->
 						<div class="parent">
   							<div class="div15">
 								<div class="title-parent">
 								
 									<!-- 카테고리 -->
   									<div class="title">
 										<b class="b3">
   											<p class="p">연락처</p>
   											<p class="p">생년 월일</p>
   											<p class="p">근무 지역</p>
   											<p class="p">관리자</p>
   											<p class="p">차량 번호 </p>
   											<p class="p">등록 일자 </p>
   											<p class="p">총 위험 행위 건수</p>
 										</b>
   									</div>
   									
   									<!-- 실제 운전자 세부 정보 -->
   									<div class="container">
 										<b class="b4">
 										
 											<!-- 운전자 연락처 : DB에서 driverContact값 가져오기! -->
   											<p class="p">010-1234-5678</p>
   											<!-- 운전자 생년월일 : DB에서 driverBirthdate값 가져오기! -->
   											<p class="p">1985-05-15</p>
   											<!-- 운전자 근무 지역 : DB에서 driverRegion값 가져오기! -->
   											<p class="p">전북 전주</p>
   											<!-- 담당 관리자 이름 : DB에서 adminName값 가져오기! -->
   											<p class="p">유 선</p>
   											<!-- 운전자 차량번호 : DB에서 carNumber값 가져오기! -->
   											<p class="p">12가 3456</p>
   											<!-- 등록 일자 : DB에서 createdAt값 가져오기! -->
   											<p class="p">2025-01-20</p>
   											<!-- 총 위험 행위 건수 : DB에서 조회하기! -->
   											<p class="p">3건</p>
 										</b>
   									</div>
 								</div>
   							</div>
   							
   							<!-- 정보 수정하기 버튼 -->
   							<!-- 클릭 시 정보 수정 페이지로 이동(미정) -->  
   							<button type="button" class="div16" onclick="location.href='#'">
   								<b class="b5">정보 수정하기</b>
   							</button>
 						</div>
   					</div>
   					
   					<!-- 운전자 4 -->
   					<div class="div13"> 						
	   					<div class="radio-button-unchecked-group">
	   						
							<!-- 운전자 선택 버튼 -->
   							<!-- 클릭 시 아이콘 변경됨 -->
   							<img class="radio-button-unchecked-icon" src="/image/select.svg">
   							
   							<!-- 운행 유무 표시 -->
   							<!-- 운행 시 '운행'으로 표시 -->
   							<!-- 미운행 시 '미운행'으로 표시 -->
   							<div class="s021">운행</div>
	     				</div>
	     					     				
 						<div class="avatar-parent">
 							
   							<!-- 운전자 증명사진 : DB에서 불러오기! -->							
   							<div class="avatar-icon">
   								<!-- image 삽입 공간 : DB에서 이미지 url 가져오기! -->
   								<img class="avatar-img" src="/image/driver4.png">  
   							</div> 
   							
   							<div class="s021">
   							
   								<!-- 운전자 이름 : DB에서 driverName값 가져오기! -->
   								<p class="p">조현민</p>
   								
   								<!-- 운전자 고유 ID : DB에서 driverIdx값 가져오기! --> 
   								<p class="buttonadmin2jsp-s021">(s007)</p>
   							</div>
 						</div>
     					
     					<!-- 운전자 세부 정보 -->	
 						<div class="parent">
   							<div class="div15">
 								<div class="title-parent">
 									
 									<!-- 카테고리 -->
   									<div class="title">
 										<b class="b3">
   											<p class="p">연락처</p>
   											<p class="p">생년 월일</p>
   											<p class="p">근무 지역</p>
   											<p class="p">관리자</p>
   											<p class="p">차량 번호 </p>
   											<p class="p">등록 일자 </p>
   											<p class="p">총 위험 행위 건수</p>
 										</b>
   									</div>
   									
   									<!-- 실제 운전자 세부 정보 -->
   									<div class="container">
 										<b class="b4">
 										
 											<!-- 운전자 연락처 : DB에서 driverContact값 가져오기! -->
   											<p class="p">010-5821-7345</p>
   											<!-- 운전자 생년월일 : DB에서 driverBirthdate값 가져오기! -->
   											<p class="p">1978-05-12</p>
   											<!-- 운전자 근무 지역 : DB에서 driverRegion값 가져오기! -->
   											<p class="p">서울 강서</p>
   											<!-- 담당 관리자 이름 : DB에서 adminName값 가져오기! -->
   											<p class="p">심우빈</p>
   											<!-- 운전자 차량번호 : DB에서 carNumber값 가져오기! -->
   											<p class="p">12아 1842</p>
   											<!-- 등록 일자 : DB에서 createdAt값 가져오기! -->
   											<p class="p">2024-11-27</p>
   											<!-- 총 위험 행위 건수 : DB에서 조회하기! -->
   											<p class="p"> 1건</p>
 										</b>
   									</div>
 								</div>
   							</div>
   							
   							<!-- 정보 수정하기 버튼 -->
   							<!-- 클릭 시 정보 수정 페이지로 이동(미정) -->  							
   							<button type="button" class="div16" onclick="location.href='#'">
   								<b class="b5">정보 수정하기</b>
   							</button>
 						</div>
   					</div>
   					
   					<!-- 운전자 5 -->
   					<div class="div13">						
   						<div class="radio-button-unchecked-group">
   						
   							<!-- 운전자 선택 버튼 -->
   							<!-- 클릭 시 아이콘 변경됨 -->
   							<img class="radio-button-unchecked-icon" src="/image/select.svg">
   							
   							<!-- 운행 유무 표시 -->
   							<!-- 운행 시 '운행'으로 표시 -->
   							<!-- 미운행 시 '미운행'으로 표시 -->
   							<div class="s021">운행</div>
     					</div>
     						
 						<div class="avatar-parent">
 						
   							<!-- 운전자 증명사진 : DB에서 불러오기! -->							
   							<div class="avatar-icon">
   								<!-- image 삽입 공간 : DB에서 이미지 url 가져오기! -->
   								<img class="avatar-img" src="/image/driver5.png">
   							</div> 
   							
   							<div class="s021">
   							
   								<!-- 운전자 이름 : DB에서 driverName값 가져오기! -->
   								<p class="p">최은정</p>
   								
   								<!-- 운전자 고유 ID : DB에서 driverIdx값 가져오기! -->
   								<p class="buttonadmin2jsp-s021">(s092)</p>
   							</div>
 						</div>
     						
     					<!-- 운전자 세부 정보 -->	
 						<div class="parent">
   							<div class="div15">
 								<div class="title-parent">
 								
 									<!-- 카테고리 -->
   									<div class="title">
 										<b class="b3">
   											<p class="p">연락처</p>
   											<p class="p">생년 월일</p>
   											<p class="p">근무 지역</p>
   											<p class="p">관리자</p>
   											<p class="p">차량 번호 </p>
   											<p class="p">등록 일자 </p>
   											<p class="p">총 위험 행위 건수</p>
 										</b>
   									</div>
   									
   									<!-- 실제 운전자 세부 정보 -->
   									<div class="container">
										<b class="b4">
											<!-- 운전자 연락처 : DB에서 driverContact값 가져오기! -->
  											<p class="p">010-2934-5582</p>
  											<!-- 운전자 생년월일 : DB에서 driverBirthdate값 가져오기! -->
  											<p class="p">1985-02-03</p>
  											<!-- 운전자 근무 지역 : DB에서 driverRegion값 가져오기! -->
  											<p class="p">경기 고양</p>
  											<!-- 담당 관리자 이름 : DB에서 adminName값 가져오기! -->
  											<p class="p">심우빈</p>
  											<!-- 운전자 차량번호 : DB에서 carNumber값 가져오기! -->
  											<p class="p">37바 9021</p>
  											<!-- 등록 일자 : DB에서 createdAt값 가져오기! -->
  											<p class="p">2024-01-15</p>
  											<!-- 총 위험 행위 건수 : DB에서 조회하기! -->
  											<p class="p">0건</p>
										</b>
   									</div>
 								</div>
   							</div>
   							
   							<!-- 정보 수정하기 버튼 -->
   							<!-- 클릭 시 정보 수정 페이지로 이동(미정) -->  							
   							<button type="button" class="div16" onclick="location.href='#'">
   								<b class="b5">정보 수정하기</b>
   							</button>
 						</div>
   					</div>
   					
   					<!-- 운전자 6 -->
   					<div class="div13"> 					
   						<div class="radio-button-unchecked-parent">
       						
       						<!-- 운전자 선택 버튼 -->
   							<!-- 클릭 시 아이콘 변경됨 -->
   							<img class="radio-button-unchecked-icon" src="/image/select.svg">
   							
   							<!-- 운행 유무 표시 -->
   							<!-- 운행 시 '운행'으로 표시 -->
   							<!-- 미운행 시 '미운행'으로 표시 -->
   							<div class="s021">미운행</div>
     					</div>
     						
     						
 						<div class="avatar-parent">
 						
   							<!-- 운전자 증명사진 : DB에서 불러오기! -->							
   							<div class="avatar-icon">
   								<!-- image 삽입 공간 : DB에서 이미지 url 가져오기! -->
   								<img class="avatar-img" src="/image/driver6.png">  
   							</div>
   							
   							<div class="s021">
   							
   								<!-- 운전자 이름 : DB에서 driverName값 가져오기! --> 
   								<p class="p">이성호</p>
   								
   								<!-- 운전자 고유 ID : DB에서 driverIdx값 가져오기! -->
   								<p class="buttonadmin2jsp-s021">(s045)</p>
   							</div>
 						</div>
 						
     					<!-- 운전자 세부 정보 -->
 						<div class="parent">
   							<div class="div15">
 								<div class="title-parent">
 									
 									<!-- 카테고리 -->
   									<div class="title">
 										<b class="b3">
   											<p class="p">연락처</p>
   											<p class="p">생년 월일</p>
   											<p class="p">근무 지역</p>
   											<p class="p">관리자</p>
   											<p class="p">차량 번호 </p>
   											<p class="p">등록 일자 </p>
   											<p class="p">총 위험 행위 건수</p>
 										</b>
   									</div>
   									
   									<!-- 실제 운전자 세부 정보 -->
   									<div class="container">
 										<b class="b4">
 										
 											<!-- 운전자 연락처 : DB에서 driverContact값 가져오기! --> 
   											<p class="p">010-8472-1190</p>
   											<!-- 운전자 생년월일 : DB에서 driverBirthdate값 가져오기! -->
   											<p class="p">1992-09-26</p>
   											<!-- 운전자 근무 지역 : DB에서 driverRegion값 가져오기! -->
   											<p class="p">부산 해운대</p>
   											<!-- 담당 관리자 이름 : DB에서 adminName값 가져오기! -->
   											<p class="p">이솔민</p>
   											<!-- 운전자 차량번호 : DB에서 carNumber값 가져오기! -->
   											<p class="p">68사 7710</p>
   											<!-- 등록 일자 : DB에서 createdAt값 가져오기! -->
   											<p class="p">2024-03-02</p>
   											<!-- 총 위험 행위 건수 : DB에서 조회하기! -->
   											<p class="p">2건</p>
 										</b>
   									</div>
 								</div>
   							</div>
   							
   							<!-- 정보 수정하기 버튼 -->
   							<!-- 클릭 시 정보 수정 페이지로 이동(미정) -->  							
   							<button type="button" class="div16" onclick="location.href='#'">
   								<b class="b5">정보 수정하기</b>
   							</button>		
 						</div>
   					</div>
   					
   					<!-- 운전자 7 -->
   					<div class="div13">  					
   						<div class="radio-button-unchecked-parent">
   							
   							<!-- 운전자 선택 버튼 -->
   							<!-- 클릭 시 아이콘 변경됨 -->
   							<img class="radio-button-unchecked-icon" src="/image/select.svg">
   							
   							<!-- 운행 유무 표시 -->
   							<!-- 운행 시 '운행'으로 표시 -->
   							<!-- 미운행 시 '미운행'으로 표시 -->
   							<div class="s021">미운행</div>
     					</div>
     						    						
 						<div class="avatar-parent">
 							
 							<!-- 운전자 증명사진 : DB에서 불러오기! -->							
   							<div class="avatar-icon">
   								<!-- image 삽입 공간 : DB에서 이미지 url 가져오기! -->
   								<img class="avatar-img" src="/image/driver7.png">  								
   							</div> 
   							  							
   							<div class="s021">
   								
   								<!-- 운전자 이름 : DB에서 driverName값 가져오기! -->
   								<p class="p">이정훈</p>
   								
   								<!-- 운전자 고유 ID : DB에서 driverIdx값 가져오기! -->
   								<p class="buttonadmin2jsp-s021">(s102)</p>
   							</div>
 						</div>
     					
     					<!-- 운전자 세부 정보 -->	
 						<div class="parent">
   							<div class="div15">
 								<div class="title-parent">
 									
 									<!-- 카테고리 -->
   									<div class="title">
 										<b class="b3">
   											<p class="p">연락처</p>
   											<p class="p">생년 월일</p>
   											<p class="p">근무 지역</p>
   											<p class="p">관리자</p>
   											<p class="p">차량 번호 </p>
   											<p class="p">등록 일자 </p>
   											<p class="p">총 위험 행위 건수</p>
 										</b>
   									</div>
   									
   									<!-- 실제 운전자 세부 정보 -->
   									<div class="container">
 										<b class="b4">
 										
 											<!-- 운전자 연락처 : DB에서 driverContact값 가져오기! -->
   											<p class="p">010-9164-2335</p>
   											<!-- 운전자 생년월일 : DB에서 driverBirthdate값 가져오기! -->
   											<p class="p">1989-12-19</p>
   											<!-- 운전자 근무 지역 : DB에서 driverRegion값 가져오기! -->
   											<p class="p">대구 수성</p>
   											<!-- 담당 관리자 이름 : DB에서 adminName값 가져오기! -->
   											<p class="p">이솔민</p>
   											<!-- 운전자 차량번호 : DB에서 carNumber값 가져오기! -->
   											<p class="p">54자 2554</p>
   											<!-- 등록 일자 : DB에서 createdAt값 가져오기! -->
   											<p class="p">2024-02-08</p>
   											<!-- 총 위험 행위 건수 : DB에서 조회하기! -->
   											<p class="p">0건</p>
 										</b>
   									</div>
 								</div>
   							</div>
   							
   							<!-- 정보 수정하기 버튼 -->
   							<!-- 클릭 시 정보 수정 페이지로 이동(미정) -->  							
   							<button type="button" class="div16" onclick="location.href='#'">
   								<b class="b5">정보 수정하기</b>
   							</button>
 						</div>
   					</div>
   					
   					<!-- 운전자 8 -->
   					<div class="div13">				
   						<div class="radio-button-unchecked-parent">
   						
   							<!-- 운전자 선택 버튼 -->
   							<!-- 클릭 시 아이콘 변경됨 -->
   							<img class="radio-button-unchecked-icon" src="/image/select.svg">
   							
   							<!-- 운행 유무 표시 -->
   							<!-- 운행 시 '운행'으로 표시 -->
   							<!-- 미운행 시 '미운행'으로 표시 -->
   							<div class="s021">미운행</div>
     					</div>
     					   					
 						<div class="avatar-parent">
 						
 							<!-- 운전자 증명사진 : DB에서 불러오기! -->							
   							<div class="avatar-icon">
   								<!-- image 삽입 공간 : DB에서 이미지 url 가져오기! -->
   								<img class="avatar-img" src="/image/driver8.png">  
   							</div> 
   							  								
   							<div class="s021">
   							
   								<!-- 운전자 이름 : DB에서 driverName값 가져오기! -->
   								<p class="p">오민석</p>
   								
   								<!-- 운전자 고유 ID : DB에서 driverIdx값 가져오기! --> 
   								<p class="buttonadmin2jsp-s021">(s088)</p>
   							</div>
 						</div>
     					
     					<!-- 운전자 세부 정보 -->	
 						<div class="parent">
   							<div class="div15">
 								<div class="title-parent">
 									
 									<!-- 카테고리 -->
   									<div class="title">
 										<b class="b3">
   											<p class="p">연락처</p>
   											<p class="p">생년 월일</p>
   											<p class="p">근무 지역</p>
   											<p class="p">관리자</p>
   											<p class="p">차량 번호 </p>
   											<p class="p">등록 일자 </p>
   											<p class="p">총 위험 행위 건수</p>
 										</b>
   									</div>
   									
   									<!-- 실제 운전자 세부 정보 -->
   									<div class="container">
 										<b class="b4">
 										
 											<!-- 운전자 연락처 : DB에서 driverContact값 가져오기! --> 
   											<p class="p">010-7459-3011</p>
   											<!-- 운전자 생년월일 : DB에서 driverBirthdate값 가져오기! -->
   											<p class="p">1975-06-07</p>
   											<!-- 운전자 근무 지역 : DB에서 driverRegion값 가져오기! -->
   											<p class="p">전남 여수</p>
   											<!-- 담당 관리자 이름 : DB에서 adminName값 가져오기! -->
   											<p class="p">강우희</p>
   											<!-- 운전자 차량번호 : DB에서 carNumber값 가져오기! -->
   											<p class="p">17아 4862</p>
   											<!-- 등록 일자 : DB에서 createdAt값 가져오기! -->
   											<p class="p">2023-12-11</p>
   											<!-- 총 위험 행위 건수 : DB에서 조회하기! -->
   											<p class="p">3건</p>
 										</b>
   									</div>
 								</div>
   							</div>
   							
   							<!-- 정보 수정하기 버튼 -->
   							<!-- 클릭 시 정보 수정 페이지로 이동(미정) -->  							
   							<button type="button" class="div16" onclick="location.href='#'">
   								<b class="b5">정보 수정하기</b>
   							</button>
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
  	
  	
  	

</body>
</html>