<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />



   				



<!-- 등록된 전체 운전자 수 -->
<div class="div9">
	<div class="wrapper">
		<div class="div10">
			<span>TOTAL </span>

			<!-- 전체 운전자 수 : DB에서 조회할 값! -->
			<span class="span">${driverCount}</span> <span
				class="buttonadmin2jsp-span">명</span>
		</div>
	</div>

	<!-- 구분선 -->
	<div class="div11"></div>
</div>



<!-- =============== 운전자 리스트 ================ -->
<div class="div12">

	<!-- 운전자 n명 반복 -->
	<c:forEach var="driver" items="${driverList}">
		<div class="div13">
			<div class="radio-button-unchecked-parent">

				<!-- 운전자 선택 버튼 -->
				<!-- 클릭 시 아이콘 변경됨 -->
				<img class="radio-button-unchecked-icon" src="/image/select.svg">

				<!-- 운행 유무 표시 -->
				<!-- 운행 시 '운행'으로 표시 -->
				<!-- 미운행 시 '미운행'으로 표시 -->
				<div class="s021">운행</div>
			</div>

			<div class="avatar-parent">

				<!-- 운전자 증명사진 -->
				<div class="avatar-icon">
					<!-- image 삽입 공간 : DB에서 이미지 url 가져오기! -->
					<img class="avatar-img"
					src="${driver.driverImg}"
					onerror="this.onerror=null; this.src='/imagePeople/default.png';">
				</div>

				<div class="s021">

					<!-- 운전자 이름 : DB에서 driverName값 가져오기! -->
					<p class="driverName">${driver.driverName}</p>

					<!-- 운전자 고유 ID : DB에서 driverIdx값 가져오기! -->
					<p class="buttonadmin2jsp-s021">(${driver.driverCode})</p>
				</div>
			</div>

			<!-- 운전자 세부 정보 -->
			<div class="parent">
				<div class="div15">
					<div class="title-parent">

						<!-- 카테고리 -->
						<div class="title">
							<b class="b3">
								<p class="pp">연락처</p>
								<p class="pp">생년 월일</p>
								<p class="pp">근무 지역</p>
								<p class="pp">관리자</p>
								<p class="pp">차량 번호</p>
								<p class="pp">등록 일자</p>
								<p class="pp">총 위험 행위 건수</p>
							</b>
						</div>

						<!-- 실제 운전자 세부 정보 -->
						<div class="container">
							<b class="b4">
							<!-- 운전자 연락처 : DB에서 driverContact값 가져오기! -->
								<p class="p">${driver.driverContact}</p>
								<!-- 운전자 생년월일 : DB에서 driverBirthdate값 가져오기! -->
								<p class="p">${driver.fmtDriverBirthdate}</p>
								<!-- 운전자 근무 지역 : DB에서 driverRegion값 가져오기! -->
								<p class="p">
									<span class="region-text" data-lat="${driver.driverLat}"
										data-lng="${driver.driverLon}" >지역 불러오는 중…</span>
								</p> 
								<!-- 담당 관리자 이름 : DB에서 adminName값 가져오기! -->
								<p class="p">${driver.adminName}</p>
								<!-- 운전자 차량번호 : DB에서 carNumber값 가져오기! -->
								<p class="p">${driver.carNumber}</p>
								<!-- 등록 일자 : DB에서 createdAt값 가져오기! -->
								<p class="p">${driver.fmtCreatedAt}</p>
								<!-- 총 위험 행위 건수 : DB에서 조회하기! -->
								<p class="p">${driver.countLog}건</p>
							</b>
						</div>

					</div>
				</div>

				<!-- 정보 수정하기 버튼 -->
				<!-- 클릭 시 정보 수정 페이지로 이동(미정) -->
				<button type="button" class="div16" onclick="location.href='#'">
					<b class="b5">정보 수정하기</b>
				</button>

			</div>

		</div>
		<!-- 운전자 한명 끝 -->
	</c:forEach>

</div>
<!-- 운전자 리스트 끝-->






