<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix ="fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %> <%-- message 번역하기 위한 거인듯? --%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%-- <fmt:setLocale value ="en"/> --%><%-- 영어를 출력해라.. --%>
<fmt:bundle basename ="resource.message"> <%-- bundle = message.properties 파일 묶어놓은것 --%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
아이디:<c:if test="${!empty param.id && ! empty param.name}"><%-- NULL이 아니면 param.id 를 출력해라 // get방식 으로 넣어야 나옴--%>
	<fmt:message key="MID">
		<fmt:param value="${param.id}"/>
		<fmt:param value="${param.name}"/>
	</fmt:message>
</c:if><br>
작가:<fmt:message key="AUTHOR"/> <br><%-- message.properties 의 key 값들 가져오기 --%><br>
</body>
</html>
</fmt:bundle>