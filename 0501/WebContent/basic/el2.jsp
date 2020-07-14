<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "my.inform.Product" %>   
<%@ taglib prefix ="c" uri ="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	// input.jsp 새로 만들어서 이제 사용 안할거니까 comment 처리. Product pro = new Product("갤럭시","삼성전자",120000);
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="pro" class = "my.inform.Product"/>
<jsp:setProperty property="*" name="pro"/>
<% pro.setpDate(new java.util.Date()); %> <%-- pro라는 객체가 생성되기 전에 date를 setter로 만들어줘야함. 왜인지는 설명 했는데 못들음--%>
<c:set var = "p" value = "<%=pro %>" /> <%-- pro라는 객체 타입을 p 라는 변수에 할당 --%>
상품명: ${p.pName}<br>	<%-- 스크립트 공간 내에는 p라는 변수만 사용 / p의 변수 이름인 pName 출력 가능 --%>
제조사: ${p.maker}<br>	<%-- el 을 쓰게되면 getter를 안써도 됨. 코드가 매우 간단해짐 --%>
가격: ${p.price}<br>
품질 : ${p.decideQuality()}<br> <%-- 메소드를 불러올 땐 메소드 명 쓰고()괄호를 붙여준다. --%>
생산시간 : ${p.pDate}
</body>
</html>