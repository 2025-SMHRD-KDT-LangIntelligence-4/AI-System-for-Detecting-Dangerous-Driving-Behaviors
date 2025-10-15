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

    <!-- Sidebar.css 파일의 스타일을 적용하겠다. -->
	<link rel="stylesheet"  href="/css/Sidebar.css" />
	
</head>
<body>

<!--==================================   사이드바   ======================================== --> 	
 	
 		
		<div class="div522">
	
			<!-- ZOA 로고 -->	
			<div class="div533">
  				<div class="avatar">
  				</div>
  				<div class="small">
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
			
			<!-- 구분선 -->
			<div class="div544">
			</div>
	 			
	 			
			<div class="div555">
  				<div class="main">Main</div>
  				
  				<!-- 클릭 시 MainAdmin.jsp로 이동 -->
  				<button type="button" class="mainButton" onclick="location.href='/MainAdmin'">
  					<img class="icon22" src="/image/MainButton.svg">
  				</button>
  				
  				<!-- 클릭 시 ButtonAdmin2.jsp로 이동(운전자 관리 페이지) -->
  				<button type="button" class="driverInfo" onclick="location.href='/ButtonAdmin2'">
  					<img class="icon33" src="/image/DriverButton.svg">
  				</button>
  				
  				<!-- 클릭 시 ButtonAdmin3.jsp로 이동(전체 로그 조회 페이지) -->
  				<button type="button" class="logButton" onclick="location.href='/ButtonAdmin3'">
  					<img class="icon22" src="/image/LogButton.svg">
  				</button>
  				
  				<!-- 클릭 시 ButtonAdmin4.jsp로 이동(실시간 블랙박스 모니터링 페이지) -->
  				<button type="button" class="blackbox" onclick="location.href='/ButtonAdmin4'">
  					<img class="icon33" src="/image/BlackboxButton.svg">
  				</button>
  				
  				<!-- 클릭 시 ButtonAdmin5.jsp로 이동(관리자 정보 페이지) -->
  				<button type="button" class="adminInfo" onclick="location.href='/ButtonAdmin5'">
  					<img class="icon33" src="/image/AdminButton.svg">
  				</button> 
  				
			</div>
			
			<!-- 구분선 -->
			<div class="div544">
			</div>
	 			
	 			
			<div class="div577">
  				<div class="main11">Settings</div>
  				
  				<!-- 클릭 시 ButtonAdmin6.jsp로 이동(시스템 알림 페이지) -->
 				<button type="button" class="noti" onclick="location.href='/ButtonAdmin6'">
 					<img class="icon33" src="/image/notifications.svg">
 				</button>
 				
 				<!-- 클릭 시 ButtonAdmin7.jsp로 이동(환경설정 페이지) -->
 				<button type="button" class="settings" onclick="location.href='/ButtonAdmin7'">
 					<img class="icon22" src="/image/Settings.svg">
 				</button>  				 				
			</div>
			
			<!-- 로그아웃 버튼 -->
  				<!-- 로그아웃 시 StartPage.jsp or LoginAdmin.jsp로 이동 -->
  				<button type="button" class="logOut" onclick="location.href='#'">
    				<img class="icon22" src="/image/Log-out.svg">
    			</button>
		</div>


	
	
</body>
</html>