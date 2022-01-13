<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 주소창에 localhost:8088/elJstl/03?id=you&pw=1111&name=재석&num1=100&num2=200
라고 친것. 컨트롤러에서 getParameter해서 attribute에넣지 않고 여기서 getParameter해주면됨 request에 저 파라미터들 들어가있는거니까 -->


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>el jstl</h1>

	<h2>파라미터 > 파라미터값 꺼내쓰기</h2>
	
	<%
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");	
		String name = request.getParameter("name");
		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));
	%>
	
	id = <%=id %><br>
	pw = <%=pw %><br>
	name = <%=name %><br>
	num1 = <%=num1 %><br>
	num2 = <%=num2 %><br>
	<br>
	<br>
	<!-- 같은걸 el문법으로 표현(주소창에 ~~elJstl/03?id=you~~...엔터친상태 -->
	<h2>파라미터 > el문법 파라미터값 꺼내쓰기</h2>
	id = ${param.id}<br><!-- 이렇게써놓으면 뒤에서 String id = request.getParameter("id"); id = < % =id %> 이렇게 일하는거임 그걸알고있어야함 -->
	pw = ${param.pw}<br>
	name = ${param.name}<br>
	num1 = ${param.num1}<br>
	num2 = ${param.num2}<br>
</body>
</html>