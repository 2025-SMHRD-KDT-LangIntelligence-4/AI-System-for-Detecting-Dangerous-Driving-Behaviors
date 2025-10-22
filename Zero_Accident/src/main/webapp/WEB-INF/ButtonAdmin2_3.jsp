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

    <!-- ButtonAdmin2_2.css 파일의 스타일을 적용하겠다. -->
	<link rel="stylesheet"  href="/css/ButtonAdmin2_3.css" />
	
	
</head>
<body>


<!-- =================================== 운전자 등록 페이지 ==================================== -->
  	
  	
  	
  	<!-- 전체 프레임 -->
	<div class="driver-waiting-container">
	
		  <!-- 등록 대기자 수 / 일괄등록 버튼 -->
		  <div class="driver-waiting-header">
		  		
		  		<!-- 등록 대기자 수 -->
			    <div class="driver-waiting-stats">
			      <div class="driver-waiting-stats-inner">
			        <span class="driver-waiting-text">
			          <span>Total </span>
			          
			          <!-- span 태그 줄바꿈 시 글자 간 간격 생김. 붙여 둘 것. -->
			          <!-- 전체 운전자 수 : DB에서 가져오기! -->
			          <span class="driver-count">${driverCount}</span><span 
			          class="driver-unit">명</span>
			        </span>
			      </div>
			    </div>
		   		
		   		<!-- 구분선 -->
		    	<div class="driver-waiting-line"></div>
				
				<!-- 우빈 : 선택 등록 버튼 -->
				<div class="actionBtnWrap">
				
				  <!-- 기존 버튼 (그대로) -->
				  <button type="button" class="registerAllBtn">
				    <img class="add-circle-icon" src="/image/addCircle2.svg" />
				    <div class="driver-bulk-text">메시지 보내기</div>
				  </button>
				
				  <!-- ★추가: 새 버튼들 (원하는 개수만큼 복사) -->
				  <button type="button" class="registerAllBtn registerAllBtn--danger">
				    <img class="add-circle-icon" src="/image/addCircle2.svg" />
				    <div class="driver-bulk-text">전화 연결</div>
				  </button>
				
				<!--
				  <button type="button" class="registerAllBtn registerAllBtn--accent">
				    <img class="add-circle-icon" src="/image/addCircle2.svg" />
				    <div class="driver-bulk-text">운전자 정보 수정</div>
				  </button>
				 -->
				 
				</div>
			    
		  </div>
	  
	  
	
	  <!-- 운전자 등록 대기 리스트  -->
	  <div class="driver-waiting-table-area">
	  		
	  		
			<div class="header">
		   	<!-- 카테고리 --> 
		    <div class="driver-waiting-header-row">
			      <div class="driver-header-select">
			        <b>선택</b>
			      </div>
			      <div class="driver-header-columns">
			        <b class="col-id">사번</b>
			        <b class="col-name">이름</b>
			        <b class="col-gender">성별</b>
			        <b class="col-phone">연락처</b>
			        <b class="col-birth">생년월일</b>
			        <b class="col-date">신청 일자</b>
			      </div>
		    </div>
		    
		    <!-- 구분선 -->
		    <div class="driver-waiting-table-line"></div>
		    </div>
	
		    <!-- 리스트 전체 프레임 -->
		    <div class="driver-register-list">
		    
			      <!-- 반복문으로 운전자리스트 전체 출력 -->
			      <c:forEach var="d" items="${driverList}">
			      
  					  <!-- 운전자 1명 --> 
				      <div class="driver-card">
				      
				       		<!-- 등록 대기자 정보 -->
					        <div class="driver-card-inner">
					        
					        	  <!-- 체크 박스 -->
					        	  <!-- input 태그 추가 : value 값으로 선택된 운전자를 식별하기 위함. -->
					        	  <!-- name="driverIdx" : 질문(Question) -->
					        	  <!-- value="${driver.driverIdx}" : 답(Answer) -->
								  <label class="custom-checkbox">
								  
									    <input 
										    type="checkbox" 
										    class="driver-checkbox"
									    >
								    
									    <!-- 기존 디자인 유지, input 태그의 체크박스는 숨김 처리(css) -->
									    <img src="/image/checkBoxRed.svg" alt="check" class="checkbox-img">
								  </label>
						          
						          
						          <div class="driver-info-group">
						          
						          		<!-- 운전자 고유 ID : driverIdx -->
							            <div class="driver-id">${d.driverCode }</div>
							            
							            <!-- 운전자 이름 : driverName -->
							            <div class="driver-name">${d.driverName}</div>
							            
							            <!-- 운전자 성별 : driverGender -->
							            <div class="driver-gender">${d.driverGender }</div>
							            
							            <!-- 운전자 연락처 : driverContact -->
							            <div class="driver-phone">${d.driverContact }</div>
							            
							            <!-- 운전자 생년월일 : driverBirthdate -->
							            <div class="driver-birth">${d.fmtDriverBirthdate }</div>
							            
							            <!-- 신청 일자 : createdAt -->
							            <div class="driver-date">${d.fmtCreatedAt }</div>
						          </div>
					        </div>
				        
				        <!-- 운전자 개별 메시지 전송 버튼 -->
				        <!-- 버튼 클릭 시 해당 운전자에게 메시지 전달됨. -->
				        <!-- data-id="${driver.driverIdx} 
				        : 이 버튼이 어떤 운전자에 해당하는지 식별하기 위해 추가적으로 태그에 정보를 담아둔다.  -->
				        <button type="button" class="registerBtn" data-id="${driver.driverIdx}">
				          <b>메시지 보내기</b>
				        </button>
				        
				      </div> <!-- 운전자 1명 끝 -->
			      </c:forEach>
			      
		      
		    </div> <!-- 리스트 전체 프레임 끝 -->
	  </div> <!-- 운전자 등록 대기 리스트 끝  --> 
	</div> <!-- 전체 프레임 끝 -->

  	
  	
  	
  	



</body>
</html>