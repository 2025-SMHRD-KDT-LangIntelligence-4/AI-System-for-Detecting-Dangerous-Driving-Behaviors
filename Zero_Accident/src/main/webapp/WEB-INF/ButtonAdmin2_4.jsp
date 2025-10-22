<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

	<!-- 웹 폰트 url(나눔 스퀘어 네오) -->
    <link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square-neo.css" rel="stylesheet">

    <!-- ButtonAdmin2_2.css 파일의 스타일을 적용하겠다. -->
	<link rel="stylesheet"  href="/css/ButtonAdmin2_3.css" />

<!-- =================================== 운전자 등록 페이지 ==================================== -->
  	
  	
  	
  	<!-- 전체 프레임 -->
	<div class="driver-waiting-container">
	
		  <!-- 등록 대기자 수 / 일괄등록 버튼 -->
		  <div class="driver-waiting-header">
				<!-- 우빈 : 선택 등록 버튼 -->
				<div class="actionBtnWrap">
				
				  <!-- 기존 버튼 (그대로) -->
				<button type="button" class="registerAllBtn"
				        style="background-color:#686363; color:#eaefef; border:1px solid #686363;">
				  <!-- <img class="add-circle-icon" src="/image/addCircle2.svg" />  -->
				  <div class="driver-bulk-text">연간 통계</div>
				</button>
				  
				  <!-- ★추가: 새 버튼들 (원하는 개수만큼 복사) -->
				  <button type="button" class="registerAllBtn registerAllBtn--danger">
				  <!-- <img class="add-circle-icon" src="/image/addCircle2.svg" />  -->
				    <div class="driver-bulk-text">월간 통계</div>
				  </button>
				  
				  <!-- ★추가: 새 버튼들 (원하는 개수만큼 복사) -->
				  <button type="button" class="registerAllBtn registerAllBtn--danger">
				  <!-- <img class="add-circle-icon" src="/image/addCircle2.svg" />  -->
				    <div class="driver-bulk-text">지역별 통계</div>
				  </button>
				  
				  <!-- ★추가: 새 버튼들 (원하는 개수만큼 복사) -->
				  <button type="button" class="registerAllBtn registerAllBtn--danger">
				  <!-- <img class="add-circle-icon" src="/image/addCircle2.svg" />  -->
				    <div class="driver-bulk-text">위험 운전 유형 통계</div>
				  </button>
				  
				</div>
		  </div>
	  
	
	  <!-- 운전자 등록 대기 리스트  -->
	  <div class="driver-waiting-table-area">
		  <!-- ✅ (이동) 가운데 정렬용 래퍼 -->
		  <div id="riskChartCenter">
		    <div id="riskChartWrap">
		      <canvas id="riskChart"></canvas>
		    </div>
		  </div>
	  </div> <!-- 운전자 등록 대기 리스트 끝  --> 
	</div> <!-- 전체 프레임 끝 -->
					
<style>
  /* ✅ 차트 영역을 .div8 안에서 가로·세로 가운데 정렬 */
  #riskChartCenter {
    width: 100%;
    height: 100%;                 /* .div8이 고정 높이라면 100%로 꽉 채움 */
    display: flex;
    align-items: center;           /* 세로 가운데 */
    justify-content: center;       /* 가로 가운데 */
    box-sizing: border-box;
  }

  /* 다크 컨테이너 */
  #riskChartWrap {
    width: 100%;
    max-width: 1100px;
    height: 440px;
    margin: 0 auto;
    background: #37353e;           /* 메인 배경색 */
    border: 1px solid #44444e;     /* 테두리 */
    border-radius: 14px;
    padding: 14px 12px;
    box-sizing: border-box;
  }
  #riskChartWrap > canvas {
    width: 100% !important;
    height: 100% !important;
  }
</style>


<!-- 통계 그래프 -->
<script>
(function () {
  // ✅ 1️⃣ JSP → JS로 데이터 전달
  const rawData = [
    <c:forEach var="g" items="${graphValue}" varStatus="st">
      { ym: "${g.ym}", type: "${g.eventType}", cnt: ${g.cnt} }<c:if test="${!st.last}">,</c:if>
    </c:forEach>
  ];

  // ✅ 2️⃣ 월(ym) 목록 추출 & 11월·12월 제외
  let labels = [...new Set(rawData.map(r => r.ym))];
  labels = labels.filter(m => !m.endsWith('-11') && !m.endsWith('-12'));

  // ✅ 3️⃣ 이벤트유형 목록 추출 (중복 제거)
  const types = [...new Set(rawData.map(r => r.type))];

  // ✅ 4️⃣ 유형별 data 배열 생성 (월별 cnt값 채움)
  const datasets = types.map(t => {
    const data = labels.map(m => {
      const found = rawData.find(r => r.ym === m && r.type === t);
      return found ? found.cnt : 0;
    });
    return { label: t, data };
  });

  // ✅ 5️⃣ 색상 팔레트 (Zero-Accident 다크테마 맞춤)
  const colors = [
    'rgba(184,207,206,0.9)',   // 민트 (#b8cfce)
    'rgba(127,140,170,0.9)',   // 블루그레이 (#7f8caa)
    'rgba(208,123,123,0.9)',   // 붉은 포인트 (#d07b7b)
    'rgba(95,95,110,0.9)',     // 중간 회색 (#5f5f6e)
    'rgba(68,68,78,0.9)',      // 보조 배경 (#44444e)
    'rgba(55,53,62,0.9)'       // 진한 배경 (#37353e)
  ];

  datasets.forEach((ds, i) => {
    ds.backgroundColor = colors[i % colors.length];
    ds.stack = 'risk';
    ds.borderWidth = 0;
  });

  // ✅ 6️⃣ Chart.js 실행
  const ctx = document.getElementById('riskChart').getContext('2d');
  new Chart(ctx, {
    type: 'bar',
    data: { labels, datasets },
    options: {
      responsive: true,
      maintainAspectRatio: false,
      plugins: {
        legend: {
          position: 'top',
          labels: { color: '#b8cfce', font: { weight: 600 } }
        },
        tooltip: {
          mode: 'index', intersect: false,
          backgroundColor: '#37353e',
          titleColor: '#eaefef',
          bodyColor: '#b8cfce',
          borderColor: '#7f8caa',
          borderWidth: 1,
          callbacks: {
            title: (items) => items[0].label,
            footer: (items) => {
              const sum = items.reduce((a, it) => a + it.parsed.y, 0);
              return '합계: ' + sum;
            }
          }
        }
      },
      scales: {
        x: {
          stacked: true,
          grid: { color: 'rgba(88, 88, 100, 0.15)' },
          ticks: { color: '#b8cfce' }
        },
        y: {
          stacked: true,
          beginAtZero: true,
          ticks: { color: '#b8cfce', precision: 0 },
          grid: { color: 'rgba(88, 88, 100, 0.15)' }
        }
      },
      layout: { padding: { left: 6, right: 6, top: 6, bottom: 6 } }
    }
  });
})();
</script>
