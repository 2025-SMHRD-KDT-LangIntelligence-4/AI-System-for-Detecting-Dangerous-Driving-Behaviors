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

    <!-- ButtonAdmin5.css 파일의 스타일을 적용하겠다. -->
	<link rel="stylesheet"  href="/css/ButtonAdmin5.css" />
	
	<!-- Sidebar.css 파일의 스타일을 적용하겠다. -->
	<link rel="stylesheet"  href="/css/Sidebar.css" />
	
	<!-- Datetime.css 파일의 스타일을 적용하겠다. -->
	<link rel="stylesheet"  href="/css/Datetime.css" />
	
</head>
<body>
	
	<!-- 전체 컨테이너 -->
  	<div class="buttonadmin5jsp">
  	
  		<!-- 사이드 바 -->
  		<!-- Sidebar.jsp 파일에서 작업하기! -->
  		<%@ include file="/WEB-INF/Sidebar.jsp" %>
  	

<!--=====================================   메인   ======================================== -->   		  	
 		
    		
    	<!-- 메인 컨테이너 -->
 		<div class="div">
   			<div class="buttonadmin5jsp-div">
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
   					<div class="buttonadmin5jsp-zer0-accident">Zer0-Accident</div>
 				</div>
   			</div>
   			
   			
<!--====================================  시스템 알림  ====================================== -->   		  	
   			
   			
   			<!-- 시스템 알림 전체 컨테이너 -->
   			<div class="div5">
   				<!-- 시스템 알림 리스트 -->
 				<div class="parent">
 				
 					<!-- 시스템 알림 1 -->
   					<div class="div6">
 						<div class="frame-parent">
 							
 							<!-- title -->
   							<div class="bookmark-filled-parent">
   								<!-- 북마크 아이콘 -->
   								<img class="bookmark-filled-icon" src="/image/bookmark.svg">
   								
   								<b class="b3">경고 알림 미발송 발생</b>
   							</div>
   							
   							<!-- content -->
   							<div class="div7">
 								<div class="div8">
   									<p class="pp">졸음운전 경고 신호가 정상적으로 </p>
   									<p class="pp">발송되지 않았습니다.</p>
   									<p class="pp">서버 연결 상태를 확인하세요.</p>
 								</div>
   							</div>
   							
 						</div>
   					</div>
   					
   					<!-- 시스템 알림 2 -->
   					<div class="div6">
 						<div class="frame-parent">
 							
 							<!-- title -->
   							<div class="bookmark-filled-parent">
   								<!-- 북마크 아이콘 -->
   								<img class="bookmark-filled-icon" src="/image/bookmark.svg">
   								
   								<b class="b3">시스템 업데이트 완료 안내</b>
   							</div>
   							
   							<!-- content -->
   							<div class="div7">
								<div class="div11">시스템 업데이트가 정상적으로 완료되었습니다. </div>
   							</div>
   							
 						</div>
   					</div>
   					
   					<!-- 시스템 알림 3 -->
   					<div class="div6">
 						<div class="frame-parent">
 						
 							<!-- title -->
   							<div class="bookmark-filled-parent">
   								<!-- 북마크 아이콘 -->
   								<img class="bookmark-filled-icon" src="/image/bookmark.svg">
   								
   								<b class="b3">시스템 정기 점검 안내</b>
   							</div>
   							
   							<!-- content -->
   							<div class="div7">
								<div class="div14">2025-11-03(월)에 관제시스템의 정기 점검이 진행됩니다.</div>
   							</div>
 						</div>
   					</div>
   					
 				</div> <!-- 시스템 알림 리스트 끝-->
   			</div> <!-- 시스템 알림 전체 컨테이너 끝-->
   			
   			
<!--==================================   날짜 및 시간   ===================================== -->   		  	


   			<!-- Datetime.jsp 파일에서 작업하기! -->
	  		<%@ include file="/WEB-INF/Datetime.jsp" %>  			
   			   			
 
