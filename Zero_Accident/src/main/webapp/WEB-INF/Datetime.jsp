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

    <!-- Datetime.css 파일의 스타일을 적용하겠다. -->
	<link rel="stylesheet"  href="/css/Datetime.css" />
	
</head>
<body>
	
<!--====================================== 날짜/시간 탭 =======================================-->
   			
   			 			
   			<div class="datetime-container">
  <div class="datetime-inner">
    <div class="datetime-frame">
      <div class="datetime-left">
        <img class="datetime-icon" src="/image/calender.svg" alt="calendar">

        <div class="datetime-info">
          <div class="datetime-date" id="dateDiv">
            <span id="monthSpan"></span>
            <span class="datetime-day" id="daySpan"></span><span>일</span>
          </div>
          <div class="datetime-weekday" id="weekdayDiv"></div>
        </div>
      </div>

      <div class="datetime-right">
        <div class="datetime-empty"></div>
        <div class="datetime-time-wrapper">
          <div class="datetime-time" id="currentTime"></div>
        </div>
      </div>
    </div>
  </div>
</div>

	
			<script>
	    function updateTime() {
	        const now = new Date();
	
	        // 시, 분 가져오기
	        let hours = now.getHours();
	        let minutes = now.getMinutes();
	        let ampm = hours >= 12 ? 'PM' : 'AM';
	
	        // 12시간제 변환
	        hours = hours % 12;
	        hours = hours ? hours : 12; // 0시 → 12시
	
	        // 두 자리 숫자로 표시
	        hours = hours < 10 ? '0' + hours : hours;
	        minutes = minutes < 10 ? '0' + minutes : minutes;
	
	        // 표시
	        document.getElementById('currentTime').textContent = hours + ':' + minutes + ampm;
	    }
	
	    // 페이지 로드 시 바로 실행
	    updateTime();
	
	    // 1초마다 갱신
	    setInterval(updateTime, 1000);
	</script>
	<script>
	    function updateDateTime() {
	        const now = new Date();
	
	        // 월, 일
	        const month = now.getMonth() + 1; // 0~11 -> +1
	        const day = now.getDate();
	
	        // 요일
	        const weekdays = ["일요일", "월요일", "화요일", "수요일", "목요일", "금요일", "토요일"];
	        const weekday = weekdays[now.getDay()];
	
	        // 화면에 반영
	        document.getElementById("monthSpan").textContent = month + "월 ";
	        document.getElementById("daySpan").textContent = day;
	        document.getElementById("weekdayDiv").textContent = weekday;
	    }
	
	    // 페이지 로드 시 바로 실행
	    updateDateTime();
	
	    // 1분마다 업데이트 (자정 넘어가면 날짜가 바뀌도록)
	    setInterval(updateDateTime, 60000);
	</script>
	
	
	
	
	
</body>
</html>