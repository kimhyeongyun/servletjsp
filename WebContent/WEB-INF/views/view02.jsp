<%-- page 지시자 --%> 
<%@ page language="java" contentType="text/html; charset=UTF-8"%> 
<%-- page 속성 --%>

<%-- 템플릿 --%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h5>view02.jsp</h5>
	<hr/>
	<%-- 스크립트릿(Scriptlet) --%>
	<%
	String name = "홍길동";
	%>
	
	<%--  표현식(Expression) --%>
	이름: <%=name%>  <% // 하나의 값을 리턴할 수 있으면 %>
	
	
	<%-- 태그와 자바코드를 결합한 형태 --%>
	<%for(int i=1; i<6; i++) {%>
		<h<%=i%>><%=name%></<%=i%>h>	
	<%}%>
</body>
</html>