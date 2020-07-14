<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> <%-- 포멧 --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% request.setCharacterEncoding("utf-8"); %>
상품명: ${param.pName}<br>
가격:${param.price}<br>
가격F:<fmt:formatNumber value="${param.price}" type="number"/>원<br><br>
<jsp:useBean id="product" class="my.inform.Product"/> <%-- jspusebean 이용해서 데이터 한번에 받기 --%>
<jsp:setProperty property ="*" name="product"/> <%-- product라는 객체 형성 / but 날짜 정보는 안들어가있음 --%>
<% product.setpDate(new java.util.Date()); 
	request.setAttribute("pro",product);
%> <%-- request.setAtrrbibute 이용해 속성명 주고 출력하기 (DB에서 많이씀 중요) --%>
상품명 : ${pro.pName }<br> <%-- attribute 객체 이용한 출력 --%>
가격 : ${pro.price }<br>
가격ATP:<fmt:formatNumber value="${param.price}" type="number"/>원<br>
날짜: ${pro.pDate}<br>
날짜F : 일자와 시간을 풀로 출력하세요.<br>
날짜F - <fmt:formatDate value="${pro.pDate}" type="both" dateStyle="full" timeStyle="full"/><br>

<%-- 시간을 다른 국가로 출력하기 --%>
<fmt:setTimeZone value="Hongkong"/> 
홍콩 날짜:<fmt:formatDate value="${pro.pDate}" type="both" dateStyle="full" timeStyle="full"/><br>
<%-- 타임존이 어떤것들이 있는지 알아보기 (재미?) --%>
<c:forEach var="id" items="<%= java.util.TimeZone.getAvailableIDs() %>">
	${id} <br>
</c:forEach>
</body>
</html>