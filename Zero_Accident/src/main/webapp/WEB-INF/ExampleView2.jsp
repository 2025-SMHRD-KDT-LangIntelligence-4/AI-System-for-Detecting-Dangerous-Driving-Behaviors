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
	
   	<c:forEach var="d" items="${ExampleDBList}">
   	<!-- c : 위에 내가 별명으로 지은 JSTL core 라이브러리 이름, forEach : 반복문 기능 -->
   	<!-- 만약 반복횟수를 내가 정하고 싶으면 : begin="0" end="2" 이런식으로 속성 추가. begin,end 안 적으면 전체반복 -->
   	<!-- items에 있는 것을 var라는 것에 하나씩 담아서 꺼내서 쓰겠다. 이때 var를 부르기 쉽게 d라고 하겠다. -->
   	<!-- items="${ExampleDBList}" : items 라는 곳에 내가 예전에 만든 ExampleDBList라는 것을 불러오겠다. -->
   	<!-- $중괄호 : HTML에서 자바 객체를 불러오기위한 형식이다 -->
   	
       	<h3>${d.exampleId} / ${d.exampleName} / ${d.examplePrice} / ${d.exampleQuantity}</h3>
       	<!-- ExampleDBList안에는 exampleId, exampleName, examplePrice, exampleQuentity속성이 있음 -->
       	<!-- (우리가 테이블 만들 때, 만든 것) -->
       	<!-- 그리고 현재 d에 담아져있음. 그걸 <h3>태그에 담아서  사용자에게 보여주겠다 -->
   	</c:forEach>
</body>
</html>