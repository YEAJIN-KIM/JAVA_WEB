<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "my.info.Product" %>
<%@ page import = "java.net.URLDecoder" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
여기는 제조사 홈페이지 입니다.<br>
<%
	Product pro = (Product)session.getAttribute("PRO");
%>
제품명 : <%= pro.getpName() %><br>
품질 : <%= pro.getpQuality() %><br>
제조사 : <%= pro.getpMaker() %><br>
제조사 : <%= pro.getPrice() %><br>
<hr>

여기서 maker 파라미터 값 출력하세요.
maker= <%= request.getParameter("maker") %><br>
<%
	String maker = request.getParameter("maker");
	String dMaker = URLDecoder.decode(maker,"utf-8");
	String name = request.getParameter("name");
	String dName = URLDecoder.decode(name,"utf-8");
%>
maker = <%= dMaker %> <br>
name = <%= dName %>
<!-- url 타고 다닐꺼면 url encoder - decoder 필수 -->
</body>
</html>