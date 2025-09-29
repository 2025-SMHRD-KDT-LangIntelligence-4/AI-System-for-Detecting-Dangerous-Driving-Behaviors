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
</head>
<body>
	<!DOCTYPE html>
<html>
<head>
  	<meta charset="utf-8">
  	<meta name="viewport" content="initial-scale=1, width=device-width">
  	
  	<link rel="stylesheet"  href="./index.css" />
  	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=[object Object]&display=swap" />
  	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=[object Object]&display=swap" />
  	
  	<!-- 웹 폰트 url(나눔 스퀘어 네오) -->
    <link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square-neo.css" rel="stylesheet">

    <!-- style.css 파일의 스타일을 적용하겠다. -->
	<link rel="stylesheet"  href="/css/RegisterDriver.css" />
	
  	
</head>
<body>
  	
  	<div class="registerdriverjsp">
    		<div class="status-barios">
      			<div class="time">
        				<div class="clock">
          					<div class="hours">9</div>
          					<div class="hours">:</div>
          					<div class="hours">41</div>
        				</div>
        				<img class="location-arrow-icon" alt="">
        				
      			</div>
      			<div class="icons">
        				<div class="cellular-signal">
          					<img class="bar-1-icon" alt="">
          					
          					<img class="bar-2-icon" alt="">
          					
          					<img class="bar-3-icon" alt="">
          					
          					<img class="bar-4-icon" alt="">
          					
        				</div>
        				<div class="wifi">
          					<img class="registerdriverjsp-bar-1-icon" alt="">
          					
          					<img class="registerdriverjsp-bar-2-icon" alt="">
          					
          					<img class="registerdriverjsp-bar-3-icon" alt="">
          					
        				</div>
        				<div class="battery">
          					<img class="border-icon" alt="">
          					
          					<div class="indicator">
          					</div>
          					<img class="cap-icon" alt="">
          					
        				</div>
      			</div>
    		</div>
    		<div class="registerdriverjsp-div">
      			<div class="chevron-left" id="chevronLeftContainer">
        				<img class="icon" alt="">
        				
      			</div>
      			<div class="small">
        				<div class="registerdriverjsp-small">
          					<div class="small-child">
          					</div>
          					<div class="z0a">
            						<span>Z</span>
            						<span class="span">0</span>
            						<span class="a">A</span>
          					</div>
          					<img class="small-item" alt="">
          					
          					<img class="small-inner" alt="">
          					
        				</div>
      			</div>
    		</div>
    		<div class="div2">
      			<div class="div3">
        				<div class="zer0-accident">
          					<div class="registerdriverjsp-zer0-accident">
            						<p class="zer0-">         Zer0-</p>
            						<p class="accident">Accident</p>
          					</div>
        				</div>
      			</div>
      			<div class="div4">
        				<div class="div5">운전자 회원가입</div>
      			</div>
      			
      			
      			
      	<!-- =============== 회원가입 폼 =============== -->
      	<!-- 회원가입 데이터를 서버로 전송하겠다. -->
        <!-- action: 데이터 전달 위치, 로그인 데이터를 처리할 URL을 지정 -->
        <!-- method: 데이터 전달 방식(get-보안x/post-보안o) -->		
      	<form action="#" method="post" class="div6 register-form">
      	
			<!-- 아이디 입력란 -->
			<!-- name="driverId" : 서버로 전송될 필드 이름, DB 컬럼명과 동일  -->
		  	<div class="form-group">
		    	<input 
			    	type="text" 
			    	id="driver_id" 
			    	name="driverId" 
			    	class="input" 
			    	placeholder="5~30자리 숫자, 영문" 
			    	maxlength="20"
			    	required
			    	>
		    	<button type="button" class="registerdriverjsp-b">중복확인</button>
		  	</div>

		  <!-- 비밀번호 입력란 -->
		  <!-- name="driverPwd" : 서버로 전송될 필드 이름, DB 컬럼명과 동일  -->
		  <div class="form-group">
		    	<input 
				    type="password" 
				    id="password" 
				    name="driverPwd" 
				    class="registerdriverjsp-input" 
				    placeholder="영문, 숫자, 특수문자를 포함한 8~16자" 
				    required
				    >
		  </div>	

		  <!-- 비밀번호 확인란 -->
		  <!-- name="driverPwd" : 서버로 전송될 필드 이름, DB 컬럼명과 동일  -->
		  <div class="form-group">
		    	<input 
		    	type="password" 
		    	id="confirm_password" 
		    	name="driverPwd" 
		    	class="registerdriverjsp-input" 
		    	placeholder="동일한 비밀번호를 입력해주세요." 
		    	required
		    	>
		  </div>

		  <!-- 이름 입력란 -->
		  <!-- name="driverName" : 서버로 전송될 필드 이름, DB 컬럼명과 동일  -->
		  <div class="form-group">
		    	<input 
		    	type="text" 
		    	id="name" 
		    	name="driverName" 
		    	class="registerdriverjsp-input" 
		    	placeholder="이름을 입력해주세요." 
		    	required
		    	>
		  </div>
		
		  <!-- 휴대폰 번호 입력란 -->
		  <!-- name="driverContact" : 서버로 전송될 필드 이름, DB 컬럼명과 동일  -->
		  <div class="form-group">
		    	<input type="tel" 
		    	id="phone" 
		    	name="driverContact" 
		    	class="registerdriverjsp-input" 
		    	placeholder="숫자만 입력해주세요." 
		    	pattern="[0-9]{10,11}" 
		    	required
		    	>
		  </div>
		
		  <!-- 생년월일 / 성별(주민번호 앞 7자리) 입력란 -->
		  <!-- name="driverBirthdate", name="driverGender" : 서버로 전송될 필드 이름, DB 컬럼명과 동일  -->
		  <div class="b6">
		    <p class="accident">생년월일 / 성별</p>
		    <p class="accident">(주민번호 앞 7자리를 입력해주세요.)</p>
		  </div>
		  <div class="input-parent">
		  
		  		<!-- 생년월일 입력란 -->
		  		<!-- name="driverBirthdate" : 서버로 전송될 필드 이름, DB 컬럼명과 동일  -->
		    	<input 
		    	type="text" 
		    	id="birthdate" 
		    	name="driverBirthdate" 
		    	class="input5" 
		    	placeholder="YYMMDD" 
		    	maxlength="6" 
		    	required
		    	>
		    	
		    	<span class="frame-child">-</span>
		    		
		    	<!-- 성별 입력란 -->
		    	<!-- name="driverGender" : 서버로 전송될 필드 이름, DB 컬럼명과 동일  -->	
		    	<input 
		    	type="text" 
		    	id="gender" 
		    	name="driverGender" 
		    	class="input6" 
		    	maxlength="1" 
		    	required
		    	>
		    	
		    <div class="dots">
		      <span class="dots-child">*</span>
		      <span class="dots-child">*</span>
		      <span class="dots-child">*</span>
		      <span class="dots-child">*</span>
		      <span class="dots-child">*</span>
		      <span class="dots-child">*</span>
		      <span class="dots-child">*</span>
		    </div>
		  </div>
		
		  <!-- 근무지역 입력란 -->
		  <!-- name="driverRegion" : 서버로 전송될 필드 이름, DB 컬럼명과 동일  -->
		  <div class="form-group">
		    	<input 
		    	type="text" 
		    	id="work_area" 
		    	name="driverRegion" 
		    	class="registerdriverjsp-input" 
		    	placeholder="근무지역을 시/군/구 단위까지 입력해주세요." 
		    	required
		    	>
		  </div>
		
		  <!-- 회원가입 버튼 -->
		  <!-- 회원가입 성공 시 메인 페이지로 이동-->
		  <div class="button"> <div class="registerdriverjsp-button"> <div class="div5">회원가입</div> </div> </div>
		  	            
		</form>
      			
      			
      			
      			
      			
      			
      			
    		</div>
  	</div>
  	
  	
  	
  	
  
</html>
</body>
</html>