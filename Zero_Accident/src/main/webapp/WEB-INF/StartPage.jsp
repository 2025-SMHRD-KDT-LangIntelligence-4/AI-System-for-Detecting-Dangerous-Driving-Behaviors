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

    <!-- style.css 파일의 스타일을 적용하겠다. -->
   	<link rel="stylesheet"  href="/css/StartPage.css" />

</head>
<body>

<!--===============================    헤더     ======================================== -->
  	
<div class="startpagejsp">
  	
  	<!-- Zer0-Accident 텍스트 로고 -->	
  	<div class="startpagejsp-zer0-accident">
    	<div class="zer0-accident2">
    		<p class="zer0-">      Zer0-</p>
    		<p class="accident">Accident</p>
 		</div>
  	</div>
  	
  	<!-- 로고 -->
  	<div class="div2">
 		<div class="zer0-accident">Zer0-Accident</div>
   			<div class="child">
   			</div>
    			<div class="z0a">
      				<span>Z</span>
      				<span class="span">0</span>
      				<span class="a">A</span>
    			</div>
    			
   			<img class="item" src="/image/Rectangle 212.svg">
    			
   			<img class="inner" src="/image/Rectangle 212.svg">
     			
 	</div>	
  	
<!--=============================== 관리자 로그인 버튼 ===================================== -->

    <button type="button" class="rectangle-parent" onclick="location.href='/LoginAdmin'">
  		<span class="frame-child"></span>
  		<span class="div">관리자 로그인</span>
  		<img class="image-3-icon" src="/image/manager_icon.png" alt="관리자 아이콘">
	</button>

<!--=============================== 운전자 로그인 버튼 ===================================== -->

    <button type="button" class="rectangle-group" onclick="location.href='/LoginDriver'">
  		<span class="frame-item"></span>
  		<span class="startpagejsp-div">운전자 로그인</span>
  		<img class="icon" src="/image/driver_icon.png" alt="운전자 아이콘">
	</button>
    		
<!--==================================== 저작권 ========================================= -->
        		
    <div class="copyright">
      	<div class="copyright-2025">Copyright ⓒ 2025 Zo-A Co. All rights reserved.</div>
    </div>
    
</div>
  	
</body>
</html>