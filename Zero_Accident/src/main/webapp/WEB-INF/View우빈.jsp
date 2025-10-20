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
<!-- ====== 위험운전 스택형 막대 차트 (Dark / Zero-Accident 테마) ====== -->
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

<style>
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
</head>

<body>

<div id="riskChartWrap">
  <canvas id="riskChart"></canvas>
</div>

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
          labels: {
            color: '#b8cfce',           // 글자색 (민트톤)
            font: { weight: 600 }
          }
        },
        tooltip: {
          mode: 'index', intersect: false,
          backgroundColor: '#37353e',  // 툴팁 배경
          titleColor: '#eaefef',
          bodyColor: '#b8cfce',
          borderColor: '#7f8caa',      // 블루그레이 테두리
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

</body>
</html>
