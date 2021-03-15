<%-- page 지시자 --%> 
<%@ page language="java" contentType="text/html; charset=UTF-8"%> 
<%@ page import="java.util.*" %>
<%@ page import="com.mycompany.webapp.dto.*" %>

<%-- taglib 지시자 : 항상 접두사를 사용해서 사용해야한다. --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- page 속성 --%>





<%-- 템플릿 --%>  
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
		<link rel="stylesheet" href="/servletjsp/common/bootstrap-4.6.0/css/bootstrap.min.css" >
	    <script src="/servletjsp/common/js/jquery-3.5.1.min.js"></script>
	    <script src="/servletjsp/common/bootstrap-4.6.0/js/bootstrap.bundle.min.js" ></script>
	    <script src="/servletjsp/common/bootstrap-4.6.0/js/bootstrap.min.js"></script>
	</head>
<body>
	<h5>view04.jsp</h5>
	<hr/>
	<table class="table">
		<tr>
			<th>번호<th>
			<th>제목<th>
			<th>내용<th>
			<th>글쓴이<th>
		</tr>
		
		<%-- 템플릿 --%>  
		<%-- <%List<Board> list = (List<Board>) request.getAttribute("list");%>
		
		<% for(Board board : list) {%>
		<tr>
			EL로 데이터 출력
			<td><%=board.getBno()%><td>
			<td><%=board.getBtitle()%><td>
			<td><%=board.getBcontent()%><td>
			<td><%=board.getBwriter()%><td>
		</tr>			
		<%}%> --%>
		<%-- 템플릿 --%>  
		
		
		<c:forEach var="board" items="${list}"> <!-- {key명이 들어감}  -->
			<tr>
				<%-- EL로 데이터 출력 --%>
				<td>${board.bno}<td>
				<td>${board.btitle}<td>
				<td>${board.bcontent}<td>
				<td>${board.bwriter}<td>
			</tr>
		</c:forEach>
		
		
	</table>
</body>
</html>