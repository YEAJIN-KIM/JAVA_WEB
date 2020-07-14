<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% request.setCharacterEncoding("utf-8"); %>
입력한 문자열:<br><hr> <%-- target에 있는 값들을 한번에 받는다 --%>
<c:forEach var="strs" items="${paramValues.target }">
	${strs}${fn:length(strs)}<br>
</c:forEach>
<br><hr>
검색 대상 문자열: ${param.search}<br>
<c:set var="search" value="${param.search}"/> <%-- 변수 search에 param.search 넣음 --%>
대채 대상 문자열: ${param.replace }<br>
<c:set var="replace" value="${param.replace}"/>
검색 된 문자열들:<br> <%-- search를 포함하고 있냐. 있으면 strs1을 출력해라 --%>
<c:forEach var="strs1" items="${paramValues.target}">
	<c:if test="${fn:contains(strs1,search)}">
	${strs1}<br>
	</c:if>
</c:forEach>
검색한 문자열의 길이<br>
${fn:length(search)}<br><br>

검색한  문자열의 대체:<br>
<c:forEach var="strs1" items="${paramValues.target}">
	<c:if test="${fn:contains(strs1,search)}">
	${fn:replace(strs1,search,replace)}<br>
	</c:if>
</c:forEach>
</body>
</html>