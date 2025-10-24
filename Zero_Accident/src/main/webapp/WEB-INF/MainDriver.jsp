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
    <!-- MainDriver.css 파일의 스타일을 적용하겠다. -->
	<link rel="stylesheet"  href="/css/MainDriver.css" />

</head>
<body>
	
	
  	<!-- 전체 컨테이너 -->
  	<div class="maindriverjsp">
  	
  		<!-- 상단 바 -->
		<!-- DriverHeader.jsp 파일에서 작업하기 -->
		<%@ include file="/WEB-INF/DriverHeader.jsp" %>
    	
    	<!-- 로고 -->	
    	<div class="div14">
			<div class="small">
  				<div class="maindriverjsp-small">
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
    	</div>
    	
    	<!-- 로그아웃 버튼 -->
    	<!-- 로그아웃 시 StartPage.jsp로 이동 -->	
    	<form method="post" action="logout">
	    	<button type="submit" class="logOut">로그아웃</button>
    	</form>	
    		
    			
 		<div class="maindriverjsp-div">
 		
 			<!-- Zer0-Accident 텍스트 로고 -->
   			<div class="div2">
				<div class="zer0-accident">
  					<div class="maindriverjsp-zer0-accident">
  						<p class="zer0-">         Zer0-</p>
  						<p class="accidentTitle">Accident</p>
  					</div>
				</div>
   			</div>
   			
   			
