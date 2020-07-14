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
<%-- 기호를 받아서 하기? ""(더블 포테이션) 내에서 문자열 쓸때는 ''(싱글 포테이션)을 쓴다 --%>
<c:if test="${param.com == 'SM'}" >
선택한 회사는 삼성전자입니다.
</c:if>
<c:if test="${param.com == 'HD'}" >
선택한 회사는 현대입니다.
</c:if>
<c:if test="${param.com == 'GG' }" >
선택한 회사는 구글입니다.
</c:if>
<c:if test="${param.com == 'AP' }" >
선택한 회사는 애플입니다.
</c:if>
<c:if test="${param.product==1}">
제품은 갤럭시입니다.
</c:if>
<c:if test="${param.product==2}">
제품은 K7 입니다.
</c:if>
<c:if test="${param.product==3}">
제품은 구글폰입니다.
</c:if>
<c:if test="${param.product==4}">
제품은 아이폰입니다.
</c:if>
</body>
</html>