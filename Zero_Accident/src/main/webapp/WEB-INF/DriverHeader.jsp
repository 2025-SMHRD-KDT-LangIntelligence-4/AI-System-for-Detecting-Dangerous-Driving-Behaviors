<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<!-- 웹 폰트 url(나눔 스퀘어 네오) -->
    <link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square-neo.css" rel="stylesheet">
    <!-- DriverHeader.css 파일의 스타일을 적용하겠다. -->
	<link rel="stylesheet"  href="/css/DriverHeader.css" />
	
</head>
<body>
	
<!-- ====================================  헤더 ========================================-->	
	
	
			<!-- 상단 상태바 -->
    	<div class="status-bar">
			<!-- 시간 -->
      		<div class="time">
        		<div class="clock">
          			<div class="hours">9</div>
          			<div class="hours">:</div>
          			<div class="hours">41</div>
        		</div>
					<!-- 위치 아이콘 -->
					<!-- 이미지 사용 시 절대 경로로 작성 필요!(static부터 시작) -->
        			<img src="/image/Location_arrow.svg" class="location_arrow">
      		</div>
      		<div class="icons">
				<!-- 신호 바 -->
        		<div class="cellular_signal">
          			<img src="/image/Cellular_Signal.svg">
        		</div>
				<!-- 와이파이 -->
        		<div class="wifi">
                    <img src="/image/Wifi.svg">        					
        		</div>
				<!-- 배터리 -->
        		<div class="battery">
          			<img src="/image/Battery.svg">		
        		</div>
      		</div>
    	</div>

		
	
</body>
</html>