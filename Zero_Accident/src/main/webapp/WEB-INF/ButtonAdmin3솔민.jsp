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
<title>대중교통 안전 관제 시스템 - 로그</title>

	<link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square-neo.css" rel="stylesheet">

    <link rel="stylesheet"  href="${cpath}/css/ButtonAdmin3.css" />
	<link rel="stylesheet"  href="${cpath}/css/Sidebar.css" />
	<link rel="stylesheet"  href="${cpath}/css/Datetime.css" />
	
	<!-- 상세 정보 패널 초기 숨김 및 로그 목록 커서 설정을 위한 스타일 -->
	<style>
		/* 상세 정보 패널 (div14) 초기 상태: 숨김 */
		#logDetailPanel {
			display: none; 
		}
		/* 로그 목록 행에 클릭 가능 커서 추가 */
		.log-row-container {
			cursor: pointer;
			transition: background-color 0.1s;
		}
        /* 선택된 로그 바 시각적 피드백 */
        .log-row-container.selected-log-row {
            background-color: #3f3f46 !important; /* Tailwind gray-700과 유사한 색상 */
        }
	</style>
	
</head>
<body>
	
  	<div class="buttonadmin3jsp">
  		
  		<%@ include file="/WEB-INF/Sidebar.jsp" %>
	
		
<div class="div">
   			<div class="buttonadmin3jsp-div">
   			</div>
   			<div class="div2">
   			</div>
   			
   			<button type="button" class="div3" onclick="location.href='${cpath}/ButtonAdmin5'">
	   			<img class="icon" src="${cpath}/image/accountCircle.svg">
				
				<b class="b">${sessionScope.loginAdmin.adminName} 관리자</b>
	     	</button>
   			
   			<div class="div4">
 				<b class="b2">대중교통 안전 관제 시스템</b>
 				<div class="zer0-accident">
   					<div class="buttonadmin3jsp-zer0-accident">Zer0-Accident</div>
 				</div>
   			</div>
   			
   			
<form id="searchForm" action="${cpath}/logPage" method="get">
			    <div class="div50">
			        <input 
			            type="text" 
			            class="div51" 			   
			            name="searchQuery" 
			            placeholder="차량번호 또는 운전자 이름을 입력하세요."
			            value="${searchQuery != null ? searchQuery : ''}" 
			        >
			        <button type="submit" style="background: none; border: none; padding: 0;">
			            <img class="item" src="${cpath}/image/search.svg" alt="검색">
			        </button>
			    </div>
			
			    <div class="div37" id="filterArea">
			 		<div class="frame-container">
			 				
			 			<div class="parent7">
			                </div>
			   					
			   			<div class="div44">
			                </div>
			   					
			   			<div class="div46">
			                </div>
			   					  					
			   			<div class="parent8">
			                </div>
			 		</div>
				</div>
			</form>
   			
   			
