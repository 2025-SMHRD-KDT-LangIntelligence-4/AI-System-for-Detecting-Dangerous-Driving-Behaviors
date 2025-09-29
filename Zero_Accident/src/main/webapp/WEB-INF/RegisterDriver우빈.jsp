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
<head>
    <meta charset="UTF-8">
    <title>회원가입</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 30px;
        }
        .container {
            max-width: 400px;
            margin: auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 10px;
        }
        label {
            display: block;
            margin-top: 10px;
        }
        input {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            box-sizing: border-box;
        }
        .row {
            display: flex;
            gap: 10px;
        }
        button {
            margin-top: 15px;
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        button:hover {
            background-color: #45a049;
        }
        .check-btn {
            width: auto;
            margin-top: 5px;
            padding: 8px 12px;
            background-color: #007bff;
        }
        .check-btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>



<body>
    <div class="container">
        <h2>회원가입</h2>
        <form action="${cpath}/RegisterDriver2우빈" method="post">
            <!-- 아이디 -->
            <label for="userId">아이디</label>
            <div class="row">
                <input type="text" id="userId" name="driverId" required>
                <button type="button" class="check-btn">중복확인</button>
            </div>

            <!-- 비밀번호 -->
            <label for="password">비밀번호</label>
            <input type="password" id="password" name="driverPwd" required>

            <!-- 비밀번호 확인 -->
            <label for="confirmPassword">비밀번호 확인</label>
            <input type="password" id="confirmPassword" name="driverPwdCheck" required>

            <!-- 이름 -->
            <label for="name">이름</label>
            <input type="text" id="name" name="driverName" required>
            
            <!-- 지역 -->
            <label for="name">지역</label>
            <input type="text" id="region" name="driverRegion" required>

            <!-- 휴대폰번호 -->
            <label for="phone">휴대폰번호</label>
            <input type="tel" id="phone" name="driverContact" maxlength="11" placeholder="010-1234-5678" required>

			<!-- 생년월일 -->
			<label for="birthdate">생년월일</label>
			<input type="date" id="birthdate" name="driverBirthdate" required>
			
			<!-- 성별 -->
			<label>성별</label>
			<div class="row">
			    <input type="radio" id="male" name="driverGender" value="M" required>
			    <label for="male">남</label>
			
				<input type="radio" id="female" name="driverGender" value="F" required>
			    <label for="female">여</label>
			</div>

            <!-- 가입 버튼 -->
            <button type="submit">회원가입</button>
        </form>
    </div>
</body>
</html>