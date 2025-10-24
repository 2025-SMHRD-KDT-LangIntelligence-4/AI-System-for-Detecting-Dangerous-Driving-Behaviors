<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 웹 폰트 url(나눔 스퀘어 네오) -->
<link
	href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square-neo.css"
	rel="stylesheet">
<!-- ButtonAdmin3.css 파일의 스타일을 적용하겠다. -->
<link rel="stylesheet" href="/css/ButtonAdmin3.css" />
<!-- Sidebar.css 파일의 스타일을 적용하겠다. -->
<link rel="stylesheet" href="/css/Sidebar.css" />
<!-- Datetime.css 파일의 스타일을 적용하겠다. -->
<link rel="stylesheet" href="/css/Datetime.css" />
</head>
<body>
	<!-- 전체 컨테이너 -->
	<div class="buttonadmin3jsp">
		<!-- 사이드 바 -->
		<!-- Sidebar.jsp 파일에서 작업하기! -->
		<%@ include file="/WEB-INF/Sidebar.jsp"%>
		<!--===================================== 메인 ======================================== -->
		<div class="div">
			<div class="buttonadmin3jsp-div"></div>
			<div class="div2"></div>
			<!-- 상단 관리자 프로필 -->
			<!-- 클릭 시 ButtonAdmin5.jsp로 이동(관리자 정보 페이지) -->
			<button type="button" class="div3"
				onclick="location.href='/ButtonAdmin5'">
				<!-- 프로필 이모티콘 -->
				<img class="icon" src="/image/accountCircle.svg">
				<!-- 관리자 이름 : DB에서 adminName값 가져오기! -->
				<b class="b">${sessionScope.loginAdmin.adminName} 관리자</b>
			</button>
			<!-- Zer0-Accident 텍스트 로고 -->
			<div class="div4">
				<b class="b2">대중교통 안전 관제 시스템</b>
				<div class="zer0-accident">
					<div class="buttonadmin3jsp-zer0-accident">Zer0-Accident</div>
				</div>
			</div>
			<!--===================================== 검색 ======================================== -->
			<div class="div50">
				<!-- 검색어 입력란 -->
				<input type="text" class="div51" name="searchTxt">
				<!-- 돋보기 아이콘 -->
				<img class="item" src="/image/search.svg">
			</div>
			<!--===================================== 검색필터 ====================================== -->
			<div class="div37">
				<div class="div38">
					<div class="wrapper5">
						<div class="div39">검색필터</div>
					</div>
					<!-- 구분선 -->
					<div class="div40"></div>
				</div>
				<div class="frame-container">
					<!-- 날짜 필터 -->
					<div class="parent7">
						<div class="div41">날짜</div>
						<div class="div42">
							<!-- 날짜 선택 결과 나타남 -->
							<div class="pm-wrapper">
								<input type="date" id="datePicker" class="date-input"
									name="dateInput">
							</div>
							<!-- 달력 아이콘 : 클릭 시 날짜 선택 가능한 달력 나타남 -->
							<button type="button" class="calendar" id="calendarBtn">
								<img class="buttonadmin3jsp-icon" src="/image/Calendar.svg">
							</button>
						</div>
					</div>
					<!-- 위험 행위 종류 필터 -->
					<div class="div44">
						<div class="div45">위험 행위 종류</div>
						<!-- 졸음 운전 -->
						<div class="check-box-outline-blank-parent iconChange">
							<!-- 체크 박스 -->
							<!-- 클릭 시 아이콘 변경됨 -->
							<img class="check-box-outline-blank-icon checkBox"
								src="/image/checkBox.svg"> <b class="b10">졸음 운전</b>
						</div>
						<!-- 휴대폰 조작 -->
						<div class="check-box-outline-blank-group iconChange">
							<!-- 체크 박스 -->
							<!-- 클릭 시 아이콘 변경됨 -->
							<img class="check-box-outline-blank-icon checkBox"
								src="/image/checkBox.svg"> <b class="b10">휴대폰 조작</b>
						</div>
						<!-- 운전대 미제어 -->
						<div class="check-box-outline-blank-container iconChange">
							<!-- 체크 박스 -->
							<!-- 클릭 시 아이콘 변경됨 -->
							<img class="check-box-outline-blank-icon checkBox"
								src="/image/checkBox.svg"> <b class="b10">운전대 미제어</b>
						</div>
						<!-- 운전자 폭행 -->
						<div
							class="buttonadmin3jsp-check-box-outline-blank-parent iconChange">
							<!-- 체크 박스 -->
							<!-- 클릭 시 아이콘 변경됨 -->
							<img class="check-box-outline-blank-icon checkBox"
								src="/image/checkBox.svg"> <b class="b10">운전자 폭행</b>
						</div>
					</div>
					<!-- 위험 등급 필터 -->
					<div class="div46">
						<div class="div47">위험 등급</div>
						<div class="buttonadmin3jsp-frame-parent">
							<!-- 위험 등급 : 상 -->
							<div class="frame-parent2 iconChange">
								<!-- 체크 박스 -->
								<!-- 클릭 시 아이콘 변경됨 -->
								<img class="frame-item checkBox" src="/image/checkBox.svg">
								<div class="wrapper7">
									<b class="b14">상</b>
								</div>
								<!-- 위험 등급 상 아이콘 -->
								<img class="frame-item" src="/image/RedCircle.svg">
							</div>
							<!-- 위험 등급 : 중 -->
							<div class="frame-parent2 iconChange">
								<!-- 체크 박스 -->
								<!-- 클릭 시 아이콘 변경됨 -->
								<img class="frame-item checkBox" src="/image/checkBox.svg">
								<div class="wrapper7">
									<b class="b14">중</b>
								</div>
								<!-- 위험 등급 중 아이콘 -->
								<img class="frame-item" src="/image/YellowCircle.svg">
							</div>
							<!-- 위험 등급 : 하 -->
							<div class="frame-parent2 iconChange">
								<!-- 체크 박스 -->
								<!-- 클릭 시 아이콘 변경됨 -->
								<img class="frame-item checkBox" src="/image/checkBox.svg">
								<div class="wrapper7">
									<b class="b14">하</b>
								</div>
								<!-- 위험 등급 하 아이콘 -->
								<div class="ellipse-div"></div>
							</div>
						</div>
					</div>
					<!-- 조치 상태 필터 -->
					<div class="parent8">
						<div class="pm-wrapper">
							<div class="div41">조치 상태</div>
						</div>
						<div class="frame-parent5">
							<!-- 조치 완료 -->
							<div class="frame-parent2 iconChange">
								<!-- 체크 박스 -->
								<!-- 클릭 시 아이콘 변경됨 -->
								<img class="frame-item checkBox" src="/image/checkBox.svg">
								<div class="wrapper10">
									<b class="b14">조치 완료</b>
								</div>
							</div>
							<!-- 조치 중 -->
							<div class="frame-parent2 iconChange">
								<!-- 체크 박스 -->
								<!-- 클릭 시 아이콘 변경됨 -->
								<img class="frame-item checkBox" src="/image/checkBox.svg">
								<div class="wrapper10">
									<b class="b14">조치 중</b>
								</div>
							</div>
							<!-- 미조치 -->
							<div class="frame-parent2 iconChange">
								<!-- 체크 박스 -->
								<!-- 클릭 시 아이콘 변경됨 -->
								<img class="frame-item checkBox" src="/image/checkBox.svg">
								<div class="wrapper10">
									<b class="b14">미조치</b>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--=================================== 날짜 및 시간 ==================================== -->
			<!-- Datetime.jsp 파일에서 작업하기! -->
			<%@ include file="/WEB-INF/Datetime.jsp"%>
			<!--==================================== 로그 리스트 ===================================== -->
			<!-- LOG 타이틀 -->
			<div class="log">LOG</div>
			<!-- 헤더 -->
			<div class="div5">
				<div class="child"></div>
				<div class="div6"></div>
				<div class="wrapper">
					<div class="div7">순번</div>
				</div>
				<div class="container">
					<div class="b">발생일시</div>
				</div>
				<div class="frame">
					<div class="b">차량번호</div>
				</div>
				<div class="frame-div">
					<div class="div10">운전자</div>
				</div>
				<div class="buttonadmin3jsp-wrapper">
					<div class="b">위험 행위 종류</div>
				</div>
				<div class="wrapper2">
					<div class="b">위험 등급</div>
				</div>
				<div class="wrapper3">
					<div class="b">	상태</div>
				</div>
				<!-- ============== 로그 리스트 ================ -->
				<div class="div5999">
				    <c:forEach var="log" items="${logList}" varStatus="status">
				        <div class="div60" data-logidx="${log.logIdx}">

				            <div class="frame-parent9">
				            
				                <!-- 순번 -->
				                <div class="pm-wrapper">
				                    <div class="b">${log.logIdx}</div>
				                </div>
				
				                <!-- 발생일시 -->
				                <div class="pm-wrapper">
				                    <div class="b">
				                        <p class="p">${fn:substring(log.createdAt, 0, 10)}</p>
				                        <p class="p">${fn:substring(log.createdAt, 11, 19)}</p>
				                    </div>
				                </div>
				
				                <!-- 차량번호 -->
				                <div class="wrapper15">
				                    <div class="b">${log.carNumber}</div>
				                </div>
				
				                <!-- 운전자 (조인된 tb_driver에서) -->
				                <div class="pm-wrapper">
				                    <div class="b">${log.driverName}</div>
				                </div>
				
				                <!-- 위험 행위 종류 -->
				                <div class="pm-wrapper">
								  <div class="b">
								    <c:choose>
								      <c:when test="${log.eventType == 'ASSAULT'}">운전자 폭행</c:when>
								      <c:when test="${log.eventType == 'DROWSY'}">졸음 운전</c:when>
								      <c:when test="${log.eventType == 'HAND'}">운전대 미제어</c:when>
								      <c:when test="${log.eventType == 'PHONE'}">휴대폰 조작</c:when>
								      <c:otherwise>-</c:otherwise>
								    </c:choose>
								  </div>
								</div>
				
				                <!-- 위험 등급 -->
				                <div class="pm-wrapper">
								    <div class="b">
								        <c:choose>
								            <c:when test="${log.eventLevel == 1}">
								                <img src="/image/BlueCircle.svg" alt="하" width="24" height="24">
								            </c:when>
								            <c:when test="${log.eventLevel == 2}">
								                <img src="/image/YellowCircle.svg" alt="중" width="24" height="24">
								            </c:when>
								            <c:when test="${log.eventLevel == 3}">
								                <img src="/image/RedCircle.svg" alt="상" width="24" height="24">
								            </c:when>
								            <c:otherwise>
								                <span>-</span>
								            </c:otherwise>
								        </c:choose>
								    </div>
								</div>

				                
				                <!-- 상태 (고정 텍스트) -->
				                <div class="pm-wrapper">
				                    <div class="b">
				                        <p class="p">경고 발송</p>
				                        <p class="p">1회(조치중)</p>
				                    </div>
				                </div>
				            </div>
				        </div>
				    </c:forEach>
				</div>

			</div>
			<!--==================================== 개별 상세 로그 ==================================== -->
			<!-- 로그 리스트에서 특정 로그 클릭 시 해당 로그의 세부 정보를 DB에서 가져온다. -->
			<div class="div14">
				<!-- 블랙박스 영상 클립 -->
				<div class="div15">
					<!-- 영상 삽입 후 삭제-->
					<div class="b">블랙박스 영상</div>
				</div>
				<!-- 상세 로그 카테고리 -->
				<div class="log-title">
					<div class="id-parent">
						<b class="id">로그 ID</b>
  						<b class="id">발생 일시</b>
  						<b class="id">차량 번호</b>
  						<b class="id">운전자(운전자 ID)</b>
  						<b class="id">위험 행위 종류</b>
  						<b class="id">위험 등급</b>
				</div>
			</div>
		<!-- 실제 로그 정보 -->
 				<div class="log-contents">
 				
 					<!-- 로그 ID -->	
   					<div class="l00000212-parent">
   						
   						<!-- DB에서 logIdx값 가져오기! -->
   						<div class="l00000212">-</div>
   						
   						<!-- 구분선 -->
   						<div class="div17">
   						</div>
   					</div>
   					
   					<!-- 발생 일시 -->	
   					<div class="l00000212-parent">
   					
 						<!-- DB에서 createdAt값 가져오기! -->
   						<div class="l00000212">-</div>
   						
   						<!-- 구분선 -->
   						<div class="div17">
   						</div>
   					</div>
   					
   					<!-- 차량 번호 -->	
   					<div class="l00000212-parent">
   					
   						<!-- DB에서 carNumber값 가져오기! -->
   						<div class="l00000212">-</div>
   						
   						<!-- 구분선 -->
   						<div class="div17">
   						</div>
   					</div>
   					
   					<!-- 운전자 이름 + 운전자 ID -->	
   					<div class="l00000212-parent">
   					
   						<!-- DB에서 driverName, driverIdx값 가져오기! -->
   						<div class="l00000212">-</div>
   						
   						<!-- 구분선 -->
   						<div class="div17">
   						</div>
   					</div>
   					
   					<!-- 위험 행위 종류-->	
   					<div class="l00000212-parent">
   					
   						<!-- DB에서 eventType-->
   						<div class="l00000212">-</div>
   						
   						<!-- 구분선 -->
   						<div class="div17">
   						</div>
   					</div>
   					
   					<!-- 위험 등급 표시 아이콘 -->
