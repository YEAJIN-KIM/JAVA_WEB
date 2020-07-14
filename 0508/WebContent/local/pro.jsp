<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix ="fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %> <%-- message 번역하기 위한 거인듯? --%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<fmt:setLocale value ="en"/> <%-- 영어로 하려면 이걸 쓰고, 한글로 쓰려면 없애면 됨. --%>
<fmt:bundle basename ="resource.product">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- 한글로 1번, 영어로 1번 출력하기 --%>
제품명: <fmt:message key="PNAME"/><br>
가격 : <fmt:message key="PRICE"/><br>
</body>
</html>
</fmt:bundle>