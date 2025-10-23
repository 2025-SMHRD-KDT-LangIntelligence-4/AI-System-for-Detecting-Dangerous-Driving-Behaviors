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

    <!-- ButtonAdmin4.css 파일의 스타일을 적용하겠다. -->
	<link rel="stylesheet"  href="/css/ButtonAdmin4.css" />
	
	<!-- Sidebar.css 파일의 스타일을 적용하겠다. -->
	<link rel="stylesheet"  href="/css/Sidebar.css" />
	
	<!-- Datetime.css 파일의 스타일을 적용하겠다. -->
	<link rel="stylesheet"  href="/css/Datetime.css" />
	
</head>
<body>	

  	<!-- 전체 컨테이너 -->
  	<div class="buttonadmin4jsp">
  	
  		<!-- 사이드 바 -->
  		<!-- Sidebar.jsp 파일에서 작업하기! -->
  		<%@ include file="/WEB-INF/Sidebar.jsp" %>
  	
  	
<!--=====================================   메인   ======================================== -->   		  	
  	
  	
    	<!-- 메인 컨테이너 -->	
		<div class="div">
  			<div class="buttonadmin4jsp-div">
  			</div>
  			<div class="div2">
  			</div> 			
  			
  			<!-- 상단 관리자 프로필 -->
    		<!-- 클릭 시 ButtonAdmin5.jsp로 이동(관리자 정보 페이지) -->	   		
	   		<button type="button" class="div3" onclick="location.href='/ButtonAdmin5'">
	   			<!-- 프로필 이모티콘 -->
				<img class="icon" src="/image/accountCircle.svg">
				
				<!-- 관리자 이름 : DB에서 adminName값 가져오기! -->
				<b class="adminName">${sessionScope.loginAdmin.adminName} 관리자</b>
	     	</button>
  			
  			<!-- Zer0-Accident 텍스트 로고 --> 
  			<div class="div4">
				<b class="b2">대중교통 안전 관제 시스템</b>
				<div class="zer0-accident">
  					<div class="buttonadmin4jsp-zer0-accident">Zer0-Accident</div>
				</div>
  			</div>
  			
  			
<!--==================================   실시간 통계   ====================================== -->   		  	
  			 			
  			<!-- 실시간 통계 전체 컨테이너 -->
  			<div class="div5">
  			
 				<div class="div6">
 					
 					<!-- title -->									
   					<div class="wrapper">
   						<div class="div7">실시간 통계</div>
   					</div>
   					
   					<!-- 구분선 -->
   					<div class="div8">
   					</div>
 				</div>
    				  				  				
   				
  				<div class="inner">
					<div class="parent">
					
						<!-- 카테고리 배경 컨테이너  -->
  						<div class="div10">
  						</div>
  						
  						<!-- 통계 카테고리  -->
  						<div class="frame-parent">
							<div class="frame-group">
							
								<!-- 휴대폰 조작 -->
  								<div class="frame-container">
  									
  									<!-- 통계 아이콘 -->
									<div class="bar-chart-2-wrapper">
  										<div class="bar-chart-2">
  											<img class="buttonadmin4jsp-icon" src="/image/Bar.svg">  											
  										</div>
									</div>
																	
									<div class="container">
  										<b class="b3">휴대폰 조작</b>
									</div>
  								</div>
  								
  								<!-- 운전대 미제어 -->
  								<div class="frame-div">
									
									<!-- 통계 아이콘 -->
									<div class="bar-chart-2-wrapper">
  										<div class="bar-chart-2">
  											<img class="buttonadmin4jsp-icon" src="/image/Bar.svg">  											
  										</div>
									</div>
									
									<div class="container">
  										<b class="b3">운전대 미제어</b>
									</div>
  								</div>
  								
  								<!-- 졸음 운전 -->
  								<div class="frame-container">
									
									<!-- 통계 아이콘 -->
									<div class="bar-chart-2-wrapper">
  										<div class="bar-chart-2">
  											<img class="buttonadmin4jsp-icon" src="/image/Bar.svg">  											
  										</div>
									</div>
									
									<div class="container">
  										<b class="b3">졸음 운전</b>
									</div>
  								</div>
  								
  								<!-- 운전자 폭행 -->
  								<div class="frame-container">
 									
 									<!-- 통계 아이콘 -->
									<div class="bar-chart-2-wrapper">
  										<div class="bar-chart-2">
  											<img class="buttonadmin4jsp-icon" src="/image/Bar.svg">  											
  										</div>
									</div>
									
 									<div class="container">
   										<b class="b3">운전자 폭행</b>
 									</div>
  								</div>
							</div>
    							
    							
    		 <!-- ========== 위험 행위 종류별 실시간 발생 건수(일간) ========== -->
    		 	   							
							<div class="frame-parent3">
								
								<!-- 휴대폰 조작 발생 건수 -->
  								<div class="wrapper3">
 									<div class="b3">
 									
 										<!-- DB에서 eventType이 휴대폰 조작인 로그 조회하기! -->
   										<span class="span">${selectEventchart.totalP}</span>
   										<b class="b7">건</b>
 									</div>
  								</div>
  								
  								<!-- 운전대 미제어 발생 건수 -->
  								<div class="wrapper3">
  									<div class="b3">
  									
  										<!-- DB에서 eventType이 운전대 미제어인 로그 조회하기! -->
  										<span class="span">${selectEventchart.totalH}</span>
  										<b class="b7">건</b>
  									</div>
  								</div>
  								
  								<!-- 졸음 운전 발생 건수 -->
  								<div class="wrapper5">
									<div class="b3">
									
										<!-- DB에서 eventType이 졸음 운전인 로그 조회하기! -->
  										<span class="span">${selectEventchart.totalD}</span>
  										<b class="b7">건</b>
									</div>
  								</div>
  								
  								<!-- 운전자 폭행 -->
  								<div class="wrapper3">
									<div class="b3">
									
										<!-- DB에서 eventType이 운전자 폭행인 로그 조회하기! -->
  										<span class="span">${selectEventchart.totalA}</span>
  										<b class="b7">건</b>
									</div>
  								</div>
							</div>
  						</div>
					</div>
  				</div>
    				
    			<!-- 구분선 -->
   				<div class="div9">
   				</div>
    			
    			
   		<!-- ======== 총 위험 행위 발생 건수(일간) ========= -->	
   				
				<div class="wrapper7">
  					<div class="div15">
						<span class="span5">총</span>
						<span class="span">
  							
  							<!-- DB에서 가져오기!  -->
  							<span class="danger-num">${selectEventchart.totalSum}</span><span class="span5">건</span>
						</span>
  					</div>
				</div>
				
  			</div>
  			