<div class="div37">
			
 				<div class="div38"> 					
   					<div class="wrapper5">
   						<div class="div39">검색필터</div>
   					</div>
   					
   					<div class="div40">
   					</div>
 				</div>
 				
 				
 				<div class="frame-container">
 				
 					<div class="parent7">
 						<div class="div41">날짜</div>
 						
 						<div class="div42">
 						
						  <div class="pm-wrapper">
						    <input 
						      type="date" 
						      id="datePicker" 
						      class="date-input"
						      name="dateInput" 
						    >
						  </div>
						
						  <button type="button" class="calendar" id="calendarBtn">
						    <img class="buttonadmin3jsp-icon" src="${cpath}/image/Calendar.svg">
						  </button>
						</div>

   					</div>
   					
   					<div class="div44">
 						<div class="div45">위험 행위 종류</div>
 						
 						<div class="check-box-outline-blank-parent iconChange">
 						
 							<img class="check-box-outline-blank-icon checkBox" src="${cpath}/image/checkBox.svg">					
   							<b class="b10">졸음 운전</b>
 						</div>
 						
 						<div class="check-box-outline-blank-group iconChange">
   							
   							<img class="check-box-outline-blank-icon checkBox" src="${cpath}/image/checkBox.svg">
   							<b class="b10">휴대폰 조작</b>
 						</div>
 						
 						<div class="check-box-outline-blank-container iconChange">
   							
   							<img class="check-box-outline-blank-icon checkBox" src="${cpath}/image/checkBox.svg">
   							<b class="b10">운전대 미제어</b>
 						</div>
 						
 						<div class="buttonadmin3jsp-check-box-outline-blank-parent iconChange">
   							
   							<img class="check-box-outline-blank-icon checkBox" src="${cpath}/image/checkBox.svg">
   							<b class="b10">운전자 폭행</b>
 						</div>
   					</div>
   					
   					<div class="div46">
 						<div class="div47">위험 등급</div>
 						<div class="buttonadmin3jsp-frame-parent">
 						
 							<div class="frame-parent2 iconChange">
   							
   								<img class="frame-item checkBox" src="${cpath}/image/checkBox.svg">
   								 								
   								<div class="wrapper7">
   									<b class="b14">상</b>
   								</div>
   								
   								<img class="frame-item" src="${cpath}/image/RedCircle.svg">
   							</div>
   							
   							
   							<div class="frame-parent2 iconChange">
     								
   								<img class="frame-item checkBox" src="${cpath}/image/checkBox.svg">
   								 								
   								<div class="wrapper7">
   									<b class="b14">중</b>
   								</div>
   								
   								<img class="frame-item" src="${cpath}/image/YellowCircle.svg">
   							</div>
   							
   							
   							<div class="frame-parent2 iconChange">
 								
 								<img class="frame-item checkBox" src="${cpath}/image/checkBox.svg">
 								
 								<div class="wrapper7">
   									<b class="b14">하</b>
 								</div>
 								
 								<div class="ellipse-div">
 								</div>
   							</div>
 						</div>
   					</div>
   					  					
   					<div class="parent8">
   					
 						<div class="pm-wrapper">
   							<div class="div41">조치 상태</div>
 						</div>
 						
 						<div class="frame-parent5">
 						
 							<div class="frame-parent2 iconChange">
 								
 								<img class="frame-item checkBox" src="${cpath}/image/checkBox.svg">
								
 								<div class="wrapper10">
   									<b class="b14">조치 완료</b>
 								</div>
   							</div>
   							
   							
   							<div class="frame-parent2 iconChange">
     								
   								<img class="frame-item checkBox" src="${cpath}/image/checkBox.svg">
							
   								<div class="wrapper10">
   									<b class="b14">조치 중</b>
   								</div>
   							</div>
   							
   							
   							<div class="frame-parent2 iconChange">
 								
 								<img class="frame-item checkBox" src="${cpath}/image/checkBox.svg">
 								
 								<div class="wrapper10">
   									<b class="b14">미조치</b>
 								</div>
   							</div>
 						</div>
   					</div>
 				</div>
			</div>
   			

