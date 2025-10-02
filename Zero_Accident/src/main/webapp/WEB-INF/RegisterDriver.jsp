<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />


<!DOCTYPE html>
<html>
<head>
  	<meta charset="utf-8">
  	<meta name="viewport" content="initial-scale=1, width=device-width">
  	
  	<!-- 웹 폰트 url(나눔 스퀘어 네오) -->
    <link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square-neo.css" rel="stylesheet">

    <!-- style.css 파일의 스타일을 적용하겠다. -->
	<link rel="stylesheet"  href="/css/RegisterDriver.css" />
</head>
<body>
	
<!--===============================    헤더     ======================================== -->
    
    
  	<div class="registerdriverjsp">
  		
  			<!-- 상단 상태바 -->
    		<div class="status-barios">
    			<!-- 시간 -->
      			<div class="time">
       				<div class="clock">
         					<div class="hours">9</div>
         					<div class="hours">:</div>
         					<div class="hours">41</div>
       				</div>
       				<!-- 위치 아이콘 -->
					<!-- 이미지 사용 시 절대 경로로 작성 필요!(static부터 시작) -->
        			<img class="location-arrow-icon" src="/image/Location_arrow.svg">			
      			</div>
      			<div class="icons">
      				<!-- 신호 바 -->
       				<div class="cellular-signal">
        				<img src="/image/Cellular_Signal.svg">       					
       				</div>
       				<!-- 와이파이 -->
       				<div class="wifi">
         				<img src="/image/Wifi.svg">
       				</div>
       				<!-- 배터리 -->
       				<div class="battery">
         				<img class="border-icon" src="/image/Battery.svg">         					         					         					
       				</div>
      			</div>
    		</div>
    		
    		<div class="registerdriverjsp-div">
    			<!-- 뒤로 가기 아이콘 -->
    			<!-- 로그인 페이지로 이동 -->
      			<a class="chevron-left" href="/LoginDriver" aria-label="뒤로가기">
  					<img class="icon" src="/image/Chevron-left.svg" alt="뒤로가기">
				</a>
      			
      			<!-- 로고 -->
    			<div class="small">
      				<div class="registerdriverjsp-small">
       					<div class="small-child">
       					</div>
        					<div class="z0a">
          						<span>Z</span>
          						<span class="span">0</span>
          						<span class="a">A</span>
        					</div>
        					<img src="/image/Rectangle 212.svg" class="logo_deco_2">	
        					<img src="/image/Rectangle 212.svg" class="logo_deco_3">       					
      				</div>
    			</div>
    		</div>
    		
    		<!-- Zer0-Accident 텍스트 로고 -->	
    		<div class="div2">
      			<div class="div3">
       				<div class="zer0-accident">
        				<div class="registerdriverjsp-zer0-accident">
        					<p class="zer0-">         Zer0-</p>
        					<p class="accident">Accident</p>
        				</div>
       				</div>
      			</div>
      		</div>
      			
