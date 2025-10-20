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
    <!-- ButtonAdmin2.css 파일의 스타일을 적용하겠다. -->
	<link rel="stylesheet"  href="/css/ButtonAdmin2_0.css" />
	<!-- Sidebar.css 파일의 스타일을 적용하겠다. -->
	<link rel="stylesheet"  href="/css/Sidebar.css" />
	<!-- 우빈 : 카카오 지도 SDK -->
	<!-- <script src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=b1fc2610a3c9415f64affd1fc92ced5b&autoload=false"></script> -->
</head>
<body>
	
<!-- ======================================= 검색 ========================================  -->   			

   		
   			<!-- 검색바 -->
   			<div class="div94">
   				<!-- 돋보기 아이콘 -->
   				<img class="child" src="/image/search.svg">
   				 				
   			  	<!-- 검색어 입력란 -->				
   				<input 
				    type="text" 
				    class="searchTxt" 
				    placeholder="검색어를 입력하세요."
				    name="searchTxt"
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
	
	
	
	
	
</body>
</html>