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
	<link rel="stylesheet"  href="/css/LoginDriver.css" />
    <!-- DriverHeader.css 파일의 스타일을 적용하겠다. -->
	<link rel="stylesheet"  href="/css/DriverHeader.css" />
	
</head>
<body>

<!-- 회원가입 완료 메시지 띄우는 팝업 -->
	<c:if test="${not empty msg}">
	    <script>
	        alert("${msg}");
	    </script>
	</c:if>
	
<!-- 회원가입 완료 메시지 띄우는 팝업 -->
	<c:if test="${not empty alertmsg}">
	    <script>
	        alert("${alertmsg}");
	    </script>
	</c:if>
	
<!--===============================    헤더     ======================================== -->
  	
  	<!-- 전체 컨테이너 -->
  	<div class="container">
		
		<!-- 상단 바 -->
		<!-- DriverHeader.jsp 파일에서 작업하기 -->
		<%@ include file="/WEB-INF/DriverHeader.jsp" %>
		
		
		<!-- 화면 닫음 버튼 -->
		<!-- 클릭 시 첫 시작 페이지(StartPage.jsp)로 이동 -->
		<div class="close">
  			<a href="/" class="chevron-left">
    			<img class="icon" src="/image/exit.svg" alt="닫기">
  			</a>
		</div>

		
		<!-- Zer0-Accident 텍스트 로고 -->	
		<div class="logo_2">
			<div class="zer0-accident">
				<div class="text_logo">
					<p class="zer0-">Zer0-</p>
					<p class="accident">Accident</p>
				</div>
			</div>
		</div>

<!-- ================================   로그인 창   ===================================== -->
		
		<!-- 운전자 로그인 텍스트 -->
		<div class="title">
			<div class="title_text">운전자 로그인</div>
		</div>


		<!-- 로그인 폼 -->
		
		<!-- 로그인 데이터를 서버로 전송하겠다. -->
        <!-- action: 데이터 전달 위치, 로그인 데이터를 처리할 URL을 지정 -->
        <!-- method: 데이터 전달 방식(get-보안x/post-보안o) -->
        <form action="${cpath}/LoginDriver" method="post">

            <!-- 아이디 입력란 -->
            <!-- name="driverId" : 서버로 전송될 필드 이름, DB 컬럼명과 동일  -->
            <!-- required : 필드가 비어있으면 폼 제출 불가  -->
            <input 
                type="text" 
                name="driverId"
                class="input_id" 
                placeholder="아이디"
                maxlength="20"
                required   
            >

            <!-- 비밀번호 입력란 -->
            <!-- name="driverPwd" : 서버로 전송될 필드 이름, DB 컬럼명과 동일  -->
            <input 
                type="password" 
                name="driverPwd"
                class="input_pwd" 
                placeholder="비밀번호" 
                maxlength="16"
                required
            >
            
            <!-- 로그인 버튼 -->
			<!-- 로그인 성공 시 메인 페이지로 이동-->
            <div class="button">
                <button type="submit" class="btn_login">
					<span class="login_text">로그인</span>
				</button>
            </div>
			
        </form>
		
		<!-- 아이디/비밀번호 저장하기 -->
		<div class="div5">
			<div class="checkbox">
				<div class="logindriverjsp-checkbox">
					<div class="checkbox2">
						<div class="check">
							<img src="/image/Check.svg">	
						</div>
					</div>
					<div class="div6">아이디/비밀번호 저장하기</div>
				</div>
				<div class="description-row">
					<div class="check"></div>
					<div class="description">Description</div>
				</div>
			</div>
		</div>

		<!-- 아이디/비밀번호 찾기 -->
		<div class="div8">
			<div class="div9">
				<b class="b">아이디 찾기</b>
			</div>

			<!-- 구분선 -->
			<div class="bar-icon"></div>
			
			<div class="div10">
				<b class="b">비밀번호 찾기</b>
			</div>
		</div>

<!-- ===============================  회원가입 버튼  ======================================-->

		<!-- 구분선 -->
		<div class="divider-line"></div>
    	
		<!-- 회원가입하기 버튼 -->
		<!-- RegisterDriver.jsp로 이동 -->
		<button type="button" class="btn_join" onclick="location.href='/RegisterDriver'">
			<span class="join_text">회원가입 하기</span>
		</button>


		<!-- 저작권 텍스트 -->
		<div class="copyright">
			<div class="b">Copyright ⓒ 2025 Zo-A Co. All rights reserved.</div>
		</div>
  	</div>

</body>
</html>