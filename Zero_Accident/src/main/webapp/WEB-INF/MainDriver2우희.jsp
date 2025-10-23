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
    <!-- MainDriver2.css 파일의 스타일을 적용하겠다. -->
	<link rel="stylesheet"  href="/css/MainDriver2.css" />
	
</head>
<body>
	

  	<!-- 전체 컨테이너 -->
  	<div class="mainpagedriver2jsp">
  		
  		<!-- 상단 바 -->
		<!-- DriverHeader.jsp 파일에서 작업하기 -->
  		<%@ include file="/WEB-INF/DriverHeader.jsp" %>
    	
    	<!-- 뒤로 가기 버튼 + 로고 -->	
    	<div class="registerdriverjsp-div">
    			<!-- 뒤로 가기 아이콘 -->
    			<!-- 메인 페이지로 이동(MainPageDriver.jsp) -->
      			<a class="chevron-left" href="/MainDriver" aria-label="뒤로가기">
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
    		
    		
    		<div class="mainpagedriver2jsp-div">
    		
    			<!-- Zer0-Accident 텍스트 로고 -->
      			<div class="div2">
    				<div class="zer0-accident">
      					<div class="mainpagedriver2jsp-zer0-accident">
      						<p class="zer0-">         Zer0-</p>
      						<p class="accident2">Accident</p>
      					</div>
    				</div>
      			</div>
      			 
      			 
<!-- ====================================== 메인 ======================================= -->   			
      			 
      			    			
      			<div class="parent">
      				<!-- 타이틀 -->
       				<div class="div4">위험 운전 이력</div>
        				<div class="frame-parent">
          					<div class="group">
          					
          						<!-- 목록 바 -->
        						<div class="div5">
        							<!-- 리스트 아이콘 -->
          							<div class="list">
          								<img class="listIcon" src="/image/List.svg">								
          							</div>
          							
          							<div class="wrapper">
           								<b class="listTitle">목록</b>
          							</div>
        						</div>
        						
        						<!-- 위험 운전 이력 수 -->
         						<div class="div6">
         						
           							<div class="container">
         								<div class="div7">
           									<span>TOTAL </span>
           									
           									<!-- 총 위험 행위 건수 -->
           									<span class="countLog">153</span><span 
           									class="mainpagedriver2jsp-span">명</span>
         								</div>
           							</div>
           							
           							<!-- 구분선 -->
           							<div class="div88">
           							</div>
         						</div>
          					</div>
          					

<!-- ================================ 위험 행위 리스트 ================================= -->   			

         					
          					<div class="frame-group">
          					
          					<!-- 10개의 동일한 위험 행위 이력 출력됨-->
          					<c:forEach var="i" begin="1" end="10">
         						<div class="frame-div">
           							<div class="div9">
           								
           								<!-- 리스트 순번 -->
           								<!-- 자동 증가 -->
         								<div class="input">
           									<div class="div10">${i}</div>
         								</div>
         								
         								<!-- 클릭 시 MainDriver2_1.jsp로 이동 -->
         								<button type="button" class="logBtn" onclick="location.href='/MainDriver2_1'"">
         									
         									<!-- 블랙박스 클립 썸네일 이미지 -->
           									<div class="eventImage">
         										<!-- 이미지 삽입 후 삭제 -->
         										<div class="b">
           											<p class="accident">영상</p>
           											<p class="accident">썸네일</p>
         										</div>
           									</div>
           									
           									<!-- 위험 행위 이력 정보 -->
           									<div class="logInfo">
           										
           										<!-- 위험 행위 발생 일자 -->
           										<div class="regDateDiv">
												<div class="regDate">2025-10-29</div>
												</div>
												
												
												<div class="line-parent">
												
													<!-- 구분선 -->
													<div class="frame-child">
													</div>
													
													<!-- 위험 행위 종류 -->
													<div class="eventType">운전대 미제어</div>
													
													<!-- 구분선 -->
													<div class="frame-child">
													</div>
													
													<!-- 위험 등급 표시 아이콘 -->
													<!-- eventLevel에 따라 색상 변경되어야 함 --> 
													<div class="circle-yellow">
													</div>
												
												</div>
           										
           									</div>
           									
         								</button>
         								
           							</div>
           							
           							
           							<div class="div14">
           							</div>
         						</div>
         					</c:forEach>
            				            		
          					</div>
          					
          					
        				</div>
      			</div>
      			
      			
    		</div>
    		
    		
    		
  	</div> <!-- 전체 컨테이너 끝 -->
  	
  	
  	

	
	
	
</body>
</html>