<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:set var="now" value="<%= new java.util.Date() %>"/> <%-- now 변수 쓰기위해 변수 선언 --%>
<fmt:formatDate value="${now }" type="date" dateStyle="full"/> <%-- 시간 정보(now)를 출력(날짜(date)타입으로 전체(full)를 출력) --%><br>
<fmt:formatDate value="${now }" type="date" dateStyle="short"/> <%-- 짧게 출력 --%><br>
<fmt:formatDate value="${now }" type="time" /> <%-- 시간만 출력 --%><br>
<fmt:formatDate value="${now }" type="both" dateStyle="full" timeStyle="full"/> <%-- 시간/날짜 동시 출력 --%><br>
<fmt:formatDate value="${now }" type="date" pattern="z a h:mm"/><br> <%-- 패턴 주기(존(zone) / 오전(aim) / 시간(분)) --%>
<c:set var="now1" value="<%= new java.util.Date() %>"/>
<fmt:parseDate value="<%= new java.util.Date() %>" pattern ="yyyy년MM월dd일HH시mm분ss초"
	var="now1"/> <%-- el 쓰기 위해 var 선언 --%> <%-- parsedate 안되서 교수님도 포기함 안되는듯 --%>
${now1} <br>
</body>
</html>