<!-- ================================  회원가입 창  ===================================== -->      			
      			
      			<!-- 운전자 회원가입 텍스트 -->
      			<div class="div4">
        			<div class="div5">운전자 회원가입</div>
      			</div>
      			
      			<!-- 회원가입 폼 -->
		
				<!-- 회원가입 데이터를 서버로 전송하겠다. -->
		        <!-- action: 데이터 전달 위치, 회원가입 데이터를 처리할 URL을 지정 -->
		        <!-- method: 데이터 전달 방식(get-보안x/post-보안o) -->		  
				<form action="${cpath}/RegisterDriver" method="post" class="div6" onsubmit="return validateForm()">
				
		   		  <!-- 아이디 -->
				  <label for="user_id" class="b">아이디</label>
					  <div class="input">
					  
					    <!-- 아이디 입력란 -->
            	   		<!-- name="driverId" : 서버로 전송될 필드 이름, DB 컬럼명과 동일  -->
            	   		<!-- required : 필드가 비어있으면 폼 제출 불가  -->
					    <input 
					      type="text" 
					      id="user_id" 
					      name="driverId" 
					      class="div7" 
					      placeholder="5~30자리 숫자, 영문" 
					      required 
					    >

					    
					    <!-- 중복확인 버튼 -->
				    	<button type="button" class="div8 registerdriverjsp-b" onclick="checkDriverId()">중복확인</button>
				  	  </div>
				  	  
				  	<!-- 우빈:중복확인메시지 -->
				  	<span id="idMsg" class="msg"></span>		
				  				    				
				  <!-- 비밀번호 -->
				  <label for="password" class="b">비밀번호</label>
				  	<div class="registerdriverjsp-input">
				  	
				  		<!-- 비밀번호 입력란 -->
		  				<!-- name="driverPwd" : 서버로 전송될 필드 이름, DB 컬럼명과 동일  -->				  
					    <input 
					      type="password" 
					      id="password" 
					      name="driverPwd" 
					      class="div7" 
					      placeholder="영문, 숫자, 특수문자를 포함한 8~16자" 
					      required 
					    >
				  	</div>
				
				  <!-- 비밀번호 확인 -->
				  <label for="password_confirm" class="b">비밀번호 확인</label>
				  	<div class="registerdriverjsp-input">
				  
				  		<!-- 비밀번호 확인란 -->
		  				<!-- name="driverPwdCheck" : 서버로 전송될 필드 이름  -->				  		
					    <input 
					      type="password" 
					      id="password_confirm" 
					      name="driverPwdCheck" 
					      class="div7" 
					      placeholder="동일한 비밀번호를 입력해주세요." 
					      required 
					    >
				  	</div>
				  	
				  	<!-- 우빈:중복확인메시지 -->
				  	<span id="pwdMsg" class="msg"></span>
				  				
				  <!-- 이름 -->
				  <label for="name" class="b">이름</label>
				  	<div class="registerdriverjsp-input">
				  	
				  		<!-- 이름 입력란 -->
		  				<!-- name="driverName" : 서버로 전송될 필드 이름, DB 컬럼명과 동일  -->				  		
					    <input 
					      type="text" 
					      id="name" 
					      name="driverName" 
					      class="div7" 
					      placeholder="이름을 입력해주세요." 
					      required 
					    >
				  	</div>
				  	
				  <!-- 근무지역 -->
			  	  <label for="region" class="b">근무지역</label>
			  		<div class="registerdriverjsp-input">
			  		
			  		 	<!-- 근무지역 입력란 -->
	  					<!-- name="driverRegion" : 서버로 전송될 필드 이름, DB 컬럼명과 동일  -->
					    <input 
					      type="text" 
					      id="region" 
					      name="driverRegion" 
					      class="div7" 
					      placeholder="근무지역을 시/군/구 단위까지 입력해주세요." 
					      required 
					    >
			  		</div>
			  		
			  	  <!-- 성별 선택 버튼 -->
		    	  <!-- name="driverGender" : 서버로 전송될 필드 이름, DB 컬럼명과 동일  -->						      	
				  <span class="b6">성별</span>
				  	<div class="input-parent">
					    <label class="input6">
					    
						  <!-- 남성 버튼 -->
					      <input 
						     type="radio" 
						     name="driverGender" 
						     value="M" 
						     required
					      >
					      <b class="b8">남성</b>
					    </label>
					    
					    <label class="input6">
					    
					      <!-- 여성 버튼 -->
					      <input 
					      type="radio" 
					      name="driverGender" 
					      value="F"
					      >
					      <b class="b8">여성</b>
				    	</label>
				  	</div>
				  
				
				  <!-- 휴대폰 -->
				  <label for="phone" class="b">휴대폰</label>
					  <div class="registerdriverjsp-input">
					  	  <!-- 휴대폰 번호 입력란 -->
		  				  <!-- name="driverContact" : 서버로 전송될 필드 이름, DB 컬럼명과 동일  -->					  	
					      <input 
					        type="tel" 
					        id="phone" 
					        name="driverContact" 
					        class="div7" 
					        placeholder="숫자만 입력해주세요." 
					        pattern="[0-9]{10,11}"
					        maxlength="11"
					        required 
					      >
					  </div>
					
				   <!-- 생년월일 -->
				   <label for="birth" class="b6">생년월일</label>
				  		<div class="input-wrapper">
				  			<!-- 생년월일 / 성별(주민번호 앞 7자리) 입력란 -->
		  					<!-- name="driverBirthdate" : 서버로 전송될 필드 이름, DB 컬럼명과 동일  -->
						    <input 
						      type="date" 
						      id="birth" 
						      name="driverBirthdate" 
						      class="input5 yyyymmdd" 
						      required 
						    >
						    
						</div>

<!-- ===============================  회원가입 버튼  ======================================-->

				   <!-- 회원가입 버튼 -->
				   <!-- 버튼 클릭 시 회원가입 성공 화면으로 이동 -->
				   <div class="button">
				    	<button type="submit" class="registerdriverjsp-button div5">
				    	회원가입
				    	</button>
				   </div>
				   
				</form>	

<script>
	let idChecked = false;
	
	function checkDriverId() {
	    const driverId = document.getElementById("user_id").value.trim(); // ✅ input id는 user_id
	    const msg = document.getElementById("idMsg");
	
	    if (driverId === "") {
	        msg.textContent = "아이디를 입력해주세요.";
	        msg.style.color = "red";
	        idChecked = false;
	        return;
	    }
	
	    fetch("${cpath}/checkDriverId", {   // ✅ URL도 driver용
	        method: "POST",
	        headers: { "Content-Type": "application/x-www-form-urlencoded" },
	        body: "driverId=" + encodeURIComponent(driverId) // ✅ 파라미터도 driverId
	    })
	    .then(res => res.json())
	    .then(data => {
	        if (data.duplicate) {
	            msg.textContent = "이미 사용 중인 아이디입니다";
	            msg.style.color = "red";
	            idChecked = false;
	        } else {
	            msg.textContent = "사용 가능한 아이디입니다";
	            msg.style.color = "green";
	            idChecked = true;
	        }
	    });
	}

	function validateForm() {
	    if (!idChecked) {
	        alert("아이디 중복확인을 해주세요!");
	        return false; // 제출 차단
	    }
	    return checkPwd(); // 비밀번호 검증도 통과해야 제출 가능
	}
	
	function checkPwd() {
	    const pw = document.getElementById("password").value; // ✅ input id = password
	    const pwCheck = document.getElementById("password_confirm").value; // ✅ input id = password_confirm
	    const msg = document.getElementById("pwdMsg");

	    if (pwCheck.length === 0) {
	        msg.textContent = "";
	        return false;
	    }

	    if (pw !== pwCheck) {
	        msg.textContent = "비밀번호가 일치하지 않습니다";
	        msg.style.color = "red";
	        return false;
	    } else {
	        msg.textContent = "비밀번호가 일치합니다";
	        msg.style.color = "green";
	        return true;
	    }
	}

	document.getElementById("password").addEventListener("input", checkPwd);
	document.getElementById("password_confirm").addEventListener("input", checkPwd);
	
	document.getElementById("user_id").addEventListener("input", function() { // ✅ user_id로 수정
	    idChecked = false;
	    document.getElementById("idMsg").textContent = "아이디 중복확인을 해주세요.";
	    document.getElementById("idMsg").style.color = "orange";
	});

	
</script>
</body>

</html>