<%@ include file="/WEB-INF/Datetime.jsp" %>  	
   		
   			  			  			  			
<div class="log">LOG</div>
   			
   			<div class="div5">
 				<div class="child">
 				</div>
 				<div class="div6">
 				</div>
 				
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
   					<div class="b">상태</div>
 				</div>
   			
   			
  <div class="div5999">
	   			
	    			<c:choose>
                        <c:when test="${not empty logList}">
                            <c:forEach var="log" items="${logList}" varStatus="status">
                                <!-- 로그 클릭 이벤트 바인딩을 위한 필수 요소: 클래스와 data-log-idx -->
                                <div class="div60 log-row-container" data-log-idx="${log.logIdx}">
                                    <div class="frame-parent9">
                                    
                                        <div class="pm-wrapper">
                                            <div class="b">${status.index + 1}</div>
                                        </div>
                                        
                                        <div class="pm-wrapper">
                                            <div class="b">
                                                <p class="p"><fmt:formatDate value="${log.createdAt}" pattern="yyyy-MM-dd"/></p>
                                                <p class="p"><fmt:formatDate value="${log.createdAt}" pattern="HH:mm:ss"/></p>
                                            </div>
                                        </div>
                                        
                                        <div class="wrapper15">
                                            <div class="b">
                                                <%-- 차량 번호 형식에 맞게 분리해서 출력 --%>
                                                <c:set var="carNumParts" value="${fn:split(log.carNumber, ' ')}" />
                                                <p class="p">${carNumParts[0]} ${carNumParts[1]}</p>
                                                <p class="p">${carNumParts[2]}</p>
                                            </div>
                                        </div>
                                        
                                        <div class="pm-wrapper">
                                            <div class="b">${log.driverName}</div>
                                        </div>
                                        
                                        <div class="pm-wrapper">
                                            <div class="b">${log.eventType}</div>
                                        </div>
                                                                
                                        <div class="pm-wrapper"> 
										    <c:set var="level" value="${log.eventLevel}" />
										    <div class="b">
										        <c:choose>
										            <c:when test="${level == 3}">
										                <%-- '상' (빨간색) --%>
										                <img src="${cpath}/image/RedCircle.svg" alt="상" style="width: 16px; height: 16px;" />
										            </c:when>
										            <c:when test="${level == 2}">
										                <%-- '중' (노란색) --%>
										                <img src="${cpath}/image/YellowCircle.svg" alt="중" style="width: 16px; height: 16px;" />
										            </c:when>
										            <c:when test="${level == 1}">
										                <%-- '하' (파란색) --%>
										                <img src="${cpath}/image/BlueCircle.svg" alt="하" style="width: 16px; height: 16px;" />
										            </c:when>
										            <c:otherwise>
										                <span>-</span>
										            </c:otherwise>
										        </c:choose>
										    </div>
										</div>
                                        
                                        <div class="pm-wrapper">
                                            <div class="b">
                                                <p class="p">${log.status}</p> 
                                            </div>
                                        </div>
                                        
                                    </div>
                                </div>
                            </c:forEach>
                        </c:when>
                        <c:otherwise>
                            <div style="text-align: center; padding: 50px; color: #888;">
                                <c:if test="${not empty searchQuery}">
                                    '${searchQuery}'에 대한 검색 결과가 없습니다.
                                </c:if>
                                <c:if test="${empty searchQuery}">
                                    로그 정보가 없습니다.
                                </c:if>
                            </div>
                        </c:otherwise>
                    </c:choose>
	      			
	    		</div>
   			</div>
    		
    		
