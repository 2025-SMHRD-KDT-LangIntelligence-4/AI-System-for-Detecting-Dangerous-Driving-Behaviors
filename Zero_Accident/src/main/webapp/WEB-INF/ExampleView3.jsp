<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- JSTL core 라는 라이브러리를 쓰기 위해 선언. 이때 이름은 c로 짧게 부르겠다. ex)반복문을 쓰고싶다! 등등 -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>DB연결 확인하는 페이지</h1>
	
	
	<c:forEach var="d" items ="${선물꾸러미}">
		<h3>${d.exampleName}</h3>
	</c:forEach>

</body>
</html>