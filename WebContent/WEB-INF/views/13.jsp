<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="vo.UserVo" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<%
	List<UserVo> userList = (List<UserVo>)request.getAttribute("userList");
%>

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
	<table border="1">
		<tr>
			<th>no</th>
			<th>name</th>
			<th>email</th>
		</tr>
		
		<%for(int i=0; i<userList.size(); i++){ %>
		<tr>
			<td><%=userList.get(i).getNo()%></td>
			<td><%=userList.get(i).getName()%></td>
			<td><%=userList.get(i).getEmail()%></td>
		</tr>
	
		<%} %>	
	</table>
	
	
	<h3>jstl</h3>
	<table border="1">
		<tr>
			<th>no</th>
			<th>name</th>
			<th>email</th>
			<th>index</th>
			<th>count</th>
		</tr>
		
		<!-- 반복문 forEach 향상된for문이랑 좀 비슷 전체리스트 items에불러오기-request에 넣어놓은 이름 불러오는것-->
		<!-- 20개중에 하나씩 접근해야함 var=여기는적당히 정해주기 -->
		<!-- 이 for문 안쓸수없음 많이씀 잘 알아두기.. -->
		<c:forEach items="${requestScope.userList}" var="userVo" varStatus="status"> <!-- status -일련번호매기려고 씀 몇번돌고있나 카운트하는 변수라 생각 --> <!-- 그냥${userList}만 써도 값 나옴 -->
			<tr>
				<td>${userVo.no}</td> <!-- var에써준 이름때문에 userVo.no이렇게쓰는거 여기서 no는 getNo임 getter로작동 -->
				<td>${userVo.name}</td>
				<td>${userVo.email}</td>
				<td>${status.index}</td> <!-- 방번호// i..몇번까지 돌릴지 제어불가. 필요할때 쓰는 -->
				<td>${status.count}</td> <!-- 몇개 했는지 세는거 -->
			</tr>
		</c:forEach>
	</table>
	
</body>
</html>