<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>el jstl</h1>
	
	<h2>el 데이터형</h2>
	
	<!-- 화면에 어떻게 표현할 것인가 -->
	정수형: ${10} <br>  <!-- 돈$ { -->
	실수형: ${7.5} <br>
	문자열: ${"정우성"} <br>
	문자열: ${"hwang"} <br> <!-- ${hwang} 이렇게쓰면 변수로 쓴것.  -->
	논리형: ${true} <br>
	null: ${null} <br>
</body>
</html>