<!--==================================  관리자 프로필   =================================== -->   		  	 
 
   			
   			<!-- title -->
   			<div class="div127">관리자 마이페이지</div>
   			
   			<div class="div15">
   				<div class="div16">
   				</div>
   				
   				<!-- 관리자 정보 컨테이너 -->
				<div class="div17">
  					<div class="frame-div">
  						
 						<div class="avatar-parent"> 														
 							<div class="avatarBorder">
 							
	 							<!-- 관리자 증명사진 : DB에서 adminImg 가져오기! -->
	   							<img class="avatar-icon" src="/image/admin1.png">
							</div>
   							
   							<div class="a021">
   							
   								<!-- 관리자 이름 : DB에서 adminName값 가져오기! -->
   								<p class="p">강우희 관리자</p>
   								
   								<!-- 관리자 ID : DB에서 adminIdx값 가져오기! -->
   								<p class="buttonadmin5jsp-a021">(A021)</p>
   							</div>
 						</div>
    						
    					<!-- 구분선 -->	
   						<div class="div18">
   						</div>
   						
   						
 						<div class="div19">
   							<div class="title-parent">
   								
   								<!-- 관리자 정보 카테고리 -->
 								<div class="title">
   									<b class="b6">
   										<p class="ctg">연락처</p>
   										<p class="ctg">생년 월일</p>
   										<p class="ctg">소속</p>
   										<p class="ctg">관리 지역</p>
   										<p class="ctg">담당 운전자 수</p>
   										<p class="ctg">누적 경고 처리 </p>
   										<p class="ctg">등록 일자 </p>
   									</b>
 								</div>
     								
     							<!-- 실제 관리자 정보 -->	
 								<div class="wrapper">
   									<b class="b7">
   										
   										<!-- 관리자 연락처 : DB에서 adminContact값 가져오기! -->
   										<p class="info">010-3908-9546</p>
   										
   										<!-- 관리자 생년월일 : DB에서 가져오기! -->					
   										<p class="info">1989-08-09</p>
   										
   										<!-- 관리자 소속(회사명) : DB에서 가져오기! -->
   										<p class="info">   합자회사 순천교통</p>
   										
   										<!-- 담당 지역 : DB에서 가져오기! -->
   										<p class="info">전남 순천</p>
   										
   										<!-- 담당 운전자 수 : DB에서 조회하기! -->
   										<p class="info">37명</p>
   										
   										<!-- 누적 경고 처리 횟수 : DB에서 조회하기! -->
   										<p class="info">125건</p>
   										
   										<!-- 관리자 가입 일자 : DB에서 joined_at값 가져오기! -->
   										<p class="info">2021-12-02</p>
   									</b>
 								</div>
   							</div>
 						</div>
  					</div>
				</div>
				
				<!-- 정보 수정하기 버튼 -->
				<!-- 클릭 시 정보 수정 페이지로 이동(미정) -->
				<button type="button" class="div99" onclick="location.href='#'">
					<b class="b8">정보 수정하기</b>
				</button>
				
				
<!--==================================  관리자 활동 요약 탭   ================================ -->   		  	 				
			
				<!-- 활동 요약 탭 전체 컨테이너 -->
				<div class="div100">
					
					<!-- 카테고리 -->
   					<div class="div101">
   						<div class="buttonadmin5jsp-frame-parent">
   							
   							<!-- 주간 위험 행위 처리 건수 -->
   							<div class="frame-parent2">
   								<!-- 통계 아이콘 -->
 								<div class="bar-chart-2-wrapper">
   									<div class="bar-chart-2">
   										<img class="buttonadmin5jsp-icon" src="/image/Chart.svg">     										
   									</div>
 								</div>
 								
 								<!-- title -->
 								<div class="wrapper45">
   									<div class="div102">주간 위험 행위 처리 건수 </div>
 								</div>
   							</div>
   							
     						<!-- 미확인 로그 수 -->	
 							<div class="frame-parent3">
 								<!-- 통계 아이콘 -->
   								<div class="bar-chart-2-wrapper">
 									<div class="bar-chart-2">
   										<img class="buttonadmin5jsp-icon" src="/image/Chart.svg">
   										
 									</div>
   								</div>
   								
   								<!-- title -->
   								<div class="wrapper45">
   									<div class="div102">미확인 로그</div>
   								</div>
 							</div>
     							
     						<!-- 최다 경고 발생 운전자 -->	
 							<div class="frame-parent4">
 								<!-- 통계 아이콘 -->
   								<div class="bar-chart-2-wrapper">
 									<div class="bar-chart-2">
   										<img class="buttonadmin5jsp-icon" src="/image/Chart.svg">
   										
 									</div>
   								</div>
   								
   								<!-- title -->
   								<div class="wrapper45">
   									<div class="div102">최다 경고 발생 운전자</div>
   								</div>
 							</div>
   						</div>
   					</div> 
			   					
			   					
			   					
   					<div class="inner59">
 						<div class="frame-parent5">
 						
 							<!-- 주간 위험 행위 처리 건수 -->
   							<div class="wrapper48">
 								<div class="div105">
 									
 									<!-- log 테이블에서  -->
   									<span class="span">34</span><b class="b9">건</b>
 								</div>
   							</div>
   							
   							<!-- 미확인 로그 수 -->
   							<div class="wrapper48">
 								<div class="div105">
   									<span class="span">02</span><b class="b9">건</b>						
 								</div>
   							</div>
   							
   							<!-- 최다 경고 발생 운전자-->
   							<div class="wrapper50">
								<div class="div105">
  									<span class="span">정민수 </span><b class="b9">운전자</b>
								</div>
   							</div>
 						</div>
   					</div>
			 	</div> <!-- 활동 요약 탭 전체 컨테이너 끝 -->
     				
     				
