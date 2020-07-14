<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% request.setCharacterEncoding("utf-8"); %>
<%-- if 문으로 어느 jsp로 갈지 결정(el 사용) --%>
<c:set var ="sel" value="${param.product}"/> <%-- input.jsp에서 변수 product가 넘어온다 --%>
<c:if test="${sel == 'com' }"> <%-- 값을 sel에 넣어서 com 인지 fun 인지 flow 인지 판별 --%>
	<c:set var ="jspName" value="computer.jsp"></c:set>	
</c:if>
<c:if test="${sel == 'fun' }">
	<c:set var ="jspName" value="furniture.jsp"></c:set>
</c:if>
<c:if test="${sel == 'flow' }">
	<c:set var ="jspName" value="flower.jsp"></c:set>
</c:if>
<c:set var = "goStore" value = "/store/${jspName}?userName=${param.userName }" /> <%-- 어디로 갈 지 결정  폴더가 달라서 처리필요/ store아래의 goStore로 간다(jspName값인)--%>
									<%-- GET url방식 넘어갈 때  한글로 넘어가서 encoder필요 // userName= get 방식 --%> 
<c:redirect url="${goStore}"> <%-- 변수값을 goto로 잡았기 때문에 goto를 url에 준다? --%>
<c:param name = "price" value ="${param.price}"/> <%-- post 방식 --%>
<%-- <c:param name = "userName" value="${param.userName}"/> --%> <%--post 방식 출력 --%>
</c:redirect>
</body>
</html>