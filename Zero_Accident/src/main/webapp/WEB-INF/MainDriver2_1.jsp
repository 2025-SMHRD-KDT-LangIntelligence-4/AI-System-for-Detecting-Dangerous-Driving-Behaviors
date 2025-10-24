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
    <!-- MainDriver2_1.css 파일의 스타일을 적용하겠다. -->
	<link rel="stylesheet"  href="/css/MainDriver2_1.css" />
</head>
<body>
	
	<!-- 전체 컨테이너 -->
  	<div class="mainpagedriver2-1jsp">
  	
  		<!-- 상단 바 -->
		<!-- DriverHeader.jsp 파일에서 작업하기 -->
		<%@ include file="/WEB-INF/DriverHeader.jsp" %>
		
    	<div class="registerdriverjsp-div">
    			<!-- 뒤로 가기 아이콘 -->
    			<!-- 위험 운전 이력 페이지로 이동 -->
      			<a class="chevron-left" href="/MainDriver2" aria-label="뒤로가기">
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
    			
 		<div class="div2">
 		
 			<!-- Zer0-Accident 텍스트 로고 -->	
   			<div class="div3">
 				<div class="zer0-accident">
   					<div class="mainpagedriver2-1jsp-zer0-accident">
   						<p class="zer0-">         Zer0-</p>
   						<p class="accident">Accident</p>
   					</div>
 				</div>
   			</div>
   			
   			
<!-- ================================== 메인 =================================== -->   			
   			
   			<c:forEach var="v" items="${videoList}">	
   			<div class="parent">
   			
   					<!-- 타이틀 -->
     				<div class="div4">
       					<div class="div5">상세 페이지</div>
     				</div>
     				
     				
     				<div class="group">
     				
       					<div class="div6">
       					
       						<!-- 상태바 -->
    						<div class="div7">
    						
    							<!-- 위험 등급 표시 아이콘(하) -->
								<!-- eventLevel에 따라 색상 변경되어야 함 -->
      							<div class="${v.eventColor}">
      							</div>
      							
      							
      							<div class="logNum-parent">
      								
      								<!-- 로그 ID : DB에서 logIdx값 가져오기 -->
       								<div class="logNum">${v.logCode}</div>
       								
       								<!-- 구분선 -->
       								<div class="frame-child">
       								</div>
       								
       								<!-- 위험 행위 종류 : DB에서 eventType값 가져오기! -->
       								<div class="eventType">${v.eventType}</div>
      							</div>
    						</div>
    						
    						<!-- 블랙박스 영상 클립 -->
    						<div class="div9">
    							<!-- 영상 삽입 후 삭제-->
      							<div class="l00000209">
	      						<c:choose>
		      						<c:when test="${not empty v.eventVideo}">
		                              <video
		                                  src="${cpath}${v.eventVideo}"
		                                  class="blackbox-video"
		                                  style="width:100%; height:100%; object-fit:cover; border-radius:8px;"
		                                  controls
		                                  muted
		                                  autoplay
		                                  loop
		                                  playsinline
		                                  preload="metadata"
		                              >
		                                  브라우저가 video 태그를 지원하지 않습니다.
		                              </video>
		                          </c:when>
		                          <c:otherwise>
		                              <div class="search-here">동영상 준비 중</div>
		                          </c:otherwise>
		                      </c:choose>
      							</div>
    						</div>
       					</div>
       					
       					
       					<div class="div11">
     						<div class="title-parent">
     						
     							<!-- 카테고리 -->
       							<div class="title">
     								<b class="b">
       									<p class="accident">파일명</p>
       									<p class="accident">발생 일시</p>
       									<p class="accident">위험 행위 종류</p>
       									<p class="accident">발생 위치</p>
       									<p class="accident">관리자</p>
     								</b>
       							</div>
       							
       							
       							<div class="logInfo">
     								<div class="logInfo_1">
     									
     									<!-- 파일명 : logIdx.jpg -->
       									<p class="logIdx">${v.logCode}.jpg</p>
       									
       									<!-- 발생 일시 -->
       									<p class="regDate">${v.createdAt}</p>
       									
       									<!-- 위험 행위 종류 : DB에서 eventType값 가져오기! -->
       									<p class="eventType_1">${v.eventType}</p>
       									
       									<!-- 발생 위치 -->
       									<p class="displayAddr">전라남도 순천시 서면 선평리 1045</p>
       									
       									<!-- 담당 관리자 : DB에서 adminName값 가져오기! -->
       									<p class="adminIdx">${adminName}</p>
     								</div>
       							</div> 							
     						</div>
       					</div>
     				</div>
   			</div>
   			</c:forEach>
   			
   			<!-- 파일 다운로드 버튼 -->
   			<!-- 버튼 클릭 시 파일 다운로드 -->
   			<button type="button" class="downloadButton">
 				<div class="div5">파일 다운로드</div>
 				<!-- 다운로드 아이콘 -->
 				<div class="download">
   					<img class="icon" src="/image/Download.svg">  					
 				</div>
   			</button>
   			
   			<!-- 저작권 -->
   			<div class="copyright-2025">Copyright ⓒ 2025 Zo-A Co. All rights reserved.</div>
   			
 		</div>		
  	</div> <!-- 전체 컨테이너 끝-->


</body>
</html>