<!--================================  날짜 및 시간  ======================================= -->   		  	  			


	  		<!-- Datetime.jsp 파일에서 작업하기! -->
	  		<%@ include file="/WEB-INF/Datetime.jsp" %>
  			
  			
<!--================================  블랙박스 리스트  ======================================= -->   		  	  			
  			<!-- 타이틀 -->
  			<div class="div110">실시간 모니터링</div>
  			 			
  			<!-- 메인 전체 컨테이너 -->
  			<div class="div16">
  							 				
  				<div class="div17">
  					
  					<!-- 반복문으로 9개의 블랙박스 출력됨 -->
	  				<c:forEach var = "b" items="${selectBlackbox}">
	  				  					
    					<div class="div45">
    					  <div class="div46">
    					
    						<!-- 상태바 --> 
      						<div class="div47">
      							
      							<!-- 위험 등급 표시 아이콘 -->
								<!-- eventLevel에 따라 색상 변경되어야 함 -->     							
     							<div class="${b.eventColor}">
     							</div>
     							   							
     							<div class="l00000212-parent">
     								
     								<!-- 로그 ID : DB에서 logIdx값 가져오기 -->
       								<div class="b">${b.displayLogidx}</div>
       								
       								<!-- 구분선 -->
       								<div class="frame-child">
       								</div>
       								
       								<!-- 위험 행위 종류 : DB에서 eventType값 가져오기! -->
									<!-- eventLevel에 따라 색상 변경되어야 함 -->
       								<div class="wrapper8">
       									<div class="b text-${b.eventColor}">${b.eventTypeKo}</div>
       								</div>
     							</div>
      						</div>
      						
      						                  <!-- 실시간 블랙박스 영상 -->
                  <div class="div49">
                      <c:choose>
                          <c:when test="${not empty b.eventVideo}">
                              <video
                                  src="${cpath}${b.eventVideo}"
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
      						<button type="button" 
      						class="alert-btn">
    							<div class="${b.eventColor2}">
      								<div class="alert-triangle">
      									<!-- 경고 아이콘 -->
      									<img class="icon8" src="${pageContext.request.contextPath}${b.icon}">      									
      								</div>
    							</div>
      						</button>
      						
      						<!-- 상세 정보 -->
      						<div class="div52">
    							<div class="frame-parent4">
    							
    								<!-- 위험 행위 발생 일시 : DB에서 createdAt값 가져오기 -->
      								<div class="wrapper10">
      									<b class="b">${b.regDate}</b>
      								</div>
      								
      								<!-- 운전자 이름, 운전자 ID : DB에서 driverName, driverIdx값 가져오기! -->
      								<div class="s101-wrapper">
       									<div class="b">${b.driverName}(${b.displayDriverIdx})</div>
      								</div>
      								
      								<!-- 차량번호 : DB에서 carNumber값 가져오기! -->
      								<div class="pm-wrapper">
       									<div class="b">${b.carNumber}</div>
      								</div>
      								
      								<!-- 위험 행위 발생 위치 : DB에서 가져오기! -->
      								<div class="pm-wrapper">
       									<div class="b">${b.displayAddr}</div>
      								</div>
       								</div>
     							</div>
      						</div>
    					</div>
    				</c:forEach>	
    				 			   			 			
  				</div>
  			</div>		 	
		</div>
    		
    	<!-- 저작권 -->	
   		<div class="copyright">
   			<div class="b">Copyright ⓒ 2025 Zo-A Co. All rights reserved.</div>
   		</div>
  	</div>
  	
  	 	
  	
  	
	
	
</body>
</html>