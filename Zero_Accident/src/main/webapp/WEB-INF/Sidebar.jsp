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
  				<div class="main">MAIN</div>
  				
  				
  				<div class="tooltip-wrapper">
	  				<!-- 클릭 시 MainAdmin.jsp로 이동 -->
	  				<button type="button" class="mainButton sidebar-btn" onclick="location.href='/MainAdmin'">
	  					<img class="icon22" src="/image/MainButton.svg">
	  				</button>
	  				<span class="tooltip">메인</span>
  				</div>
  				
  				<div class="tooltip-wrapper">
	  				<!-- 클릭 시 ButtonAdmin2_0.jsp로 이동(운전자 관리 페이지) -->
	  				<button type="button" class="driverInfo sidebar-btn" onclick="location.href='/ButtonAdmin2_0'">
	  					<img class="icon33" src="/image/DriverButton.svg">
	  				</button>
	  				<span class="tooltip">운전자 관리</span>
  				</div>
  				
  				<div class="tooltip-wrapper">
  				<!-- 클릭 시 ButtonAdmin3.jsp로 이동(전체 로그 조회 페이지) -->
	  				<button type="button" class="logButton sidebar-btn" onclick="location.href='/ButtonAdmin3'">
	  					<img class="icon22" src="/image/LogListButton.svg">
	  				</button>
	  				<span class="tooltip">로그 조회</span>
  				</div>
  				
  				<div class="tooltip-wrapper">
	  				<!-- 클릭 시 ButtonAdmin4.jsp로 이동(실시간 블랙박스 모니터링 페이지) -->
	  				<button type="button" class="blackbox sidebar-btn" onclick="location.href='/ButtonAdmin4'">
	  					<img class="icon33" src="/image/BlackboxButton.svg">
	  				</button>
	  				<span class="tooltip">블랙박스</span>
  				</div>			
  				
  				<div class="tooltip-wrapper">
	  				<!-- 클릭 시 ButtonAdmin5.jsp로 이동(관리자 정보 페이지) -->
	  				<button type="button" class="adminInfo sidebar-btn" onclick="location.href='/ButtonAdmin5'">
	  					<img class="icon33" src="/image/AdminButton.svg">
	  				</button>
	  				<span class="tooltip">관리자 마이페이지</span> 
  				</div>
  				
			</div>
			
			<!-- 구분선 -->
			<div class="div544">
			</div>
	 			
	 			
			<div class="div577">
  				<div class="main11">Settings</div>
  				
  				<div class="tooltip-wrapper">
	  				<!-- 클릭 시 ButtonAdmin6.jsp로 이동(시스템 알림 페이지) -->
	 				<button type="button" class="noti sidebar-btn" onclick="location.href='/ButtonAdmin6'">
	 					<img class="icon33" src="/image/notifications.svg">
	 				</button>
	 				<span class="tooltip">알림/공지</span>
 				</div>
 				
 				<div class="tooltip-wrapper">
	 				<!-- 클릭 시 ButtonAdmin7.jsp로 이동(환경설정 페이지) -->
	 				<button type="button" class="settings sidebar-btn" onclick="location.href='/ButtonAdmin7'">
	 					<img class="icon22" src="/image/SettingButton.svg">
	 				</button>
	 				<span class="tooltip">설정</span> 
 				</div>
 								 				
			</div>
			
			<div class="tooltip-wrapper">
				<!-- 로그아웃 버튼 -->
				<!-- 우빈 : 로그아웃 시 StartPage.jsp로 이동 -->
				<form action="logout" method="post">
	  				<button type="submit" class="logOut">
	    				<img class="icon22" src="/image/Log-out.svg">
	    			</button>
	    			<span class="tooltip">로그아웃</span>
	    		</form>
    		</div>
    		
		</div>
		
		
		<!-- 사이드 바 버튼 클릭 이벤트 -->
		<script>
			  // HTML 문서가 완전히 로드된 후 실행
			  document.addEventListener("DOMContentLoaded", () => {
			
			    // 모든 사이드바 버튼(.sidebar-btn 클래스 가진 요소)을 선택
			    const buttons = document.querySelectorAll(".sidebar-btn");
			
			    // localStorage에 저장된 '마지막으로 클릭한 버튼 인덱스'를 가져옴
			    const savedIndex = localStorage.getItem("activeSidebar");
			
			    // 저장된 인덱스가 존재하고, 해당 버튼이 실제로 존재하면
			    // 그 버튼에 'active' 클래스를 추가 (색상 유지)
			    if (savedIndex !== null && buttons[savedIndex]) {
			      buttons[savedIndex].classList.add("active");
			    }
			
			    // 각 버튼마다 클릭 이벤트를 등록
			    buttons.forEach((button, index) => {
			      button.addEventListener("click", () => {
			        
			        // ① 모든 버튼의 'active' 클래스 제거 (색상 초기화)
			        buttons.forEach(b => b.classList.remove("active"));
			        
			        // ② 클릭한 버튼에만 'active' 클래스 추가 (색상 변경)
			        button.classList.add("active");
			
			        // ③ 클릭한 버튼의 인덱스를 localStorage에 저장
			        //     → 새로고침해도 마지막 클릭 상태 유지 가능
			        localStorage.setItem("activeSidebar", index);
			      });
			    });
			  });
		</script>





	
	
</body>
</html>