<!-- ====================================== 메인 ======================================= -->   			
   			
   			
   			<div class="parent">
   			
   				<!-- 운전자 이름 -->
 				<div class="div3">
   					<div class="div4">
   					
   						<!-- 운전자 이름 -->
   						<span class="driverName">${sessionScope.loginDriver.driverName }운전자</span><span 
   						class="maindriverjsp-span">님</span>
   					</div>
 				</div>
     				
     				
 				<div class="frame-parent">
 					
 					<!-- 프로필 전체 컨테이너 -->
   					<div class="frame-group">
   					
   						<!-- 프로필 title -->
 						<div class="frame-container">
 							<!-- 북마크 아이콘 -->
   							<img class="frame-child" src="/image/bookMarkGreen.svg">
   							
   							<div class="frame-wrapper">
 								<div class="wrapper">
   									<div class="div5">프로필</div>
 								</div>
   							</div>
 						</div>
 						
 						<!-- 프로필 -->
 						<div class="div6">
 							
 							<!-- 운행 유무 표시 -->
							<!-- 운행 시 '운행'으로 표시 -->
							<!-- 미운행 시 '미운행'으로 표시 -->
 							<div class="radio-button-unchecked-parent">
   								<img class="radio-button-unchecked-icon" src="/image/radioButtonUnchecked.svg">								
   								<div class="driveOn">운행</div>
   							</div>
 							
 							<!-- 운전자 사진 / 이름 / 고유 ID -->				
   							<div class="avatar-parent">
   								
   								<!-- 운전자 증명사진 -->
   								<div class="driverImgDiv">
   								
   									<!-- image 삽입 공간 : DB에서 이미지 url 가져오기! -->
 									<img class="driverImg" src="${sessionScope.loginDriver.driverImg}">
 								</div>
 								
 								<div class="s090">
 								
 									<!-- 운전자 이름 : DB에서 driverName값 가져오기! -->
   									<p class="driverName">${sessionScope.loginDriver.driverName}</p>
   									
   									<!-- 운전자 고유 ID : DB에서 driverIdx값 가져오기! -->
   									<p class="driverIdx">(${sessionScope.loginDriver.driverCode})</p>
 								</div>
   							</div>					
   							
   							<!-- 세부 정보 -->
   							<div class="container">
 								<div class="div8">
   									<div class="title-parent">
   									
   										<!-- 카테고리 -->
 										<div class="title">
   											<b class="b">
   												<p class="accident">연락처</p>
   												<p class="accident">생년 월일</p>
   												<p class="accident">근무 지역</p>
   												<p class="accident">관리자</p>
   												<p class="accident">차량 번호 </p>
   												<p class="accident">등록 일자 </p>
   												<p class="accident">총 위험 행위 건수</p>
   											</b>
 										</div>
 										
 										<!-- 실제 운전자 정보 -->
 										<div class="frame">
   											<b class="maindriverjsp-b">
 												<span class="txt">
 												
 													<!-- 운전자 연락처 : DB에서 driverContact값 가져오기! -->
   													<p class="driverContact">${loginDriver.driverContact}</p>
   													
   													<!-- 운전자 생년월일 : DB에서 driverBirthdate값 가져오기! -->
   													<p class="driverBirthdate">
   													${loginDriver.fmtDriverBirthdate}</p>
   													
   													<!-- 운전자 근무 지역 : DB에서 driverRegion값 가져오기! -->
   													<p class="driverRegion">순천시 조례동</p>
   													
   													<!-- 담당 관리자 이름 : DB에서 adminName값 가져오기! -->
   													<p class="adminName">${loginDriver.adminName}</p>
   													
   													<!-- 운전자 차량번호 : DB에서 carNumber값 가져오기! -->
   													<p class="carNumber">${loginDriver.carNumber}</p>
   													
   													<!-- 등록 일자 : DB에서 createdAt값 가져오기! -->
   													<p class="createdAt">${loginDriver.fmtCreatedAt}</p>
   													
   													<!-- 총 위험 행위 건수 : DB에서 조회하기! -->
   													<p class="countLog">${totalCount}건</p>
   													
   													
 												</span>
   											</b>
 										</div>
   									</div>
 								</div>
   							</div>
 						</div>
   					</div> <!-- 프로필 전체 컨테이너 끝 -->
   					
   					
   					
   					<!-- 최근 위험 운전 기록 컨테이너 -->
   					<div class="frame-div">
   					
   						<!-- 최근 위험 운전 기록 title -->
 						<div class="frame-container">
 							<!-- 북마크 아이콘 -->
   							<img class="frame-child" src="/image/bookMarkGreen.svg">
   							<!-- title -->
   							<div class="frame-wrapper">
 								<div class="wrapper">
   									<div class="div5">최근 위험 운전 기록</div>
 								</div>
   							</div>
 						</div>
 						
 						
 						<div class="input">
   							<div class="frame-parent2">
   							
   								<!-- 더보기 -->
   								
   								<!-- 클릭 시 위험운전기록화면으로 이동됨(MainDriver2.jsp) -->
 								<button type="button" class="addBtn" onclick="location.href='/MainDriver2'">
 								
 									<!-- 더보기 아이콘 -->
   									<img class="frame-inner" src="/image/addCircleBlue.svg">
   									
   									<div class="frame-wrapper2">
 										<div class="wrapper2">
   											<b class="b2">더보기</b>
 										</div>
   									</div>
 								</button>
 								
 								<!-- 최근 위험 운전 기록 리스트 -->
	 							<div class="div10">
	 							
								<!-- foam태그 이용 post방식으로 제출 -->
								<form id="logForm" method="POST" action="/MainDriver2_1" style="display:none;">
								  <input type="hidden" name="logIdx" id="logIdxInput">
								</form>
										
 									<!-- 반복문으로 동일한 기록 출력 -->
	 								<c:forEach var="log" items="${logList}">
								
										<!-- 클릭 시 해당 기록 상세페이지로 이동 (POST 전송으로 변경) -->
										<button type="button" class="logBtn" onclick="viewLog('${log.logIdx}')">
										
	 										<div class="div11">
	 										
	 											<!-- 아이콘 -->
	   											<div class="chevron-forward-wrapper">
	   												<img class="chevron-forward-icon" src="/image/chevronBlue.svg">								
	   											</div>
	   											
	   											<div class="inner">
	   												<div class="ellipse-parent">
	   												
	   													<!-- 위험 등급 표시 아이콘 -->
														<!-- eventLevel에 따라 색상 변경되어야 함 --> 
	 													<div class="${log.eventColor }">
	 													</div>
	 													
	 													<!-- 위험 행위 종류 -->
	 													<div class="wrapper4">
	   														<div class="eventType">${log.eventType }</div>
	 													</div>
	   												</div>
	   											</div>
	   											
	   											<!-- 위험 행위 발생 일자 -->
	   											<div class="regDate">${log.createdAt }</div>
	 										</div>
	   									</button>
	 								</c:forEach><!-- 기록 1개 끝 -->
	 								
	 							</div><!-- 기록 리스트 끝 -->
 								
 								
   							</div>
 						</div>
   					</div> <!-- 최근 위험 운전 기록 컨테이너 끝 -->
   					
   					
 				</div>
   			</div>
   			
   			<!-- 저작권 -->
   			<div class="copyright-2025">Copyright ⓒ 2025 Zo-A Co. All rights reserved.</div>
 			</div>
    		
  	</div> <!-- 전체 컨테이너 -->
  		
<!-- 우빈 : logIdx가지고 로그 상세 조회 -->
<script>
function viewLog(logIdx) {
  document.getElementById("logIdxInput").value = logIdx; // 값 주입
  document.getElementById("logForm").submit();           // POST 전송
}
</script>

</body>
</html>