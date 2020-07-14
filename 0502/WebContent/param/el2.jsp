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
	int[] list = {34, 67, 88, 22, 11, 100, 33, 59};
%>
<c:forEach var = "val" items="<%=list %>"> <%-- forEacn = 반복문 / list 를 items에 하나씩 넣고 그걸 val에 넣음 --%>
	<c:set var="sum" value="${val+sum}"/> <%-- sum = val을 하나씩 넣은 것들의 합 --%>
</c:forEach>
합계: ${sum}<br><hr>

리스트 각각의 항목을 출력..<br>
<ul>
<c:forEach var = "sm" items ="<%=list %>"> <%-- 0501의 advance의 param과의 차이점 --%>
	<li>${sm}</li>
</c:forEach>
</ul><hr>

<c:set var ="sum" value ="0"/> <%-- 그냥 sum으로 넣으면 앞에서 했던 sum 값이 더해져서 값이 크게나옴. sum을 0으로 초기화 해야함 / or 다른 변수값 쓰면 ok --%>
<c:forEach var ="i" begin="1" end="10"> <%-- forEacn = 반복문 / list 를 items에 하나씩 넣고 그걸 val에 넣음 --%>
	<c:set var="sum" value="${i+sum}"/> <%-- sum = val을 하나씩 넣은 것들의 합 --%>
</c:forEach>
합계: ${sum}<br><hr>

<c:forEach var ="i" begin="1" end="10">
	<c:set var = "sum1" value ="${i+sum1}"/>
</c:forEach>
1부터 10까지의 합 : ${sum1 }<br>
</body>
</html>