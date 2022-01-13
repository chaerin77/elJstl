<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- 아 이거 왠지모르겠는디 파일자체지우고 코드고대로복붙해서 다시만드니까 되네 코드의문제는 아니었던걸루 -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>el jstl</h1>
	
	<h2>jstl if문</h2>
	
	<h3>자바 문법</h3>
	
	<%
	if( "1".equals( request.getParameter("color") ) ) {	//파라미터에서 값을뽑았는데 1번이면 빨간색으로나오고 (color=1)
	%>
		<span style="color: red">빨강</span>
	<%
	} else if( "2".equals( request.getParameter("color") ) ) {	//파라미터에서 값을뽑았는데2번이면 녹색으로나올거고
	%>
		<span style="color: green">녹색</span>
	<%
	} else if( "3".equals( request.getParameter("color") ) ) {	
	%>
		<span style="color: blue">파랑</span>
	<%
	}
	%>
	<br>
	<br>
	<br>
	<h3>jstl</h3>
	${param.color}<br>
	
	
	<c:if test="${param.color ==1 }">
		<span style="color: red">빨강</span>
	</c:if>
		
	<c:if test="${param.color ==2 }">
		<span style="color: green">녹색</span>
	</c:if>
		
	<c:if test="${param.color ==3 }">
		<span style="color: blue">파랑</span>
	</c:if>
		
	
	
	
</body>
</html>