<div class="div14" id="logDetailPanel"> <!-- 상세 정보 패널 ID -->
   			
   				<div class="div15">
 					<div class="b">블랙박스 영상</div>
 				</div>
 				
 				<div class="log-title">
  					<div class="id-parent">
  						<b class="id">로그 ID</b>
  						<b class="id">발생 일시</b>
  						<b class="id">차량 번호</b>
  						<b class="id">운전자(운전자 ID)</b>
  						<b class="id">위험 행위 종류(지속시간)</b>
  						<b class="id">위험 등급</b>
  						<b class="id">발생 위치</b>
  						<b class="id">관리자</b>
  						<b class="id">조치 사항</b>
  					</div>
				</div>
				
				
				<div class="log-contents"> <!-- 🚨 값이 바뀌는 영역 (JS에서 내부 div들을 업데이트함) -->
 				
 					<!-- JS updateDetailPanel 함수가 내용을 채울 영역의 ID들 -->
 					<div class="l00000212-parent">
   						<div class="l00000212" id="detail-log-id">-</div> 
   						<div class="div17"></div>
   					</div>
   					
   					<div class="l00000212-parent">
 						<div class="l00000212" id="detail-created-at">-</div>
   						<div class="div17"></div>
   					</div>
   					
   					<div class="l00000212-parent">
   						<div class="l00000212" id="detail-car-number">-</div>
   						<div class="div17"></div>
   					</div>
   					
   					<div class="l00000212-parent">
   						<div class="l00000212" id="detail-driver">-</div>
   						<div class="div17"></div>
   					</div>
   					
   					<div class="l00000212-parent">
   						<div class="l00000212" id="detail-event-type">-</div> 
   						<div class="div17"></div>
   					</div>
   					
   					<div class="l00000212-parent">
   						<div class="l00000212" id="detail-event-level">-</div> 
   						<div class="div17"></div>
   					</div>
   					
   					<div class="l00000212-parent">
   						<div class="l00000212" id="detail-location">-</div> 
   						<div class="div17"></div>
   					</div>
   					
   					<div class="l00000212-parent">
   						<div class="l00000212" id="detail-admin">-</div> 
   						<div class="div17"></div>
   					</div>
   					
   					<div class="l00000212-parent">
 						<div class="l00000212" id="detail-status">-</div> 
 						<div class="div17"></div>
   					</div>
 				</div>
   			</div>  			  			
 		</div>
    	
    	
    	<div class="copyright">
   			<div class="b">Copyright ⓒ 2025 Zo-A Co. All rights reserved.</div>
    	</div>			
    		
  	</div>
  	
  	<script>
        /**
         * 임시 목업 데이터: 실제로는 서버(Controller)에서 logIdx를 기준으로 가져와야 합니다.
         * 실제 데이터 구조에 맞게 수정해야 합니다.
         */
        const mockLogData = {
            // JSP에서 넘겨받은 logIdx가 1이라고 가정
            '1': { 
                logIdx: 'L000001', 
                createdAt: '2025-04-12 13:57:22', 
                carNumber: '74우 6829', 
                driver: '윤서진(Y001)', // 운전자 ID 포함
                eventType: '운전대 미제어(15초)', // 지속시간 포함
                eventLevel: '하 (파랑)', 
                location: '전라남도 순천시 서면 선평리 1045', 
                admin: '강우희', 
                status: '경고 발송 1회 (조치 중)' 
            },
            '2': { 
                logIdx: 'L000002', 
                createdAt: '2025-09-14 17:39:33', 
                carNumber: '68바 9253', 
                driver: '김하준(K002)', 
                eventType: '휴대폰 조작(3초)', 
                eventLevel: '중 (노랑)', 
                location: '서울특별시 강남구 테헤란로 123', 
                admin: '최솔민', 
                status: '조치 완료' 
            },
             // JSTL 목록에 있는 다른 로그 데이터도 필요하다면 여기에 추가해주세요.
        };


        /**
         * 상세 정보 패널의 내용을 업데이트하고 패널을 표시하는 함수.
         * @param {Object} logData - 서버에서 받은 상세 로그 데이터 객체.
         */
        function updateDetailPanel(logData) {
            
            const panel = document.getElementById('logDetailPanel');
            if (!panel) return;
            
            // 1. 패널 보이기
            panel.style.display = 'block';

            // 2. 데이터 업데이트
            document.getElementById('detail-log-id').textContent = logData.logIdx || '-';
            document.getElementById('detail-created-at').textContent = logData.createdAt || '-';
            document.getElementById('detail-car-number').textContent = logData.carNumber || '-';
            document.getElementById('detail-driver').textContent = logData.driver || '-';
            document.getElementById('detail-event-type').textContent = logData.eventType || '-';
            document.getElementById('detail-event-level').textContent = logData.eventLevel || '-';
            document.getElementById('detail-location').textContent = logData.location || '-';
            document.getElementById('detail-admin').textContent = logData.admin || '-';
            document.getElementById('detail-status').textContent = logData.status || '-';

            // 블랙박스 영상 영역 업데이트 로직 (영상 URL을 받는 경우 여기에 추가)
            // document.getElementById('video-placeholder').src = logData.videoUrl;
        }


        /**
         * 서버에 상세 로그 데이터를 요청하는 함수 (실제 AJAX/Fetch가 필요한 부분)
         * @param {string} logIdx - 조회할 로그의 고유 ID.
         */
        function fetchLogDetail(logIdx) {
            const cpath = "${cpath}"; // JSP 변수를 JS 변수로 가져옵니다.

            // 🚨 실제 서버 통신 코드 (예시)
            /*
            fetch(`${cpath}/api/log/detail?logIdx=${logIdx}`) 
                .then(response => {
                    if (!response.ok) { throw new Error('Network response was not ok'); }
                    return response.json();
                })
                .then(data => {
                    updateDetailPanel(data);
                })
                .catch(error => {
                    console.error('로그 상세 정보 가져오기 실패:', error);
                    // 실패 메시지를 사용자에게 표시
                });
            */
            
            // 🚨 목업(Mock) 데이터 사용 (테스트용)
            // 실제 데이터는 서버에서 가져온 data 객체가 mockLogData[logIdx]를 대체합니다.
            const data = mockLogData[logIdx];
            
            if (data) {
                // 네트워크 지연 시뮬레이션
                setTimeout(() => {
                    updateDetailPanel(data);
                }, 100); 
            } else {
                console.warn(`[Mock] Log detail not found for index: ${logIdx}`);
                // 데이터가 없을 경우 패널을 숨기거나 빈 내용으로 초기화할 수 있습니다.
            }
        }
        
        // 🚨 시간/날짜 업데이트 함수 (이전 TypeError 방지용, Datetime.jsp에 정의되어 있지 않다면 여기에 정의해야 합니다)
        function updateTime() {
            const currentTimeEl = document.getElementById('currentTime');
            if (currentTimeEl) {
                currentTimeEl.textContent = new Date().toLocaleTimeString('ko-KR', { hour12: false });
            }
        }
        
        function updateDateTime() {
            const date = new Date();
            const options = { weekday: 'short', month: '2-digit', day: '2-digit' };
            const parts = date.toLocaleDateString('ko-KR', options).split('.').map(s => s.trim()).filter(s => s.length > 0);
            
            const monthSpan = document.getElementById('monthSpan');
            const daySpan = document.getElementById('daySpan');
            const weekdayDiv = document.getElementById('weekdayDiv');

            if (monthSpan && daySpan && weekdayDiv) {
                // 한국어 형식에 맞게 처리 (예: 10. 21. (화))
                if (parts.length >= 3) {
                     monthSpan.textContent = parts[0] + '.'; 
                     daySpan.textContent = parts[1] + '.';
                     weekdayDiv.textContent = parts[2];
                }
            }
        }


        document.addEventListener('DOMContentLoaded', function() {
            
            // A. 시간/날짜 초기화 및 반복 설정 (TypeError 방지)
            updateTime();
            setInterval(updateTime, 1000);
            updateDateTime();
            setInterval(updateDateTime, 60000);
            
            
            // B. 로그 바 클릭 이벤트 바인딩 (상세 정보 표시)
            const logRows = document.querySelectorAll('.log-row-container');
            const logDetailPanel = document.getElementById('logDetailPanel');

            logRows.forEach(row => {
                row.addEventListener('click', function() {
                    // 모든 행의 선택 하이라이트 제거
                    logRows.forEach(r => r.classList.remove('selected-log-row'));
                    // 클릭된 행에 하이라이트 추가
                    this.classList.add('selected-log-row');

                    // data-log-idx 속성에서 로그 ID 가져오기
                    const logIdx = this.getAttribute('data-log-idx');

                    if (logIdx) {
                        // 상세 정보 가져오기 및 패널 업데이트 함수 호출
                        fetchLogDetail(logIdx);
                        // 패널 보이기 (updateDetailPanel에서도 하지만, 여기서 한번 더 해도 무방)
                        logDetailPanel.style.display = 'block';
                    }
                });
            });
            
            // C. 캘린더 버튼, 체크박스 이벤트 등의 나머지 JS 로직도 여기에 위치해야 합니다.
            // ... (다른 이벤트 리스너들)
            
        });
	</script>
	
	
</body>
</html>
