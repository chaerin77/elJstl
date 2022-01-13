<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	pageContext.setAttribute("name", "page name");//왼쪽은 내가꺼낼때 쓸 파라미터명인거같은데 오른쪽은 왜 따옴표안에넣음?
	request.setAttribute("name", "request name");
	session.setAttribute("name", "session name");
	application.setAttribute("name", "application name");
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 억지로 상황때문에 만든 예제 -->
	
	<h1>el jstl</h1>
	
	<h2>범주우선순위</h2>
	<!--  
	<h3>자바문법</h3>
	page name = <%=pageContext.getAttribute("name") %><br>
	request name = <%=request.getAttribute("name") %><br>
	session name = <%=session.getAttribute("name") %><br>
	application name = <%=application.getAttribute("name") %><br>
	-->
	<br>
	<br>
	
	<h3>el</h3>
	<!--  
	page name = ${pageScope.name}<br> .name getter로바뀌는거아님 별명임 
	request name = ${requestScope.name}<br>
	session name = ${sessionScope.name}<br>
	application name = ${applicationScope.name}<br> -->
	
	<h3>el scope생략</h3>
	request name = ${requestScope.name}<br> <!-- request의 name값을 원했던것.-->
	session name = ${sessionScope.name}<br> <!-- session의 name값을 원했던것 -->
	<!-- 자굼 변수값 name은 다 들어가있음 그래서 Scope를 생략하고 그냥 name만쓴다면 가장 작은부분. 모든곳 교집합되는부분인 page의 name값이 나오게됨 -> page name -->
	<!-- 이름 잘지으면 이럴일이 없을거임 생략해도 내가 고른정보인거 딱 알아먹게끔 -->
	<!--  requestScope  sessionScope 를 많이씀. sessionScope가 더 큰범위 -->
</body>
</html>