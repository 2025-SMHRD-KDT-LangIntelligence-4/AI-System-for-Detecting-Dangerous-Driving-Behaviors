<!-- src/main/webapp/WEB-INF/MapDrivers.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>운전자 위치 지도</title>
<link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square-neo.css" rel="stylesheet">
<style>
  body { font-family: 'NanumSquareNeo', sans-serif; }
  #map { width: 100%; height: 600px; border-radius: 12px; }
  .map-wrap { max-width: 1120px; margin: 24px auto; padding: 0 12px; }
</style>

<script src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=b1fc2610a3c9415f64affd1fc92ced5b&autoload=false"></script>
</head>
<body>
<div class="map-wrap">
  <h2>운전자 위치</h2>
  <div id="map"></div>
</div>

<script>
  // 서버에서 전달된 리스트 직렬화 (BigDecimal → 문자열 → Number 변환)
  const drivers = [
    <c:forEach var="d" items="${drivers}" varStatus="s">
      {
        idx: ${d.driverIdx},
        name: "${fn:escapeXml(d.driverName)}",
        carNumber: "${fn:escapeXml(d.driverContact)}", // 연락처/차량번호 중 원하는 필드로 교체
        lat: Number("${d.driverLat}"),
        lng: Number("${d.driverLon}"),
        updatedAt: "${d.createdAt}"
      }<c:if test="${!s.last}">,</c:if>
    </c:forEach>
  ];

  kakao.maps.load(function () {
    const defaultCenter = new kakao.maps.LatLng(37.5665, 126.9780); // 서울시청
    const map = new kakao.maps.Map(document.getElementById('map'), { center: defaultCenter, level: 7 });

    if (!drivers || drivers.length === 0) return;

    const bounds = new kakao.maps.LatLngBounds();
    const infowindow = new kakao.maps.InfoWindow({ zIndex: 1 });

    drivers.forEach(d => {
      if (isNaN(d.lat) || isNaN(d.lng)) return;
      const pos = new kakao.maps.LatLng(d.lat, d.lng);
      bounds.extend(pos);

      const marker = new kakao.maps.Marker({ position: pos, map });

      const content = `
        <div style="padding:8px; min-width:200px">
          <div style="font-weight:700; margin-bottom:4px;">${d.name || '운전자'}</div>
          <div>연락처/차량: ${d.carNumber || '-'}</div>
          <div style="font-size:12px;color:#666;margin-top:4px;">업데이트: ${d.updatedAt || '-'}</div>
        </div>
      `;

      kakao.maps.event.addListener(marker, 'click', () => {
        infowindow.setContent(content);
        infowindow.open(map, marker);
      });
    });

    map.setBounds(bounds);
    if (drivers.length === 1) {
      map.setLevel(4);
      map.setCenter(new kakao.maps.LatLng(drivers[0].lat, drivers[0].lng));
    }
  });
</script>
</body>
</html>
