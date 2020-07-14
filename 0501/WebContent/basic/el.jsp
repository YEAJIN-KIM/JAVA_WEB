<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri ="http://java.sun.com/jsp/jstl/core" %>
<%-- jstl 에서 core 부분을 쓰겠다. 근데 접두사 c를 붙여서 쓰겠다  --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String userName = "한승규"; // 여기는 자바 공간
	String uAddress = "용인시";
	int uGrade = 2;
%>
여기는 스크립트.. 여기서 EL, JSTL 사용 가능<br><br>
<c:set var ="name" value="<%=userName %>"/> <%-- 자바와 스크립트 접촉지점 / 자바 공간의 userName을 var의 변수name에 저장 하겠다--%>
<c:set var = "address" value = "<%=uAddress %>"/>
<c:set var = "grade" value = "<%=uGrade %>"/> <%-- expression으로 자바 공간에 있는 값 value로 씀 --%>
name = ${name}<br>
address = ${address}<br>
grade = ${grade}<br>
<c:set var = "n" value ="${name}"/> <%-- 스크립트 공간에 있는 값 name 을 value 로 씀 --%>
name = ${n}<br>
<c:set var="dn" value="#{name}"/> <%-- name이란 변수를 쓰는데 #이 붙음(#= 거의 사용 안함. 몰라도 됨) --%>
name = ${dn } <%-- 위에서 선언만 해놓고 실질적인 값이 들어갈 때는 여기서 출력 할 때임 -delay 방식 --%>
</body>
</html>