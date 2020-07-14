<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri ="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String department = "경영학부";
	String hobby ="독서";
	request.setAttribute("d",department); // request기본객체의 변수 d , department의 값 대입
	request.setAttribute("h",hobby);
	session.setAttribute("sd",department);
	session.setAttribute("sh",hobby);
%>
<c:set var="dep" value = "<%=department%>"/> <%-- dep 이라는 변수를 만들고 출력 --%>
department = ${dep}<br>
<c:set var="d1" value ="${dep}"/>
department = ${d1}<br>
<c:set var = "d2" value ="#{dep}"/>
department = ${d2}<br>
department=${requestScope.d}<br> <%-- request객체의 d에있는걸 가져와라/ request변수 출력하는 법 --%>
hobby = ${requestScope.h}<br> <%-- (기본객체)속성으로 정의하면 c:set 필요가 없다. 속성명 (d / h)로 바로 출력 가능하다. --%>
sessiondept = ${sessionScope.sd }<br> <%-- session으로 갖고 옴 --%>
sessionhobby = ${sessionScope.sh}<br>
</body>
</html>