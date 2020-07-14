<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "my.info.Sales" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
	Sales sales = (Sales)application.getAttribute("SL"); // 엄청 간단.. 이게 ? 아 간단하네
	// sales --> 모든 정보를 다 가지고 있고, 그 정보를 출력하기 위한 getter도 가지고 있음.
	// 즉, sales 객체를 활용만 해주면 됨.
%>
구매 품목: <br>
과일: <%= sales.getFruit() %> <br>
스포츠: <%= sales.getSports() %><br>
구매 갯수: <%= sales.getNumSales() %><br>
구매일자: <%= sales.getSalesDate() %>
</body>
</html>