<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>el jstl</h1>
	
	<h2>el 연산</h2>
	
	\${5+2} --> ${5+2}<br> <!-- ${no1 + no2} 괄호안에서 값 더하기 가능 -->
	\${5-2} --> ${5-2}<br>
	\${5*2} --> ${5*2}<br>
	\${5/2} --> ${5/2}<br>
	\${5 div 2} --> ${5 div 2} <br>
	\${5%2} --> ${5%2}<br><!-- 나머지 -->
	\${5 mod 2} --> ${5 mod 2} <br>
	<br>
	<br>
	\${5>2} --> ${5>2}<br>
	\${5 gt 2} --> ${5 gt 2}<br>
	<br>
	<br>
	\${5<2} --> ${5<2}<br>
	\${5 lt 2} --> ${5 lt 2}<br>
	<br>
	<br>
	\${5>=2} --> ${5>=2}<br>
	\${5 ge 2} --> ${5 ge 2}<br>
	<br>
	<br>
	\${5<=2} --> ${5<=2}<br>
	\${5 le 2} --> ${5 le 2}<br>
	<br>
	<br>
	\${5==2} --> ${5==2}<br>
	\${5 eq 2} --> ${5 eq 2}<br>
	<br>
	<br>
	\${5!=2} --> ${5!=2}<br>
	\${5 ne 2} --> ${5 ne 2}<br>
	<br>
	<br>
	\${5>=2 ?5 :2} --> ${5>=2 ?5 :2} <!-- ?참이면5 :거짓이면2 -->
	<br>
	<br>
	\${(5>2)||(2>10)} --> ${(5>2)||(2>10)} //T || F --> T  
	\${(5>2)&&(2>10)} --> ${(5>2)&&(2>10)} T && F --> F
	<br>
	<br>
	\${str} --> ${str}<br> <!-- str지금 암것도안넣어서 없음 null -->
	\${empty str} --> ${empty str}<br> <!-- str 비어있니? ㅇㅇ -> true -->
	
	\${reqVal} --> ${reqVal} <!-- 파라미터값 넣어놨어서 이거는 넣어놓은 값나옴 -->
	
</body>
</html>