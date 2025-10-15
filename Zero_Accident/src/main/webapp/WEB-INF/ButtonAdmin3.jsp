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

    <!-- ButtonAdmin3.css 파일의 스타일을 적용하겠다. -->
	<link rel="stylesheet"  href="/css/ButtonAdmin3.css" />
	<!-- Sidebar.css 파일의 스타일을 적용하겠다. -->
	<link rel="stylesheet"  href="/css/Sidebar.css" />
	
</head>
<body>
	
  	<!-- 전체 컨테이너 -->
  	<div class="buttonadmin3jsp">
  		
  		<!-- 사이드 바 -->
  		<!-- Sidebar.jsp 파일에서 작업하기! -->
  		<%@ include file="/WEB-INF/Sidebar.jsp" %>
		
  	
  	
    		<div class="copyright">
      			<div class="b">Copyright ⓒ 2025 Zo-A Co. All rights reserved.</div>
    		</div>
    		
    		
    		
    		<div class="div">
      			<div class="buttonadmin3jsp-div">
      			</div>
      			<div class="div2">
      			</div>
      			<div class="div3">
        				<img class="icon" alt="">
        				
        				<b class="b">강우희 관리자</b>
      			</div>
      			<div class="div4">
        				<b class="b2">대중교통 안전 관제 시스템</b>
        				<div class="zer0-accident">
          					<div class="buttonadmin3jsp-zer0-accident">Zer0-Accident</div>
        				</div>
      			</div>
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
      			</div>
      			<div class="log">LOG</div>
      			<div class="div14">
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
        				<div class="log-contents">
          					<div class="l00000212-parent">
            						<div class="l00000212">L00000212</div>
            						<div class="div17">
            						</div>
          					</div>
          					<div class="l00000212-parent">
            						<div class="l00000212">2025-10-29 15:01:33</div>
            						<div class="div17">
            						</div>
          					</div>
          					<div class="l00000212-parent">
            						<div class="l00000212">서울 72자 4183</div>
            						<div class="div17">
            						</div>
          					</div>
          					<div class="l00000212-parent">
            						<div class="l00000212">김도훈(S062)</div>
            						<div class="div17">
            						</div>
          					</div>
          					<div class="l00000212-parent">
            						<div class="l00000212">휴대폰 조작(12초)</div>
            						<div class="div17">
            						</div>
          					</div>
          					<div class="log-contents-child">
          					</div>
          					<div class="wrapper4">
            						<div class="div17">
            						</div>
          					</div>
          					<div class="l00000212-parent">
            						<div class="l00000212">전라남도 순천시 서면 선평리 1045 </div>
            						<div class="div17">
            						</div>
          					</div>
          					<div class="l00000212-parent">
            						<div class="l00000212">강우희</div>
            						<div class="div17">
            						</div>
          					</div>
          					<div class="l00000212-parent">
            						<div class="l00000212">
              							<span>경고 발송 1회(</span>
              							<span class="span">조치 중</span>
              							<span>)</span>
            						</div>
            						<div class="div17">
            						</div>
          					</div>
        				</div>
      			</div>
      			<div class="div32">
        				<div class="div33">
          					<div class="frame-parent">
            						<div class="frame-group">
              							<img class="frame-child" alt="">
              							
              							<div class="parent5">
                								<div class="div34">
                  									<span>10월 </span>
                  									<span class="buttonadmin3jsp-span">29</span>
                  									<span>일</span>
                								</div>
                								<div class="div35">수요일</div>
              							</div>
            						</div>
            						<div class="parent6">
              							<div class="div36">
              							</div>
              							<div class="pm-wrapper">
                								<div class="b">15:19PM</div>
              							</div>
            						</div>
          					</div>
        				</div>
      			</div>
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
                								<div class="b">날짜를 선택하세요.</div>
              							</div>
              							<div class="calendar">
                								<img class="buttonadmin3jsp-icon" alt="">
                								
              							</div>
            						</div>
          					</div>
          					<div class="div44">
            						<div class="div45">위험 행위 종류</div>
            						<div class="check-box-outline-blank-parent">
              							<img class="check-box-outline-blank-icon" alt="">
              							
              							<b class="b10">졸음 운전</b>
            						</div>
            						<div class="check-box-outline-blank-group">
              							<img class="check-box-outline-blank-icon" alt="">
              							
              							<b class="b10">휴대폰 조작</b>
            						</div>
            						<div class="check-box-outline-blank-container">
              							<img class="check-box-outline-blank-icon" alt="">
              							
              							<b class="b10">운전대 미제어</b>
            						</div>
            						<div class="buttonadmin3jsp-check-box-outline-blank-parent">
              							<img class="check-box-outline-blank-icon" alt="">
              							
              							<b class="b10">운전자 폭행</b>
            						</div>
          					</div>
          					<div class="div46">
            						<div class="div47">위험 등급</div>
            						<div class="buttonadmin3jsp-frame-parent">
              							<div class="frame-parent2">
                								<img class="frame-item" alt="">
                								
                								<div class="wrapper7">
                  									<b class="b14">상</b>
                								</div>
                								<img class="frame-item" alt="">
                								
              							</div>
              							<div class="frame-parent2">
                								<img class="frame-item" alt="">
                								
                								<div class="wrapper7">
                  									<b class="b14">중</b>
                								</div>
                								<img class="frame-item" alt="">
                								
              							</div>
              							<div class="frame-parent2">
                								<img class="frame-item" alt="">
                								
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
              							<div class="frame-parent2">
                								<img class="frame-item" alt="">
                								
                								<div class="wrapper10">
                  									<b class="b14">조치 완료</b>
                								</div>
              							</div>
              							<div class="frame-parent2">
                								<img class="frame-item" alt="">
                								
                								<div class="wrapper10">
                  									<b class="b14">조치 중</b>
                								</div>
              							</div>
              							<div class="frame-parent2">
                								<img class="frame-item" alt="">
                								
                								<div class="wrapper10">
                  									<b class="b14">미조치</b>
                								</div>
              							</div>
            						</div>
          					</div>
        				</div>
      			</div>
      			<div class="div50">
        				<div class="div51">
        				</div>
        				<img class="item" alt="">
        				
      			</div>
    		</div>
    		
    		
    	
    		
    		
    		<div class="div59">
      			<div class="div60">
        				<div class="frame-parent9">
          					<div class="pm-wrapper">
            						<div class="b">1</div>
          					</div>
          					<div class="pm-wrapper">
            						<div class="b">
              							<p class="p">2025-10-29</p>
              							<p class="p">15:01:33</p>
            						</div>
          					</div>
          					<div class="wrapper15">
            						<div class="b">
              							<p class="p">서울 72자</p>
              							<p class="p">4183</p>
            						</div>
          					</div>
          					<div class="pm-wrapper">
            						<div class="b">김도훈</div>
          					</div>
          					<div class="pm-wrapper">
            						<div class="b">휴대폰 조작</div>
          					</div>
          					<div class="log-contents-child">
          					</div>
          					<div class="pm-wrapper">
            						<div class="b">
              							<p class="p">경고 발송</p>
              							<p class="p">
                								<span>1회(</span>
                								<span class="span">조치중</span>
                								<span class="span4">)</span>
              							</p>
            						</div>
          					</div>
        				</div>
      			</div>
      			<div class="div67">
        				<div class="frame-parent9">
          					<div class="pm-wrapper">
            						<div class="b">1</div>
          					</div>
          					<div class="pm-wrapper">
            						<div class="b">
              							<p class="p">2025-10-29</p>
              							<p class="p">15:01:33</p>
            						</div>
          					</div>
          					<div class="wrapper21">
            						<div class="b">
              							<p class="p">서울 72자</p>
              							<p class="p">4183</p>
            						</div>
          					</div>
          					<div class="pm-wrapper">
            						<div class="b">김도훈</div>
          					</div>
          					<div class="pm-wrapper">
            						<div class="b">휴대폰 조작</div>
          					</div>
          					<div class="frame-child7">
          					</div>
          					<div class="pm-wrapper">
            						<div class="b">
              							<p class="p">경고 발송</p>
              							<p class="p">
                								<span>1회(</span>
                								<span class="span">조치중</span>
                								<span class="span4">)</span>
              							</p>
            						</div>
          					</div>
        				</div>
      			</div>
      			<div class="div67">
        				<div class="frame-parent9">
          					<div class="pm-wrapper">
            						<div class="b">1</div>
          					</div>
          					<div class="pm-wrapper">
            						<div class="b">
              							<p class="p">2025-10-29</p>
              							<p class="p">15:01:33</p>
            						</div>
          					</div>
          					<div class="wrapper21">
            						<div class="b">
              							<p class="p">서울 72자</p>
              							<p class="p">4183</p>
            						</div>
          					</div>
          					<div class="pm-wrapper">
            						<div class="b">김도훈</div>
          					</div>
          					<div class="pm-wrapper">
            						<div class="b">휴대폰 조작</div>
          					</div>
          					<div class="frame-child7">
          					</div>
          					<div class="pm-wrapper">
            						<div class="b">
              							<p class="p">경고 발송</p>
              							<p class="p">
                								<span>1회(</span>
                								<span class="span">조치중</span>
                								<span class="span4">)</span>
              							</p>
            						</div>
          					</div>
        				</div>
      			</div>
      			<div class="div67">
        				<div class="frame-parent9">
          					<div class="pm-wrapper">
            						<div class="b">1</div>
          					</div>
          					<div class="pm-wrapper">
            						<div class="b">
              							<p class="p">2025-10-29</p>
              							<p class="p">15:01:33</p>
            						</div>
          					</div>
          					<div class="wrapper21">
            						<div class="b">
              							<p class="p">서울 72자</p>
              							<p class="p">4183</p>
            						</div>
          					</div>
          					<div class="pm-wrapper">
            						<div class="b">김도훈</div>
          					</div>
          					<div class="pm-wrapper">
            						<div class="b">휴대폰 조작</div>
          					</div>
          					<div class="frame-child7">
          					</div>
          					<div class="pm-wrapper">
            						<div class="b">
              							<p class="p">경고 발송</p>
              							<p class="p">
                								<span>1회(</span>
                								<span class="span">조치중</span>
                								<span class="span4">)</span>
              							</p>
            						</div>
          					</div>
        				</div>
      			</div>
      			<div class="div67">
        				<div class="frame-parent9">
          					<div class="pm-wrapper">
            						<div class="b">1</div>
          					</div>
          					<div class="pm-wrapper">
            						<div class="b">
              							<p class="p">2025-10-29</p>
              							<p class="p">15:01:33</p>
            						</div>
          					</div>
          					<div class="wrapper21">
            						<div class="b">
              							<p class="p">서울 72자</p>
              							<p class="p">4183</p>
            						</div>
          					</div>
          					<div class="pm-wrapper">
            						<div class="b">김도훈</div>
          					</div>
          					<div class="pm-wrapper">
            						<div class="b">휴대폰 조작</div>
          					</div>
          					<div class="frame-child7">
          					</div>
          					<div class="pm-wrapper">
            						<div class="b">
              							<p class="p">경고 발송</p>
              							<p class="p">
                								<span>1회(</span>
                								<span class="span">조치중</span>
                								<span class="span4">)</span>
              							</p>
            						</div>
          					</div>
        				</div>
      			</div>
      			<div class="div67">
        				<div class="frame-parent9">
          					<div class="pm-wrapper">
            						<div class="b">1</div>
          					</div>
          					<div class="pm-wrapper">
            						<div class="b">
              							<p class="p">2025-10-29</p>
              							<p class="p">15:01:33</p>
            						</div>
          					</div>
          					<div class="wrapper21">
            						<div class="b">
              							<p class="p">서울 72자</p>
              							<p class="p">4183</p>
            						</div>
          					</div>
          					<div class="pm-wrapper">
            						<div class="b">김도훈</div>
          					</div>
          					<div class="pm-wrapper">
            						<div class="b">휴대폰 조작</div>
          					</div>
          					<div class="frame-child7">
          					</div>
          					<div class="pm-wrapper">
            						<div class="b">
              							<p class="p">경고 발송</p>
              							<p class="p">
                								<span>1회(</span>
                								<span class="span">조치중</span>
                								<span class="span4">)</span>
              							</p>
            						</div>
          					</div>
        				</div>
      			</div>
      			<div class="div67">
        				<div class="frame-parent9">
          					<div class="pm-wrapper">
            						<div class="b">1</div>
          					</div>
          					<div class="pm-wrapper">
            						<div class="b">
              							<p class="p">2025-10-29</p>
              							<p class="p">15:01:33</p>
            						</div>
          					</div>
          					<div class="wrapper21">
            						<div class="b">
              							<p class="p">서울 72자</p>
              							<p class="p">4183</p>
            						</div>
          					</div>
          					<div class="pm-wrapper">
            						<div class="b">김도훈</div>
          					</div>
          					<div class="pm-wrapper">
            						<div class="b">휴대폰 조작</div>
          					</div>
          					<div class="frame-child7">
          					</div>
          					<div class="pm-wrapper">
            						<div class="b">
              							<p class="p">경고 발송</p>
              							<p class="p">
                								<span>1회(</span>
                								<span class="span">조치중</span>
                								<span class="span4">)</span>
              							</p>
            						</div>
          					</div>
        				</div>
      			</div>
      			<div class="div67">
        				<div class="frame-parent9">
          					<div class="pm-wrapper">
            						<div class="b">1</div>
          					</div>
          					<div class="pm-wrapper">
            						<div class="b">
              							<p class="p">2025-10-29</p>
              							<p class="p">15:01:33</p>
            						</div>
          					</div>
          					<div class="wrapper21">
            						<div class="b">
              							<p class="p">서울 72자</p>
              							<p class="p">4183</p>
            						</div>
          					</div>
          					<div class="pm-wrapper">
            						<div class="b">김도훈</div>
          					</div>
          					<div class="pm-wrapper">
            						<div class="b">휴대폰 조작</div>
          					</div>
          					<div class="frame-child7">
          					</div>
          					<div class="pm-wrapper">
            						<div class="b">
              							<p class="p">경고 발송</p>
              							<p class="p">
                								<span>1회(</span>
                								<span class="span">조치중</span>
                								<span class="span4">)</span>
              							</p>
            						</div>
          					</div>
        				</div>
      			</div>
      			<div class="div67">
        				<div class="frame-parent9">
          					<div class="pm-wrapper">
            						<div class="b">1</div>
          					</div>
          					<div class="pm-wrapper">
            						<div class="b">
              							<p class="p">2025-10-29</p>
              							<p class="p">15:01:33</p>
            						</div>
          					</div>
          					<div class="wrapper21">
            						<div class="b">
              							<p class="p">서울 72자</p>
              							<p class="p">4183</p>
            						</div>
          					</div>
          					<div class="pm-wrapper">
            						<div class="b">김도훈</div>
          					</div>
          					<div class="pm-wrapper">
            						<div class="b">휴대폰 조작</div>
          					</div>
          					<div class="frame-child7">
          					</div>
          					<div class="pm-wrapper">
            						<div class="b">
              							<p class="p">경고 발송</p>
              							<p class="p">
                								<span>1회(</span>
                								<span class="span">조치중</span>
                								<span class="span4">)</span>
              							</p>
            						</div>
          					</div>
        				</div>
      			</div>
      			<div class="div67">
        				<div class="frame-parent9">
          					<div class="pm-wrapper">
            						<div class="b">1</div>
          					</div>
          					<div class="pm-wrapper">
            						<div class="b">
              							<p class="p">2025-10-29</p>
              							<p class="p">15:01:33</p>
            						</div>
          					</div>
          					<div class="wrapper21">
            						<div class="b">
              							<p class="p">서울 72자</p>
              							<p class="p">4183</p>
            						</div>
          					</div>
          					<div class="pm-wrapper">
            						<div class="b">김도훈</div>
          					</div>
          					<div class="pm-wrapper">
            						<div class="b">휴대폰 조작</div>
          					</div>
          					<div class="frame-child7">
          					</div>
          					<div class="pm-wrapper">
            						<div class="b">
              							<p class="p">경고 발송</p>
              							<p class="p">
                								<span>1회(</span>
                								<span class="span">조치중</span>
                								<span class="span4">)</span>
              							</p>
            						</div>
          					</div>
        				</div>
      			</div>
      			<div class="div67">
        				<div class="frame-parent9">
          					<div class="pm-wrapper">
            						<div class="b">1</div>
          					</div>
          					<div class="pm-wrapper">
            						<div class="b">
              							<p class="p">2025-10-29</p>
              							<p class="p">15:01:33</p>
            						</div>
          					</div>
          					<div class="wrapper21">
            						<div class="b">
              							<p class="p">서울 72자</p>
              							<p class="p">4183</p>
            						</div>
          					</div>
          					<div class="pm-wrapper">
            						<div class="b">김도훈</div>
          					</div>
          					<div class="pm-wrapper">
            						<div class="b">휴대폰 조작</div>
          					</div>
          					<div class="frame-child7">
          					</div>
          					<div class="pm-wrapper">
            						<div class="b">
              							<p class="p">경고 발송</p>
              							<p class="p">
                								<span>1회(</span>
                								<span class="span">조치중</span>
                								<span class="span4">)</span>
              							</p>
            						</div>
          					</div>
        				</div>
      			</div>
      			<div class="div67">
        				<div class="frame-parent9">
          					<div class="pm-wrapper">
            						<div class="b">1</div>
          					</div>
          					<div class="pm-wrapper">
            						<div class="b">
              							<p class="p">2025-10-29</p>
              							<p class="p">15:01:33</p>
            						</div>
          					</div>
          					<div class="wrapper21">
            						<div class="b">
              							<p class="p">서울 72자</p>
              							<p class="p">4183</p>
            						</div>
          					</div>
          					<div class="pm-wrapper">
            						<div class="b">김도훈</div>
          					</div>
          					<div class="pm-wrapper">
            						<div class="b">휴대폰 조작</div>
          					</div>
          					<div class="frame-child7">
          					</div>
          					<div class="pm-wrapper">
            						<div class="b">
              							<p class="p">경고 발송</p>
              							<p class="p">
                								<span>1회(</span>
                								<span class="span">조치중</span>
                								<span class="span4">)</span>
              							</p>
            						</div>
          					</div>
        				</div>
      			</div>
      			<div class="div67">
        				<div class="frame-parent9">
          					<div class="pm-wrapper">
            						<div class="b">1</div>
          					</div>
          					<div class="pm-wrapper">
            						<div class="b">
              							<p class="p">2025-10-29</p>
              							<p class="p">15:01:33</p>
            						</div>
          					</div>
          					<div class="wrapper21">
            						<div class="b">
              							<p class="p">서울 72자</p>
              							<p class="p">4183</p>
            						</div>
          					</div>
          					<div class="pm-wrapper">
            						<div class="b">김도훈</div>
          					</div>
          					<div class="pm-wrapper">
            						<div class="b">휴대폰 조작</div>
          					</div>
          					<div class="frame-child7">
          					</div>
          					<div class="pm-wrapper">
            						<div class="b">
              							<p class="p">경고 발송</p>
              							<p class="p">
                								<span>1회(</span>
                								<span class="span">조치중</span>
                								<span class="span4">)</span>
              							</p>
            						</div>
          					</div>
        				</div>
      			</div>
    		</div>
  	</div>
  	
  	
  	
  	

</body>
</html>