<!--=====================================  공지사항   =================================== -->   		  	 				

				
				<!-- 공지사항 전체 컨테이너 -->	
 				<div class="div108">
 					
 					<!-- 헤더 -->
 					<div class="div116">
 						<!-- title -->
 						<div class="wrapper51">
   							<div class="div22">공지사항</div>
 						</div>
 						<!-- 구분선 -->
 						<div class="div118">
 						</div>
 						<!-- 더보기 버튼 -->
 						<img class="addCircle" src="/image/addCircle.svg"> 						     						
   					</div>
   					
   					<!-- 공지사항 리스트 -->
   					<div class="div109">
   						
   						<!-- 공지사항 1 -->
 						<button type="button" class="div110">
 							<!-- 아이콘 -->
   							<div class="chevron-right">
   								<img class="icon4" src="/image/ChevronRight.svg">   								
   							</div>
   							
   							<!-- 공지사항 1 title -->
   							<div class="b">운전자 안전 점검 주간 운영 안내</div>
 						</button>
     						
     					<!-- 공지사항 2 -->	
 						<button type="button" class="div110">
 							<!-- 아이콘 -->
   							<div class="chevron-right">
   								<img class="icon4" src="/image/ChevronRight.svg">    								
   							</div>
   							
   							<!-- 공지사항 2 title -->
   							<div class="b">블랙박스 영상 보관 정책 변경 안내</div>
 						</button>
     						
     					<!-- 공지사항 3 -->	
 						<button type="button" class="div110">
 							<!-- 아이콘 -->
   							<div class="chevron-right">
   								<img class="icon4" src="/image/ChevronRight.svg">  								
   							</div>
   							
   							<!-- 공지사항 3 title -->
   							<div class="b">관제 모니터링 서버 점검 예정</div>
 						</button>
 						
   					</div> <!-- 공지사항 리스트 끝-->	
   					
 				</div> <!-- 공지사항 전체 컨테이너 끝-->

								
<!--=================================  담당 운전자 리스트   =============================== -->   		  	 				
				
				
				<!-- 운전자 리스트 전체 컨테이너 -->
 				<div class="div20">
 				
 					<!-- 헤더 -->
   					<div class="div21">
   						<!-- title -->
 						<div class="container">
   							<div class="div22">담당 운전자 리스트</div>
 						</div>
 						<!-- 구분선 -->
 						<div class="div23">
 						</div>
					</div>
   					
   					<!-- 운전자 리스트 -->
   					<div class="group">
   						
   						<!-- 동일한 운전자 15번 반복 출력  -->
   						<c:forEach var="i" begin="1" end="15">
   							<!-- 운전자 1명 -->
	 						<div class="div24">
	 							
	 							<!-- 운전자 사진 : DB에서 driverImg값 가져오기! -->
	   							<img class="buttonadmin5jsp-avatar-icon" src="/image/driver1.png">
	   							
	   							
	   							<div class="div25">
	   							
		   							<!-- 운전자 ID : DB에서 driverIdx값 가져오기! -->
    								<div class="inner">
      									<div class="s001-wrapper">
   											<div class="s001">S001</div>
      									</div>
    								</div>
    								
    								<!-- 운전자 이름 : DB에서 driverName값 가져오기! -->
    								<div class="child">
      									<div class="child">
       										<div class="s001">김영호</div>
      									</div>
    								</div>
    								
    								<!-- 차량 번호 : DB에서 carNumber값 가져오기! -->
    								<div class="buttonadmin5jsp-inner">
      									<div class="s001-wrapper">
      										<div class="s001">서울 12아 3456</div>
      									</div>
    								</div>
	     							
	     							<!-- 차량 종류 : DB에서 carType값 가져오기! -->	
    								<div class="inner2">
      									<div class="s001-wrapper">
      										<div class="s001">택시</div>
      									</div>
    								</div>
    								
	   							</div>
	 						</div> <!-- 운전자 1명 끝 -->
 						</c:forEach> 
 						 												
   					</div> <!-- 운전자 리스트 끝 -->
 				</div> <!-- 운전자 리스트 전체 컨테이너 끝 -->
     				
   			</div>
   			
   			<!-- 시스템 알림 타이틀 -->
   			<div class="div119">
 				<div class="container">
   					<div class="div22">시스템 알림</div>
 				</div>
 				<!-- 구분선 -->
 				<div class="div233">
 				</div>
   			</div>
   			
   			
   			
   			
   			
   			
 		</div> <!-- 메인 컨테이너 끝 -->
 		
 		<div class="copyright">
   			<div class="b">Copyright ⓒ 2025 Zo-A Co. All rights reserved.</div>
 		</div>
 		
  	</div> <!-- 전체 컨테이너 끝 -->
  	
  	
  	
  	

	
	
	
	
	
</body>
</html>