<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri ="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
%>
<%-- get 방식 --%>
name = ${param.name}<br> <%-- param = request.getParameter()와 같다 --%>
id = ${param.id}<br>

<%-- post 방식 --%>

<%--상품명: product = ${param.pName}<br> --%>
상품명(복수): <%-- TAG LIBRARY 해줘야함 일단 --%>
<ul>									
<c:forEach var="pn" items ="${paramValues.pName }"> <%-- for문과 동일 / items = pName여러개 넘어오니까 배열에 있는 items들을 pn변수에 넣고 하나씩 출력해라 / li = item 형태로으로 출력하겠다?  --%>
	<li>${pn}</li>
</c:forEach>
</ul><br>
<%--  %>제조사: maker = ${param.maker}<br> --%>
제조사(복수): 
<ul>
<c:forEach var ="mn" items ="${paramValues.maker}">
	${mn}
</c:forEach>
</ul><br>
생산국:
<ul>
<c:forEach var = "pc" items ="${paramValues.country }">
	${pc}
</c:forEach>
</ul>
가격: ${param.price}<br>
</body>
</html>