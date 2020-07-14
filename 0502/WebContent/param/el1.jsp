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
<%-- get 방삭으로 name 출력 --%>
name = ${param.name }<br>
score = ${param.score }<br>
<%-- logic을 이용한 구현 --%>
<c:if test="${param.score >=90 }">
	성적 = A
</c:if>
<c:if test="${param.score <90 && param.score >= 80 }">
	성적 = B
</c:if>

<c:if test="${param.score <80 && param.score >= 70}">
	성적 = C
</c:if>
<c:if test="${param.score <70 }">
	성적 = D
</c:if>

</body>
</html>