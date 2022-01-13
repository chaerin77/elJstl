<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="vo.UserVo" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>el jstl</h1>

	<h2>객체접근</h2>
	
	<h3>자바문법</h3>
	
	<% //attribute값 꺼내쓰기
		UserVo userVo = (UserVo)request.getAttribute("userVo");
		int num = (int)request.getAttribute("num");
		String str = (String)request.getAttribute("str");

	%>
	no = <%=userVo.getNo()%><br>
	name = <%=userVo.getName()%><br>
	email = <%=userVo.getEmail()%><br>
	password = <%=userVo.getPassword()%><br>
	gender = <%=userVo.getGender()%><br>
	<br>
	num= <%=num %><br>
	str= <%=str %><br>
	
	<br>
	<br>

	<h3>el</h3>
	<!-- Servlet04에서 UserVo를 생성자파라미터4개넣어서 만들고 그거를 "userVo"라는 이름으로 어트리뷰트에넣었음. 그래서 여기서 꺼내쓸때 requestScope.userVo 이렇게쓰는것 그리고 저뒤에 .name 이런거는 userVo의 게터가 작동한것 -->
	no = ${requestScope.userVo.no}<br><!-- no만썼는데 어떻게 getNo로 아느냐? - no를갖고 게터를찾음..?userVo에 getNo가있어서 가능한거 그래서 게터세터만들어놔야함 결국 저 userVo.getNo작동하는거라서 -->
	name = ${requestScope.userVo.name}<br>
	email = ${requestScope.userVo.email}<br>
	password = ${userVo.password}<br> <!-- requestScope 생략하고써도 됨 param은생략못함 -->
	gender = ${userVo.gender}<br> 
	
	<!-- request에 있는 값 갖고오기 -->
	num = ${requestScope.num}<br> <!-- 파라미터도사실 request에있는데 파라미터값꺼내오는건 param.별명 으로있거든 흠..어트리뷰트값가져올땐 requestScope.별명 이렇게.. -->
	str = ${str}<br>
</body>
</html>