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
   	<link rel="stylesheet"  href="/css/LoginAdmin.css" />
	
</head>
<body>

<!--===============================    헤더     ======================================== -->
  	
  	<div class="loginadminjsp">
  		<!-- 로고 -->	
    	<div class="div">
     		<div class="zer0-accident">Zer0-Accident</div>
    			<div class="child"></div>
     				<div class="z0a">
       					<span>Z</span>
       					<span class="span">0</span>
       					<span class="a">A</span>
     				</div>
     			<img class="item" src="/image/Rectangle 212.svg">
     			
     			<img class="inner" src="/image/Rectangle 212.svg">
      			
    	</div>
    	
    	<!-- Zer0-Accident 텍스트 로고 -->
   		<div class="loginadminjsp-zer0-accident">
    		<div class="zer0-accident2">
      			<p class="zer0-">         Zer0-</p>
      			<p class="accident">Accident</p>
    		</div>
   		</div>

<!--=============================== 로그인 창 ===================================== -->
   		   		   		
		<div class="loginadminjsp-div">
		
			<!-- LOGIN 텍스트 -->
			<div class="login">
        		<div class="div2">LOGIN</div>
      		</div>
      		
      		<!-- 로그인 폼 -->
		
			<!-- 로그인 데이터를 서버로 전송하겠다. -->
	        <!-- action: 데이터 전달 위치, 로그인 데이터를 처리할 URL을 지정 -->
	        <!-- method: 데이터 전달 방식(get-보안x/post-보안o) -->
	        <form action="#" method="post">
	        
	        	<!-- 아이디 입력란 -->
	            <!-- name="adminId" : 서버로 전송될 필드 이름, DB 컬럼명과 동일  -->
	            <!-- required : 필드가 비어있으면 폼 제출 불가  -->
	            <label for="adminId" class="b"></label>
					<input 
					  type="text" 
					  id="adminId" 
					  name="adminId" 
					  class="loginadminjsp-input" 
					  placeholder="아이디" 
					  required
					>                       
	            
	            <!-- 비밀번호 입력란 -->
	            <!-- name="adminPwd" : 서버로 전송될 필드 이름, DB 컬럼명과 동일  -->
	            <label for="adminPw" class="b"></label>
					<input 
					  type="password" 
					  id="adminPw" 
					  name="adminPw" 
					  class="input" 
					  placeholder="비밀번호" 
					  required
					>
	            
	            <!-- 로그인 버튼 -->
				<!-- 로그인 성공 시 MainAdmin.jsp로 이동-->
	       		<button type="submit" class="loginadminjsp-button" onclick="location.href = '/MainAdmin'">
				  <span class="div2">로그인</span>
				</button>      			
	      			
	        </form>
	        
	      	<!-- 구분선 -->	
	      	<<div class="line-horizontal"></div>
	      		
	      		<!-- 아이디/비밀번호 찾기 -->
				<div class="div3">
				  <span class="link">아이디 찾기</span>
				  
				  <!-- 구분선 -->
				  <div class="line-vertical"></div>
				  
				  <span class="link">비밀번호 찾기</span>
				</div>

<!-- ===============================  회원가입 버튼  ======================================-->
      		
      		<!-- 회원가입하기 버튼 -->
			<!-- RegisterAdmin.jsp로 이동 -->
   			<div class="button">
     			<div class="div2">회원가입 하기</div>
   			</div>
      			
    	</div>
    	
    		<!-- 저작권 텍스트 -->
    		<div class="copyright">
      			<div class="b">Copyright ⓒ 2025 Zo-A Co. All rights reserved.</div>
    		</div>
  	</div>
  	
  	
  	
</body>
</html>