<div id="detail-event-level">
  <span id="level-placeholder">-</span> <!-- 기본 상태 -->
  <img src="" alt="위험등급" width="20" height="20" style="display:none;">
</div>

					   					
   					<!-- 구분선 -->
   					<div class="wrapper4">
   						<div class="div17">
   						</div>
   					</div>
   					</div>
 				</div>
   			</div>  			  			
 		</div>
			<!-- 저작권 -->
			<div class="copyright">
   			<div class="b">Copyright ⓒ 2025 Zo-A Co. All rights reserved.</div>
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
	
	<!-- 날짜 필터의 달력 아이콘 클릭 시 달력 열기 -->
	<script>
		const calendarBtn = document.getElementById('calendarBtn');
		const datePicker = document.getElementById('datePicker');
	
		calendarBtn.addEventListener('click', () => {
		  datePicker.showPicker(); // ✅ 브라우저 기본 달력 열기
		});
	</script>
	
	<!-- 검색 필터 네모 박스 클릭 시 체크 박스로 변경 -->
	<script>
			document.querySelectorAll('.iconChange').forEach(item => {
			  	item.addEventListener('click', () => {
			    const img = item.querySelector('.checkBox');
			    const checked = img.classList.toggle('checked');
			    img.src = checked ? '/image/checkBoxR.svg' : '/image/checkBox.svg';
			  });
			});
	</script>
	<script>
		// ⭐ 순번 오름차순 정렬 기능
		document.addEventListener("DOMContentLoaded", function() {
		    const logContainer = document.querySelector(".div5999");
		    if (!logContainer) return;
		
		    const logItems = Array.from(logContainer.querySelectorAll(".div60"));
		
		    // logIdx 기준 오름차순 정렬
		    logItems.sort((a, b) => {
		        const idxA = parseInt(a.dataset.logidx);
		        const idxB = parseInt(b.dataset.logidx);
		        return idxA - idxB;
		    });
		
		    // 정렬된 순서대로 다시 추가
		    logItems.forEach(item => logContainer.appendChild(item));
		});
	</script>
	<script>
		document.addEventListener("DOMContentLoaded", function() {
		  // 이벤트 위임: 리스트 컨테이너에 한 번만 리스너 등록
		  var list = document.querySelector(".div5999");
		  if (!list) return;
		
		  list.addEventListener("click", function (e) {
		    // 클릭된 요소에서 가장 가까운 .div60 찾기
		    var row = e.target.closest(".div60");
		    if (!row || !list.contains(row)) return;
		
		    // data-logidx / data-log-idx 모두 대응
		    var raw = row.dataset.logidx != null ? row.dataset.logidx : row.dataset.logIdx;
		    var logIdx = String(raw == null ? "" : raw).trim();  // ✅ 숫자일 수도 있으니 문자열로 변환 후 trim
		
		    console.log("클릭된 logIdx:", logIdx);
		    if (!logIdx) {
		      console.warn("⚠️ logIdx가 비어 있음 (data-logidx 확인)");
		      return;
		    }
		
		    // 하이라이트 처리
		    document.querySelectorAll(".div60.active").forEach(function(r){ r.classList.remove("active"); });
		    row.classList.add("active");
		
		    // 서버 요청
		    fetch("/getLogDetail?logIdx=" + encodeURIComponent(logIdx))
		      .then(function(res){
		        if (!res.ok) throw new Error("HTTP " + res.status);
		        return res.json();
		      })
		      .then(function(data){
		        console.log("받은 데이터:", data);
		
		        // ===== 상세정보 채우기 =====
		        var detailValues = document.querySelectorAll(".log-contents .l00000212");
		        if (detailValues.length >= 5) {
		          // eventType 영→한
		          var eventTypeMap = {
		            ASSAULT: "운전자 폭행",
		            DROWSY:  "졸음 운전",
		            HAND:    "운전대 미제어",
		            PHONE:   "휴대폰 조작"
		          };
		          var eventTypeKor = eventTypeMap[data.eventType] || data.eventType || "-";
		
		          // 로그ID L00000001
		          var logIdFormatted = "-";
		          if (data.logIdx !== undefined && data.logIdx !== null) {
		            logIdFormatted = "L" + String(data.logIdx).padStart(8, "0");
		          }
		
		          // 운전자ID S001
		          var driverIdFormatted = "";
		          if (data.driverIdx !== undefined && data.driverIdx !== null) {
		            driverIdFormatted = "S" + String(data.driverIdx).padStart(3, "0");
		          }
		
		          detailValues[0].textContent = logIdFormatted;                 // 로그 ID
		          detailValues[1].textContent = data.createdAt || "-";          // 발생 일시
		          detailValues[2].textContent = data.carNumber || "-";          // 차량 번호
		          detailValues[3].textContent =
		            (data.driverName || "-") + (driverIdFormatted ? "(" + driverIdFormatted + ")" : "");
		          detailValues[4].textContent = eventTypeKor;                    // 위험 행위 종류
		        }
		        
		     // 우빈 : ===== 블랙박스 영상 표시 =====
		        const videoContainer = document.querySelector(".div15");
		        if (videoContainer) {
		          // 기존 내용 제거 후 제목 유지
		          videoContainer.innerHTML = "";

		          if (data.eventVideo) {
		            const video = document.createElement("video");
		            video.src = data.eventVideo.startsWith("/") 
		                        ? data.eventVideo 
		                        : ("/" + data.eventVideo);
		            video.controls = true;
		            video.autoplay = true;
		            video.loop = true;
		            video.muted = true;
		            video.style.width = "100%";
		            video.style.borderRadius = "10px";
		            videoContainer.appendChild(video);
		          } else {
		            const msg = document.createElement("div");
		            msg.textContent = "동영상이 없습니다.";
		            msg.style.color = "#aaa";
		            msg.style.marginTop = "10px";
		            videoContainer.appendChild(msg);
		          }
		        }

		        // ===== 위험등급 원 (이미지 src만 교체, 클릭 전엔 '-' 표시) =====
		        var levelContainer = document.getElementById("detail-event-level");
		        if (!levelContainer) return;
		
		        var levelImg = levelContainer.querySelector("img");
		        var levelPlaceholder = levelContainer.querySelector("#level-placeholder");
		
		        if (levelImg && levelPlaceholder) {
		          var level = Number(data.eventLevel);
		          let src = "";
		
		          if (level === 1) src = "/image/BlueCircle.svg";
		          else if (level === 2) src = "/image/YellowCircle.svg";
		          else if (level === 3) src = "/image/RedCircle.svg";
		
		          if (src) {
		            // 정상 등급 이미지 표시
		            levelImg.src = src;
		            levelImg.style.display = "inline";
		            levelPlaceholder.style.display = "none";
		          } else {
		            // 등급 없음 → "-"
		            levelImg.style.display = "none";
		            levelPlaceholder.style.display = "inline";
		          }
		        }
		      })
		      .catch(function(err){
		        console.error("상세조회 오류:", err);
		      });
		  });
		});
	</script>
</body>
</html>