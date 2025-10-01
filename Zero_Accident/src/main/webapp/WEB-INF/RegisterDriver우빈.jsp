<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>회원가입</title>

  <!-- jQuery 필수 -->
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

  <style>
    body { font-family: Arial, sans-serif; margin: 30px; }
    .container { max-width: 420px; margin: auto; padding: 20px; border: 1px solid #ccc; border-radius: 10px; }
    label { display:block; margin-top:10px; }
    input { width:100%; padding:8px; margin-top:5px; box-sizing:border-box; }
    .row { display:flex; gap:10px; align-items:center; }
    .row input[type="text"] { flex:1; }
    .btn { margin-top:15px; width:100%; padding:10px; border:0; border-radius:6px; color:white; cursor:pointer; }
    .btn-primary { background:#4CAF50; }
    .btn-secondary { background:#007bff; width:auto; }
  </style>
</head>

<body>
  <div class="container">
    <h2>회원가입</h2>

    <!-- 가입/오류 메시지 -->
    <c:if test="${not empty msg}">
      <script>alert('${msg}');</script>
    </c:if>

    <form id="registerForm" action="${cpath}/registerDriver" method="post">
      <!-- 아이디 -->
      <label for="driverId">아이디</label>
      <div class="row">
        <input type="text" id="driverId" name="driverId" required>
        <button type="button" id="checkBtn" class="btn btn-secondary">중복확인</button>
      </div>
      <small id="idStatus" style="color:#555"></small>

      <!-- 비밀번호 -->
      <label for="password">비밀번호</label>
      <input type="password" id="password" name="driverPwd" required>

      <!-- 비밀번호 확인 -->
      <label for="confirmPassword">비밀번호 확인</label>
      <input type="password" id="confirmPassword" required>

      <!-- 이름 -->
      <label for="driverName">이름</label>
      <input type="text" id="driverName" name="driverName" required>

      <!-- 지역 -->
      <label for="driverRegion">지역</label>
      <input type="text" id="driverRegion" name="driverRegion" required>

      <!-- 휴대폰번호 -->
      <label for="driverContact">휴대폰번호</label>
      <input type="tel" id="driverContact" name="driverContact" maxlength="13" placeholder="010-1234-5678" required>

      <!-- 생년월일 -->
      <label for="driverBirthdate">생년월일</label>
      <input type="date" id="driverBirthdate" name="driverBirthdate" required>

      <!-- 성별 -->
      <label>성별</label>
      <div class="row">
        <label><input type="radio" name="driverGender" value="M" required> 남</label>
        <label><input type="radio" name="driverGender" value="F" required> 여</label>
      </div>

      <!-- 가입 버튼 -->
      <button type="submit" class="btn btn-primary">회원가입</button>
    </form>
  </div>

  <script>
    let idChecked = false;
    let lastCheckedId = "";

    // 아이디 중복확인
    $("#checkBtn").on("click", function() {
      const driverId = $("#driverId").val().trim();
      if (!driverId) {
        alert("아이디를 입력하세요.");
        return;
      }

      $.post("${cpath}/api/driver/check-id", { driverId: driverId }, function(res) {
        if (res.available === true) {
          $("#idStatus").text("사용 가능한 아이디입니다.").css("color", "green");
          idChecked = true;
          lastCheckedId = driverId;
        } else {
          $("#idStatus").text("이미 사용 중인 아이디입니다.").css("color", "red");
          idChecked = false;
          lastCheckedId = "";
        }
      }, "json").fail(function() {
        alert("중복확인 중 오류가 발생했습니다.");
      });
    });

    // 아이디가 바뀌면 다시 검증 요구
    $("#driverId").on("input", function() {
      const current = $(this).val().trim();
      if (current !== lastCheckedId) {
        idChecked = false;
        $("#idStatus").text("아이디 변경됨: 다시 중복확인을 해주세요.").css("color", "#c77");
      }
    });

    // 제출 전 프론트 검증
    $("#registerForm").on("submit", function(e) {
      // 1) 아이디 중복확인 강제
      if (!idChecked) {
        alert("아이디 중복확인을 해주세요.");
        e.preventDefault();
        return;
      }
      // 2) 비밀번호 일치 검증
      const pw = $("#password").val();
      const pw2 = $("#confirmPassword").val();
      if (pw !== pw2) {
        alert("비밀번호와 비밀번호 확인이 일치하지 않습니다.");
        e.preventDefault();
        return;
      }
    });
  </script>
</body>
</html>
