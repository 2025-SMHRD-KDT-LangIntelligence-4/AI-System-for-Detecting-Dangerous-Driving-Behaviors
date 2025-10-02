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
	<link rel="stylesheet"  href="/css/RegisterAdmin.css" />
	
</head>
<body>

<!--===============================    헤더     ===================================== -->

	<!-- 뒤로가기 버튼 -->
  	<!-- 클릭 시 LoginAdmin.jsp로 이동 -->
  	<button type="button" class="arrow-back" onclick="location.href='/LoginAdmin'">
  		<img class="icon" src="/image/arrow_back.svg" alt="뒤로가기">
	</button>
  	
  	<!-- 전체 컨테이너 -->
  	<div class="registeradminjsp">
  	
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
   		<div class="registeradminjsp-zer0-accident">
     		<div class="zer0-accident2">
      			<p class="zer0-">         Zer0-</p>
      			<p class="accident">Accident</p>
     		</div>
   		</div>
 
 <!--============================== 회원가입 입력창 ==================================== -->
 
		<!-- 회원가입 정보 입력란 전체 컨테이너 -->
		<div class="registeradminjsp-div">
		
		  <!-- JOIN 텍스트 -->
		  <div class="join">
		    <div class="registeradminjsp-join">JOIN</div>
		  </div>
		
		  <!-- 회원가입 폼 -->
		  
		  <!-- 회원가입 데이터를 서버로 전송하겠다. -->
	      <!-- action: 데이터 전달 위치, 로그인 데이터를 처리할 URL을 지정 -->
	      <!-- method: 데이터 전달 방식(get-보안x/post-보안o) -->		  
		  <form action="/RegisterAdmin" method="post" class="parent" onsubmit="return validateForm()">
		
			  	<!-- 아이디 -->
			  	<div class="div2">
			  		<label for="adminId" class="div4">아이디</label>
				  	<div class="input input--with-button">
				  
						    <!-- 아이디 입력란 -->
			            	<!-- name="adminId" : 서버로 전송될 필드 이름, DB 컬럼명과 동일  -->
			            	<!-- required : 필드가 비어있으면 폼 제출 불가  -->		
						    <input 
						      type="text" 
						      id="adminId" 
						      name="adminId" 
						      class="admin-id-input"
						      placeholder="5~30자리 숫자, 영문" 
						      required
						    >
						    
						    <!-- 중복확인 버튼 -->    
					    	<button type="button" class="registerdriverjsp-b" onclick="checkAdminId()">중복확인</button>
				  	</div>
				  	
				  	<!-- 우빈:중복확인메시지 -->
				  	<span id="idMsg" class="msg"></span>
			  	</div>
		
			    <!-- 비밀번호 -->
			    <div class="div7">						    	
				      <label for="adminPw" class="div4">비밀번호</label>					      
				      		      
				      <!-- 비밀번호 입력란 -->
			  		  <!-- name="adminPwd" : 서버로 전송될 필드 이름, DB 컬럼명과 동일  -->
				      <input 
				        type="password" 
				        id="adminPwd" 
				        name="adminPwd" 
				        class="registeradminjsp-input" 
				        placeholder="영문, 숫자, 특수문자를 포함한 8~16자" 
				        required
				        oninput="checkPwd()"
				      >
				      <!-- 우빈:중복확인메시지 -->
					  <span id="pwdMsg" class="msg"></span>
			    </div>
		
			    <!-- 비밀번호 확인 -->
			    <div class="div11">
				      <label for="adminPwCheck" class="registeradminjsp-join">비밀번호 확인</label>
				      
				      <!-- 비밀번호 확인란 -->
		  			  <!-- name="driverPwdCheck" : 서버로 전송될 필드 이름  -->					      
				      <input 
				        type="password" 
				        id="adminPwCheck" 
				        name="adminPwdCheck" 
				        class="input2" 
				        placeholder="동일한 비밀번호를 입력해주세요." 
				        required
				        oninput="checkPwd()"
				      >
			    </div>

			    
			    <!-- 이름 -->
			    <div class="div7">
			    	  <label for="adminName" class="div4">이름</label>
			      
				      <!-- 이름 입력란 -->
			  		  <!-- name="adminName" : 서버로 전송될 필드 이름, DB 컬럼명과 동일  -->
				      <input 
				        type="text" 
				        id="adminName" 
				        name="adminName" 
				        class="registeradminjsp-input" 
				        placeholder="이름을 입력해주세요." 
				        required
				      >
			    </div>
		
			    <!-- 연락처 -->
			    <div class="div7">
				      <label for="adminContact" class="div4">연락처</label>
				      
				      <!-- 휴대폰 번호 입력란 -->
		  		  	  <!-- name="adminContact" : 서버로 전송될 필드 이름, DB 컬럼명과 동일  -->
				      <input 
				        type="tel" 
				        id="adminContact" 
				        name="adminContact" 
				        class="registeradminjsp-input" 
				        placeholder="01099509536" 
				        pattern="[0-9]{11}" 
				        required
				      >
				      
			    </div>

<!-- ===============================  회원가입 버튼  ======================================-->
		
			    <!-- 회원가입 버튼 -->
			    <!-- 회원가입 버튼 클릭 시 로그인 페이지로 이동 -->
			    <div class="button">
			      <button type="submit" class="registeradminjsp-join">회원가입 하기</button>
			    </div>
		
		  </form>
		</div>
		  
		</div>

	    		<!-- 저작권 텍스트 -->
	    		<div class="copyright">
	      			<div class="copyright-2025">Copyright ⓒ 2025 Zo-A Co. All rights reserved.</div>
	    		</div>
    		
  	</div>
  	
  	
  	
  	

<script>
	let idChecked = false; // 전역변수: 중복확인 완료 여부
	
	function checkAdminId() {
	    const adminId = document.getElementById("adminId").value.trim();
	    const msg = document.getElementById("idMsg");
	
	    if (adminId === "") {
	        msg.textContent = "아이디를 입력해주세요.";
	        msg.style.color = "red";
	        idChecked = false;
	        return;
	    }
	
	    fetch("/api/driver/checkAdminId", {
	        method: "POST",
	        headers: { "Content-Type": "application/x-www-form-urlencoded" },
	        body: "adminId=" + encodeURIComponent(adminId)
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
	    const pw = document.getElementById("adminPwd").value;
	    const pwCheck = document.getElementById("adminPwCheck").value;
	    const msg = document.getElementById("pwdMsg");

	    if (pwCheck.length === 0) {
	        msg.textContent = ""; // 비어있으면 메시지 지우기
	        return false; // 0자리면 false
	    }

	    if (pw !== pwCheck) {
	        msg.textContent = "비밀번호가 일치하지 않습니다";
	        msg.style.color = "red";
	        return false // 일치하지 않으면 false
	    } else {
	        msg.textContent = "비밀번호가 일치합니다";
	        msg.style.color = "green";
	        return true; // 일치하면 true
	    }
	}
	
	document.getElementById("adminId").addEventListener("input", function() {
	    idChecked = false;
	    document.getElementById("idMsg").textContent = "아이디 중복확인을 해주세요.";
	    document.getElementById("idMsg").style.color = "orange";
	});
</script>

</body>
</html>