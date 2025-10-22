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
    	<form method="post" action="#">
	    	<button type="submit" class="logOut">로그아웃</b>
    	</form>	
    		
    			
 		<div class="maindriverjsp-div">
 		
 			<!-- Zer0-Accident 텍스트 로고 -->
   			<div class="div2">
				<div class="zer0-accident">
  					<div class="maindriverjsp-zer0-accident">
  						<p class="zer0-">         Zer0-</p>
  						<p class="accident">Accident</p>
  					</div>
				</div>
   			</div>
   			
   			
   			<div class="copyright-2025">Copyright ⓒ 2025 Zo-A Co. All rights reserved.</div>
   			<div class="parent">
     				<div class="div3">
       					<div class="div4">
         						<span class="span">강우빈 운전자</span>
         						<span class="maindriverjsp-span">님</span>
       					</div>
     				</div>
     				<div class="frame-parent">
       					<div class="frame-group">
         						<div class="frame-container">
           							<img class="frame-child" alt="">
           							
           							<div class="frame-wrapper">
             								<div class="wrapper">
               									<div class="div5">프로필</div>
             								</div>
           							</div>
         						</div>
         						<div class="div6">
           							<div class="avatar-parent">
             								<img class="avatar-icon" alt="">
             								
             								<div class="s090">
               									<p class="accident">강우빈</p>
               									<p class="maindriverjsp-s090">(s090)</p>
             								</div>
           							</div>
           							<div class="radio-button-unchecked-parent">
             								<img class="radio-button-unchecked-icon" alt="">
             								
             								<div class="s090">운행</div>
           							</div>
           							<div class="container">
             								<div class="div8">
               									<div class="title-parent">
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
                 										<div class="frame">
                   											<b class="maindriverjsp-b">
                     												<span class="txt">
                       													<p class="accident">010-9452-3190</p>
                       													<p class="accident">1985-06-30</p>
                       													<p class="accident">전남 순천</p>
                       													<p class="accident">강우희</p>
                       													<p class="accident">23아 4708 2023-11-30</p>
                       													<p class="accident">2건</p>
                     												</span>
                   											</b>
                 										</div>
               									</div>
             								</div>
           							</div>
         						</div>
       					</div>
       					<div class="frame-div">
         						<div class="frame-container">
           							<img class="frame-child" alt="">
           							
           							<div class="frame-wrapper">
             								<div class="wrapper">
               									<div class="div5">최근 위험 운전 기록</div>
             								</div>
           							</div>
         						</div>
         						<div class="input">
           							<div class="frame-parent2">
             								<div class="frame-parent3">
               									<img class="frame-inner" alt="">
               									
               									<div class="frame-wrapper2">
                 										<div class="wrapper2">
                   											<b class="b2">더보기</b>
                 										</div>
               									</div>
             								</div>
             								<div class="div10">
               									<div class="wrapper3">
                 										<div class="div11">
                   											<div class="chevron-forward-wrapper">
                     												<img class="chevron-forward-icon" alt="">
                     												
                   											</div>
                   											<div class="inner">
                     												<div class="ellipse-parent">
                       													<div class="ellipse-div">
                       													</div>
                       													<div class="wrapper4">
                         														<div class="div4">운전대 미제어</div>
                       													</div>
                     												</div>
                   											</div>
                   											<div class="div13">2025-10-19</div>
                 										</div>
               									</div>
             								</div>
           							</div>
         						</div>
       					</div>
     				</div>
   			</div>
 		</div>
    		
  	</div> <!-- 전체 컨테이너 -->
  		
	
</body>
</html>