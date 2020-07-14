<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:set var="price" value="10000"/>
<fmt:formatNumber value="${price}" type="number" var="numType"/> <%-- numType 변수 선언 --%>
통화:<fmt:formatNumber value ="${price}" type ="currency"
			currencySymbol="원"/><br> <%-- 돈의 형태 출력 --%>
퍼센트: <fmt:formatNumber value="${price}" type= "percent"/><br> <%-- 퍼센트 출력  (10000 = 백만 퍼센트) --%>

숫자: ${numType}<br>

패턴:<fmt:formatNumber value="${price}" pattern="000000.00"/><br> <%-- 패턴을 주는데 소수점이하 2자리 까지만 표현할거고, 앞에 남는 자리가 있으면 0으로 처리하겠단거 --%>

</body>
</html>